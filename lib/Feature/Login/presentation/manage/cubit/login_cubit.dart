import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Login/data/model/login_model.dart';
import 'package:marketi/core/utils/api_service.dart';

import '../../../../../core/utils/components.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit():super (LoginInitialStates());
  LoginCubit get(context)=>BlocProvider.of(context);

  bool obscureText=true;


  void changeObscureText(){
    obscureText=!obscureText;
    emit(LoginChangeObscureTextStates());
  }

  LoginModel? loginModel;
  void userLogin({
    required String email,
    required String password,
    required context
  }){
    emit(LoginLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
        url: '/api/v1/auth/login',
        data: {
          'email':email,
          'password':password,
        }
    ).then((value){
      loginModel=LoginModel.fromJson(value.data);
      emit(LoginSuccessStates());
     Navigator.pop(context);
    }).catchError((error)
    {
      print(error.toString());
      emit(LoginErrorStates(error.toString()));
      Navigator.pop(context);
    }
    );
  }

//   LoginModel? loginModel;
//   void userLogin({
//     required String email,
//     required String password,
//     required context
// }){
//     emit(LoginLoadingStates());
//     buildShowLoading(context);
//     DioHelper.postData(
//         url: '/api/v1/auth/login',
//       data: {
//           'email':email,
//           'password':password,
//       }
//     ).then((value){
//       loginModel=LoginModel.fromJson(value.data);
//       emit(LoginSuccessStates());
//       Navigator.pop(context);
//     }).catchError((error)
//     {
//       print(error.toString());
//       emit(LoginErrorStates(error.toString()));
//       Navigator.pop(context);
//     }
//     );
//   }
}