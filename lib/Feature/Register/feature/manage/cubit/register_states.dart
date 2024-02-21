abstract class RegisterStates{}

class RegisterInitialStates extends RegisterStates{}

class RegisterChangeObscureTextStates extends RegisterStates{}

class RegisterSuccessStates extends RegisterStates{}

class RegisterLoadingStates extends RegisterStates{}

class RegisterErrorStates extends RegisterStates{
  final String error;

  RegisterErrorStates(this.error);
}