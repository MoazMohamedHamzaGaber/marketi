class LoginModel {
  Data? data;
  String? token;

  LoginModel({this.data, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }
}

class Data {
  String?id;
  String? name;
  String? email;

  Data({this.id, this.name, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    email = json['email'];
  }
}
