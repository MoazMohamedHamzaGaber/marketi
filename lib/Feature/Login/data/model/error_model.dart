class LoginErrorModel {
 late String msg;

  LoginErrorModel({required this.msg});

  LoginErrorModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    return data;
  }
}
// class LoginErrorModel {
//   List<Errors>?errors;
//
//   LoginErrorModel({this.errors});
//
//   LoginErrorModel.fromJson(Map<String, dynamic> json) {
//     if (json['errors'] != null) {
//       errors = <Errors>[];
//       json['errors'].forEach((v) {
//         errors!.add(new Errors.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.errors != null) {
//       data['errors'] = this.errors!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Errors {
//   String? value;
//  late String msg;
//   String? param;
//   String? location;
//
//   Errors({this.value, required this.msg, this.param, this.location});
//
//   Errors.fromJson(Map<String, dynamic> json) {
//     value = json['value'];
//     msg = json['msg'];
//     param = json['param'];
//     location = json['location'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['value'] = this.value;
//     data['msg'] = this.msg;
//     data['param'] = this.param;
//     data['location'] = this.location;
//     return data;
//   }
// }