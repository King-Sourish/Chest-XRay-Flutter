class UserModel {
  final String token;
  final String user;
  final String staticId;
  final String username;
  final String name;
  final String email;
  final String mobileNum;
  final String dob;
  final String sex;
  final String address;
  final String pincode;
  final String profilePhoto;
  final String occupation;
  final String authUser;

  UserModel({
    required this.token,
    required this.user,
    required this.staticId,
    required this.username,
    required this.name,
    required this.email,
    required this.mobileNum,
    required this.dob,
    required this.sex,
    required this.address,
    required this.pincode,
    required this.profilePhoto,
    required this.occupation,
    required this.authUser,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'],
      user: json['user'],
      staticId: json['static_id'],
      username: json['username'],
      name: json['name'],
      email: json['email'],
      mobileNum: json['mobile_num'],
      dob: json['dob'],
      sex: json['sex'],
      address: json['address'],
      pincode: json['pincode'],
      profilePhoto: json['profile_photo'],
      occupation: json['occupation'],
      authUser: json['auth_user'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user': user,
      'static_id': staticId,
      'username': username,
      'name': name,
      'email': email,
      'mobile_num': mobileNum,
      'dob': dob,
      'sex': sex,
      'address': address,
      'pincode': pincode,
      'profile_photo': profilePhoto,
      'occupation': occupation,
      'auth_user': authUser,
    };
  }
}
