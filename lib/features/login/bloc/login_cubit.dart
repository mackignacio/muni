import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part "./login_state.dart";

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void emailChanged(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value));
  }

  void loginWithCredentials() async {
    // final response = await userRepository.authenticate(
    //   {"email": state.email, "password": state.password, "__t": "Customer"},
    // );

    // if (response.data!.status == "success" && response.data!.data.isNotEmpty) {
    //   final user = response.data!.data[0];
    //   final access = response.data!.meta!.access;
    //   final sharedPreferences = await SharedPreferences.getInstance();
    //   sharedPreferences.setString('user', user.id ?? "");
    //   sharedPreferences.setString('access', access ?? "");
    //   emit(state.copyWith(authenticated: true));
    // }
  }

  void loginWithGoogle() async {
    // final account = await Google.googleSignIn.signIn();
    // final response = await userRepository.authenticate(
    //   {"email": account!.email, "__t": "Customer", "type": "google"},
    // );

    // if (response.data!.status == "success" && response.data!.data.isNotEmpty) {
    //   final user = response.data!.data[0];
    //   final sharedPreferences = await SharedPreferences.getInstance();
    //   sharedPreferences.setString('user', user.id ?? "");
    //   emit(state.copyWith(authenticated: true));
    // }
  }
}
