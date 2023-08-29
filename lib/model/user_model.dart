class UserModel {
  int id;
  String name;
  String email;
  String? username; // username nullable
  String? profilePhotoUrl;
  String token;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      this.username,
      this.profilePhotoUrl,
      required this.token})
      : assert(id > 0, 'ID must be greater than 0'),
        assert(name.isNotEmpty, 'Name must not be empty'),
        assert(email.isNotEmpty, 'Email must not be empty'),
        assert(token.isNotEmpty, 'Token must not be empty');

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        profilePhotoUrl = json['profile_photo_url'],
        token = json['token'],
        email = json['email'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}
