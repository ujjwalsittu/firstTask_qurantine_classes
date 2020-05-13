import 'package:first_task_by_ujjwal/call.dart';

class Brain {
  int qpos = 0;
  List<Call> dataBank = [
    Call(
        n: 'Pawan Kumar',
        b: 'Passionate Flutter and Android Developer. Interests range from technology to design. Also interested in music, entrepreneurship, and travel. Loves open-sourcing cool projects on Github and helping the Android and Flutter community regularly on Facebook, Slack and YouTube.'),
    Call(
        n: 'Dhrumil Shah',
        b: 'Dhrumil Shah is the Senior Mobile Application Developer at HighLevel and Co-organiser of GDG Ahmedabad. Also Founder of @Flutter_Flakes. He has done Masters in Computer Engineering in Wireless and Mobile Computing. Being an expert, he has an excellent command over developing applications, organizing events, workshops and mentoring developers and students that have made him a good trainer as well as an avid speaker in his domain.'),
    Call(
        n: 'Burhanuddin Rashid',
        b: 'I am an Open-Source enthusiast from India. Being a Software Craftsman I love to write clean and readable code and currently been working on Android, Kotlin and Flutter. I am a movie freak. I try to help, learn and share my knowledge by writing blogs or speaking at conferences.'),
    Call(
        n: 'Pavan Podila',
        b: 'Pavan Podila is a Frontend mentor, speaker and has been building applications for more than 15 years. For the past 10+ years he has focused on large scale financial apps for some of the big names on Wall St. The tech-stack is a mix of React {Web, Native}, Node.js, Flutter and a variety of client-side tools and libraries. Most recently he is involved in porting MobX to the Dart/Flutter platforms. Pavan is a published author of MobX Quick Start Guide, WPF Control Development Unleashed, was Microsoft MVP for Client App Dev (2008 - 2011) and is the creator of QuickLens, a Mac App for UI Designers/Developers. In the past, he has also written articles and created videos courses for Tuts+. He loves to spend his free time playing Ping Pong or sketching on his iPad Pro.'),
    Call(
        n: 'POOJA BHAUMIK',
        b: 'Pooja Bhaumik is a designer-turned-developer who has been crafting Android applications since high school. She is an early Flutter adopter and respected community member who loves to share her insights through blog posts, public speaking and open source contributions. When she is not freelancing or working on a creative project, she is busy mentoring people on career, personality and mobile development. She is also passionate about diversity & inclusion and started a community in Bhubaneswar to support personal & professional growth objectives for women developers and designers.'),
  ];

  void nextPos() {
    if (qpos < dataBank.length - 1) {
      qpos++;
    }
  }

  int getImageUrl() {
    return qpos;
  }

  String getNames() {
    return dataBank[qpos].names;
  }

  String getBio() {
    return dataBank[qpos].bio;
  }

  bool isFinished() {
    if ((dataBank.length - 1) == qpos) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    qpos = 0;
  }
}
