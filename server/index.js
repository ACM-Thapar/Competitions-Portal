const envConfig = {
  path: process.env.NODE_ENV === 'production' ? 'prod.env' : '.env',
};

require('dotenv').config(envConfig);

const cors = require('cors');
const express = require('express');
const session = require('express-session');
const redis = require('redis');
const connectRedis = require('connect-redis');
const bcrypt = require('bcryptjs');
const userRoutes = require('./routes/user');
const postRoutes = require('./routes/post');
const competitionRoutes = require('./routes/competitionRoute');
const request = require("request-promise")
const cheerio = require("cheerio")
const puppeteer = require("puppeteer")

const auth = require('./middleware/auth');

const User = require('./models/user');
const { children } = require('cheerio/lib/api/traversing');
require('./db/mongoose');

const Competition = require('./models/competition');
var cron = require('node-cron');

const redisClient = redis.createClient(6379);
const app = express();
const port = process.env.PORT || 5000;

app.use(cors());

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const RedisStore = connectRedis(session);

app.use(
  session({
    store: new RedisStore({ client: redisClient }),
    secret: 'secret',
    saveUninitialized: false,
    resave: false,
    cookie: {
      secure: false, // change to true on production
      httpOnly: true,
      maxAge: 1000 * 60 * 60 * 24,
    },
  }),
);

app.use('/user', userRoutes);
app.use('/post', postRoutes);
app.use('/competitions', competitionRoutes);

let browser;


async function scrapeData(url,page){
  try{
    await page.goto(url, {waitUntil : 'load', timeout : 0})
    let html = await page.evaluate(() => document.body.innerHTML)
    let $ = cheerio.load(html)
   
    let compArray = []
    
    $('div.position-relative.ng-tns-c24-0 > main > app-explore > section > div > div.right_sect > app-opportunity-listbox').children('a').each(async function () {
      let comp = {}
      const title = $(this).children('.cptn').children('.full-width').children('h2').text().trim()
      const organizer = $(this).children('.cptn').children('.full-width').children('h3').text().trim()
      let prize = $(this).children('.cptn').children('.full-width.ng-star-inserted').children('.tags').children('.inr.ng-star-inserted').text().trim()
      const link = "https://dare2compete.com" + $(this).attr('href')
      if($(this).children('.cptn').children('.full-width.ng-star-inserted').children('.tags').children('.inr.ng-star-inserted').children('.fa-dollar').length > 0){
        prize = "$ "+prize;
      }
      if($(this).children('.cptn').children('.full-width.ng-star-inserted').children('.tags').children('.inr.ng-star-inserted').children('.fa-rupee').length > 0){
        prize = "Rs "+prize;
      }
      comp.title = title;
      comp.organizer = organizer;
      comp.prize = prize
      comp.link = link.toString()
      compArray.push(comp)

    })

    for (let i = 0; i < compArray.length; i++){
     // console.log(compArray[i])
     const page1 = await browser.newPage()
      await page1.goto(compArray[i].link, {waitUntil : 'load', timeout : 0})
      let html = await page1.evaluate(() => document.body.innerHTML)
      let $ = cheerio.load(html)

      const teamSize = $('main > app-public-competition > div > div.page_wrapper.ng-tns-c135-2.with-image > div.section.alt_section.intro.col.p-0.position-relative.scroll-top.tab-infobox.ng-tns-c135-2 > section').children().first().next().next().children().first().children().first().next().next().text()
      const registerDeadline = $('main > app-public-competition > div > div.page_wrapper.ng-tns-c135-2.with-image > div.section.alt_section.intro.col.p-0.position-relative.scroll-top.tab-infobox.ng-tns-c135-2 > section').children().first().next().next().children().first().children().first().next().next().next().text()
      const fees = $('main > app-public-competition > div > div.page_wrapper.ng-tns-c135-2.with-image > div.section.alt_section.intro.col.p-0.position-relative.scroll-top.tab-infobox.ng-tns-c135-2 > section').children().first().next().next().children().first().children().first().next().next().next().next().text()

      const timeLeft = $('main > app-public-competition > div > div.page_wrapper.ng-tns-c135-2.with-image > div.section.alt_section.intro.col.p-0.position-relative.scroll-top.tab-infobox.ng-tns-c135-2 > section').children().first().next().next().children().children().first().next().text()
      const desc = $('#tab-detail').text();
      //console.log(fees)
      compArray[i].fees = fees
      compArray[i].desc = desc
      compArray[i].teamSize = teamSize
      compArray[i].registerDeadline = registerDeadline
      compArray[i].timeLeft = timeLeft
      compArray[i].duration = ""
      compArray[i].startDate = ""
      compArray[i].compId = "hackathon"
      page1.close()

    }

    const page1 = await browser.newPage()
    await page1.goto("https://www.codechef.com/contests?itm_medium=navmenu&itm_campaign=allcontests", {waitUntil : 'load', timeout : 0})
    html = await page1.evaluate(() => document.body.innerHTML)
    $ = cheerio.load(html)

    $('#future-contests-data').children().each(async function(){
      let comp = {}
      const code = $(this).children().first().text()
      const name = $(this).children().first().next().text()
      const link = $(this).children().first().next().children('a').attr('href')
      const startDate = $(this).children().first().next().next().text()
      const duration = $(this).children().first().next().next().next().text()
      const timeLeft = $(this).children().first().next().next().next().next().text()
      const title = code + " " + name

      comp.title = title
      comp.organizer = "Codechef"
      comp.prize = ""
      comp.link = "https://www.codechef.com" + link
      comp.fees = "Free"
      comp.desc = "",
      comp.teamSize = "Individual"
      comp.timeLeft = timeLeft
      comp.duration = duration
      comp.startDate = startDate
      comp.compId = "cp"

      compArray.push(comp)


      //console.log(link)
    })
    
    

    //console.log(compArray)
    return compArray
  }catch(e){
    console.log(e)
  }
}
async function getResults(){
  if(browser === undefined){
    browser = await puppeteer.launch({headless:true, args: [
      '--enable-features=NetworkService',
      '--no-sandbox',
      '--disable-setuid-sandbox',
      '--disable-dev-shm-usage',
      '--disable-web-security',
      '--disable-features=IsolateOrigins,site-per-process',
      '--shm-size=3gb', // this solves the issue
    ],
    ignoreHTTPSErrors: true,})
  }
  
  const page = await browser.newPage()

  Competition.remove( function ( err ) {
    console.log( "Cleared the database" );
});
  let data = await scrapeData('https://dare2compete.com/hackathons?filters=open,,all,all&types=oppstatus,teamsize,payment,eligible', page)
  
  //console.log(data.length)
  for(let i = 0; i < data.length; i++){
    comp = new Competition({
      title : data[i].title,
      organizer : data[i].organizer,
      prize : data[i].prize,
      link : data[i].link,
      fees : data[i].fees,
      desc : data[i].desc,
      teamSize : data[i].teamSize,
      timeLeft : data[i].timeLeft,
      duration : data[i].duration,
      startDate : data[i].startDate,
      compId : data[i].compId
    })
    try {
      await comp.save()
      
    } catch (e) {
      console.log(e)
    }
  }
  console.log(data);
  page.close();
  //browser.close()
  console.log('browser closed')
}


cron.schedule('* * * * *', () => {
  console.log('running a task every minute');
  getResults()
});



app.listen(port, () => {
  console.log('Server is running on ' + port);
});
