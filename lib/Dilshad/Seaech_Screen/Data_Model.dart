class MyUsers {
  String? name;
  String? username;
  String? image;

  MyUsers({required this.name, required this.username, required this.image});
}

List<MyUsers> user = [
  MyUsers(name: "dilshad", username: "dilshad12", image: "image"),
  MyUsers(name: "yousef", username: "yousef", image: "image"),
  MyUsers(name: "CR7", username: "Suiiii?", image: "image"),
  MyUsers(name: "julia", username: "julia", image: "image"),
  MyUsers(name: "Angela", username: "Angelina", image: "image"),
];

class HasTag {
  String? hashname;
  String? number_of_Tweets;

  HasTag({required this.hashname, required this.number_of_Tweets});
}

List<HasTag> Hash = [
  HasTag(hashname: "#AL-Zalaael", number_of_Tweets: "101K Tweets"),
  HasTag(hashname: "#DilshaD_Haji.M", number_of_Tweets: "5.6MK Tweets"),
  HasTag(hashname: "#Flutter.Dev", number_of_Tweets: "201K Tweets"),
  HasTag(hashname: "#TeamWork", number_of_Tweets: "7.3K Tweets"),
  HasTag(hashname: "#CR7", number_of_Tweets: "7.7M Tweets"),
  HasTag(hashname: "#Developer", number_of_Tweets: "4.8K Tweets"),
];
