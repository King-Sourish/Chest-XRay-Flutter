// class UserService {
//   static const _userKey = 'user';

//   Future<void> saveUser(UserModel user) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_userKey, user.toJson() as String);
//   }

//   Future<UserModel?> getUser() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? userJson = prefs.getString(_userKey);
//     if (userJson != null) {
//       return UserModel.fromJson(jsonDecode(userJson));
//     }
//     return null;
//   }

//   Future<void> clearUser() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove(_userKey);
//   }
// }

