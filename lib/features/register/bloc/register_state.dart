part of "./register_cubit.dart";

class RegisterState extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final bool? authenticated;

  const RegisterState({
    this.firstName = "",
    this.lastName = "",
    this.email = "",
    this.password = "customer",
    this.authenticated = false,
  });

  @override
  List<Object?> get props =>
      [email, firstName, lastName, password, authenticated];

  RegisterState copyWith({
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    bool? authenticated,
  }) {
    return RegisterState(
      email: email ?? this.email,
      authenticated: authenticated ?? this.authenticated,
      password: password ?? this.password,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.password,
    );
  }
}
