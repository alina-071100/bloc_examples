class User {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String? address;
  String? city;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.address,
    required this.city,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        phone: json['phone'],
        address: json['address'].toString(),
        city: json['city'].toString());
  }
}
