module.exports = function(req, res, next) {
    if(req.session.isAuth){
        next()
    }else{
        res.status(401).send("Unauthenticated")
    }
};