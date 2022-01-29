import 'package:clientapp/Model/event.dart';
import 'package:flutter/cupertino.dart';

class EventsProvider with ChangeNotifier {
  List<Event> _events = [
    Event(
      tag: 'Hackathon',
      title: 'Hacklipse',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'University of Delhi',
    ),
    Event(
      tag: 'Hackathon',
      title: 'Hacklipse',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'University of Delhi',
    ),
    Event(
      tag: 'Hackathon',
      title: 'Hacklipse',
      description:
      'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
      'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'University of Delhi',
    ),
    Event(
      tag: 'CP',
      title: 'Enigma',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'Deen Dayal Upadhaya College (DDUC), University of Delhi (DU), New Delhi'
    ),
      Event(
      tag: 'CP',
      title: 'Enigma',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'Indian Institute of Technology (IIT), Guwahati'
    ),
    
      Event(
      tag: 'ACM Live',
      title: 'Mindscape',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'Deen Dayal Upadhaya College (DDUC), University of Delhi (DU), New Delhi'
    ),
      Event(
      tag: 'ACM Live',
      title: 'Mindscape',
      description:
          'Hacklipse is a hackathon hosted by the University of Delhi. It is a 24-hour hackathon, where participants can build a mobile application or website. The event is open to all students of the University of Delhi.',
      imageURL:
          'https://devfolio-prod.s3.ap-south-1.amazonaws.com/hackathons/b3c67178950d4c1cac29e7418cdaa49e/assets/cover/869.jpeg',
      date: '2021-02-01',
      prize: 1000,
      registration_fee: 100,
      time_left: '4 hours',
      team_size: 3,
      organiser: 'Deen Dayal Upadhaya College (DDUC), University of Delhi (DU), New Delhi'
    ),
  ];

  List<Event>  getEvents(String tag) {
    return [..._events].where((element) => element.tag == tag).toList();
  }
}
