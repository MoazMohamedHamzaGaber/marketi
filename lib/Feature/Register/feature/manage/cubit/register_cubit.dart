import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Register/data/model/register_model.dart';

import '../../../../../core/utils/components.dart';
import '../../../../../core/utils/api_service.dart';
import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit():super (RegisterInitialStates());
  RegisterCubit get(context)=>BlocProvider.of(context);

  bool obscureText=true;


  void changeObscureText(){
    obscureText=!obscureText;
    emit(RegisterChangeObscureTextStates());
  }

  RegisterModel? registerModel;
  void userCreate({
    required String email,
    required String name,
    required String password,
    required String passwordConfirm,
     context
  }){
    emit(RegisterLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
        url: '/api/v1/auth/signup',
        data: {
          'name':name,
          'email':email,
          'password':password,
          'passwordConfirm':passwordConfirm,
        }
    ).then((value){
      registerModel=RegisterModel.fromJson(value.data);
      emit(RegisterSuccessStates());
      Navigator.pop(context);
      showToast(text: 'An account has been created');
    }).catchError((error)
    {
      print(error.toString());
      emit(RegisterErrorStates(error.toString()));
      Navigator.pop(context);
    }
    );
  }
}