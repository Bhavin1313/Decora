class Users {
  String? username;
  String email;
  String password;
  String? gender;
  int? contact;
  String? address;
  String? state;
  String? role;
  String? zip;

  Users({
    username,
    required this.email,
    required this.password,
    gender,
    contact,
    address,
    state,
    role,
    zip,
  });

  factory Users.fromJSON({required Map data}) {
    return Users(
      username: data['username'],
      email: data['email'],
      password: data['password'],
      gender: data['gender'],
      contact: data['contact'],
      address: data['address'],
      state: data['state'],
      role: data['role'],
      zip: data['zip'],
    );
  }
}
