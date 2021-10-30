class UserModel {
  static final userdata = [
    Item(
        id: "0d45557b-2bcf-488f-b16f-d5686b75faf9",
        name: "Ansh Bhalala",
        views: 0,
        age: 17,
        donation_count: 12)
  ];
}

class Item {
  final String id;
  final String name;
  final int views;
  final int age;
  final int donation_count;

  Item(
      {required this.id,
      required this.name,
      required this.views,
      required this.age,
      required this.donation_count});
}
