
abstract class LoginStates{}

class LoginInitialStates extends LoginStates{}

class LoginChangeObscureTextStates extends LoginStates{}

class LoginSuccessStates extends LoginStates{
  final String uId;

  LoginSuccessStates({required this.uId});
}

class LoginLoadingStates extends LoginStates{}

class LoginErrorStates extends LoginStates{
  final String error;

  LoginErrorStates(this.error);
}