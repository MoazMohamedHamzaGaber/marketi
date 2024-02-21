import 'package:flutter_bloc/flutter_bloc.dart';

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
}