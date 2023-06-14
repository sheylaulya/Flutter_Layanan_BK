class users {
  int? id;
  String? name;
  String? profile_photo_path;
  String? email;
  String? token;

  users({
    this.id,
    this.name,
    this.profile_photo_path,
    this.email,
    this.token,
  });

  factory users.fromJson(Map<String, dynamic> json) {
    return users(
      id: json['user']['id'],
      name: json['user']['name'],
      profile_photo_path: json['user']['profile_photo_path'],
      email: json['user']['email'],
      token: json['user']['token'],
    );
  }
}
