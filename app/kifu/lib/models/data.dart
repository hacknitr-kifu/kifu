// class UserModel {
//   static List<Item> userdata = [
//     Item(
//         id: "0d45557b-2bcf-488f-b16f-d5686b75faf9",
//         name: "Ansh Bhalala",
//         points: 0,
//         age: 17,
//         timesDonated: 12,
//         type: "Individual",
//         createdOn: "2021-10-30T19:20:41.768Z")
//   ];
// }

// class Item {
//   final String id;
//   final String name;
//   final int points;
//   final int age;
//   final int timesDonated;
//   final String type;
//   final String createdOn;

//   Item(
//       {required this.id,
//       required this.name,
//       required this.points,
//       required this.age,
//       required this.timesDonated,
//       required this.type,
//       required this.createdOn});

//   factory Item.fromMap(Map<dynamic, dynamic> map) {
//     return Item(
//       id: map["id"],
//       name: map["name"],
//       points: map["points"],
//       age: map["age"],
//       timesDonated: map["timesDonated"],
//       type: map["type"],
//       createdOn: map["createdOn"],
//     );
//   }

//   toMap() => {
//         "id": id,
//         "name": name,
//         "points": points,
//         "age": age,
//         "timesDonated": timesDonated,
//         "type": type,
//         "createdOn": createdOn,
//       };
// }
