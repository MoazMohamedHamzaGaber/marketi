import 'package:flutter_bloc/flutter_bloc.dart';

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
}