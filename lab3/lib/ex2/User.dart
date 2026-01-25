//2.1
class User {
  final String ?name;
  final String ?email;

  User({this.name,this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'], email: json['email']);
  }

  @override
  String toString() {
    return 'User{name: $name, email: $email}';
  }

  //2.2
  List<Map<String, dynamic>> fakeApiResponse = [
    {'name': 'Dat', 'email': 'datlthe181318@fpt.edu.vn'},
    {'name': 'Van A', 'email': 'A@gmail.com'},
    {'name': 'Thi B', 'email': 'B@gmail.com'},
  ];

  //2.3
  Future<List<User>> fetchUsers() async {
    await Future.delayed(Duration(seconds: 3));
    return fakeApiResponse
        .map((json) => User.fromJson(json))
        .toList();
  }
}
