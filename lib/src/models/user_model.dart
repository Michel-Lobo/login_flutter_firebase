class UserModel {
  String _idUser;
  String _name;
  String _email;
  String _password;

UserModel.fromJson(Map<String, dynamic> parseJson){
  _idUser = parseJson['idUser'];
  _name = parseJson['name'];
  _email = parseJson['email'];
  _password = parseJson['password'];
}

  String get idUser => _idUser;
  String get name => _name;
  String get email => _email;
  String get password => _password;
}