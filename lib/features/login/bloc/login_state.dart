part of "./login_cubit.dart";

class LoginState extends Equatable {
  final String email;
  final String password;
  final bool? authenticated;

  const LoginState({
    this.email = "customer@gmail.com",
    this.password = "customer",
    this.authenticated = false,
  });

  @override
  List<Object?> get props => [email, password, authenticated];

  LoginState copyWith({
    String? email,
    String? password,
    bool? authenticated,
  }) {
    return LoginState(
      email: email ?? this.email,
      authenticated: authenticated ?? this.authenticated,
      password: password ?? this.password,
    );
  }
}
