import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data {
  AssetImage profileimg, post, star;
  String username, email;
  String time, desc, likes, comments, retweets;
  TextSpan tag;
  data(
      {required this.profileimg,
      required this.post,
      required this.username,
      required this.email,
      required this.time,
      required this.desc,
      required this.likes,
      required this.comments,
      required this.retweets,
      required this.star,
      required this.tag});
}

List<data> datalist = [
  data(
    tag: TextSpan(
      text: "\n#messi",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/mb.jpg"),
    username: "Managing Barça",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Ma..",
    time: "4d",
    desc: "🚨OFFICIAL: Leo Messi has won FIFA The Best Men\'s Player of 2022 Award for a record 7th time!🏆✨",
    post: AssetImage("assets/Image/posts/messi4.jpg"),
    comments: "20",
    retweets: "559",
    likes: "4,999",
  ),
  data(
    tag: TextSpan(
      text: "\n#messi",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/barca.jpg"),
    username: "FCB Albiceleste",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@FCB..",
    time: "2h",
    desc: "🐐Messi is only 2 goals away from reaching 800 career goals. We are all Messi Fc tonight, arent\'t we?💪 ",
    post: AssetImage("assets/Image/posts/messi2.jpg"),
    comments: "12",
    retweets: "71",
    likes: "855",
  ),
  data(
    tag: TextSpan(
      text: "",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/k.jpg"),
    username: "KYSTAR",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@KYSTAR",
    time: "1h",
    desc: "Lionel Messi still needs to explain how he held the kit only with no support and created the coldest moment in the history football🤩",
    post: AssetImage("assets/Image/posts/messi1.jpg"),
    comments: "9",
    retweets: "64",
    likes: "413",
  ),
  data(
    tag: TextSpan(
      text: "#AlNassrFC",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/ronaldo2.jpg"),
    username: "Cristiano Ronaldo",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Cr..",
    time: "4h",
    desc: "Happy to win the February Player of the month award for the Roshn Saudi League. Hopefully the 1st of many! Proud to be part of this team💙💛",
    post: AssetImage("assets/Image/posts/ronaldo1.jpg"),
    comments: "3515",
    retweets: "33.1k",
    likes: "127k",
  ),
  data(
    tag: TextSpan(
      text: "\n#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/d.jpg"),
    username: "centredevils.",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@centre..",
    time: "4h",
    desc: "🚨🚨 | Lisandro Martinez: \" i get goosebumps when they [mufc fans] chant \'Argentina, Argentina\'.\"🤩",
    post: AssetImage("assets/Image/posts/mu.jpg"),
    comments: "16",
    retweets: "437",
    likes: "10.2k",
  ),
  data(
    tag: TextSpan(
      text: "\n#dragonball",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/guko.jpg"),
    username: "DRAGON BALL",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Dra..",
    time: "3d",
    desc: "it\'s the first day of march!\n\nAs always,here\'s a new calendar for month.",
    post: AssetImage("assets/Image/posts/vegita.jpg"),
    comments: "25",
    retweets: "672",
    likes: "6,724",
  ),
  data(
    tag: TextSpan(
      text: "\n\n#mufc",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/d.jpg"),
    username: "centredevils.",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@centre..",
    time: "1d",
    desc: "🚨🚨 | Official: Marcus Rashford has won mufc\'s player of month  award for February    ",
    post: AssetImage("assets/Image/posts/rashford.jpg"),
    comments: "31",
    retweets: "671",
    likes: "16,4k",
  ),
  data(
    tag: TextSpan(
      text: "#OnePiece",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/toei.jpg"),
    username: "Toei Animation",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@Toei..",
    time: "1d",
    desc: "New dub episodes are all now launched in One Piece Season 14, Voyage 3(eps.917-928) on Digital (Microsoft Movies & TV)!",
    post: AssetImage("assets/Image/posts/onepiece.jpg"),
    comments: "35",
    retweets: "246",
    likes: "2,790",
  ),
  data(
    tag: TextSpan(
      text: " #AlNassrFC_EN",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/ronaldo2.jpg"),
    username: "Crisiano Ronaldo",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@..",
    time: "12 Feb",
    desc: "Huge congratulations to women’s team on their 1st league win. Such a fantastic achievement🏆💙💛",
    post: AssetImage("assets/Image/posts/ronaldo.jpg"),
    comments: "2,953",
    retweets: "16k",
    likes: "258k",
  ),
  data(
    tag: TextSpan(
      text: "#MyHeroAcademia",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/deku2.jpg"),
    username: "My Hero Academia",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@M..",
    time: "5d",
    desc: "Get ready to rock out 🔥 MY HERO ACADEMIA SOUNDTRACK SELECTION 2021-2023 album releases in March! 🎶",
    post: AssetImage("assets/Image/posts/pahogu.jpg"),
    comments: "33",
    retweets: "631",
    likes: "8,188",
  ),
  data(
    tag: TextSpan(
      text: "https://got.cr/DarkHeroArc-tw",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    ),
    profileimg: new AssetImage("assets/Image/posts/deku2.jpg"),
    username: "My Hero Academia",
    star: new AssetImage("assets/Icon/postIcon/famous.png"),
    email: "@M..",
    time: "6d",
    desc: "NEWS: Things Look Bleak in New My Hero Academia TV Anime Trailer, Visual💥 READ: https://got.cr/DarkHeroArc-tw",
    post: AssetImage("assets/Image/posts/deku.jpg"),
    comments: "86",
    retweets: "676",
    likes: "12.4k",
  ),
  
];
