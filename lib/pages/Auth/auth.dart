import 'package:car_rental/pages/Auth/login_view.dart';
import 'package:car_rental/pages/Auth/register_view.dart';
import 'package:flutter/material.dart';

enum authView { Login, Register }

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  authView viewMode = authView.Login;

  void changeViewMode({required authView mode}) {
    setState(() {
      viewMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return viewMode == authView.Login
        ? LoginView(changeView: changeViewMode)
        : RegisterView(changeView: changeViewMode);
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: LoginViewMobile(changeView: changeView),
          );
        }
        return Scaffold(body: LoginViewWeb(changeView: changeView));
      },
    );
  }
}

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 700) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Join the car's squad",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: RegisterViewMobile(changeView: changeView),
          );
        }
        return Scaffold(body: RegisterViewWeb(changeView: changeView));
      },
    );
  }
}
