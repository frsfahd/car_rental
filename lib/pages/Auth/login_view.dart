import 'package:car_rental/pages/Auth/auth.dart';
import 'package:car_rental/pages/Home/home.dart';
import 'package:flutter/material.dart';

/********************* login_view *********************/

///
/// Type : Stateful Widget
///
/// Description : Display login form (with email & password) and implement basic form validation
/// Responsive Layout : yes (mobile & view)
///
/// note : use stateful widget to accomodate form controllers, form validator, and obscured-text toggle button

class LoginViewMobile extends StatefulWidget {
  const LoginViewMobile({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  State<StatefulWidget> createState() => _LoginViewMobileState();
}

class _LoginViewMobileState extends State<LoginViewMobile> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isObscured = true;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // email field
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email cannot be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        hintText: "example@gmail.com",
                      ),
                    ),
                  ],
                ),
              ),

              // password field
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password cannot be empty';
                        }
                        return null;
                      },
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        hintText: "********",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // "forget password"
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("forget your password ?"),
                ),
              ),

              SizedBox(height: 20),

              // login button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(content: Text('Login Success')),
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }
                  },
                  child: const Text("Log in"),
                ),
              ),

              // register redirection
              TextButton(
                onPressed: () {
                  widget.changeView!(mode: authView.Register);
                },
                child: Text("Don't have an account ? Create account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginViewWeb extends StatefulWidget {
  const LoginViewWeb({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  State<LoginViewWeb> createState() => _LoginViewWebState();
}

class _LoginViewWebState extends State<LoginViewWeb> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isObscured = true;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            // Login Image
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/icon-bg.png",
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(width: 40),

            // Login Form
            Expanded(
              flex: 1,
              child: Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Headline
                        Text(
                          "Welcome Back !",
                          style: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        // email field
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email cannot be empty';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  hintText: "example@gmail.com",
                                ),
                              ),
                            ],
                          ),
                        ),

                        // password field
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password cannot be empty';
                                  }
                                  return null;
                                },
                                obscureText: _isObscured,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  hintText: "********",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObscured = !_isObscured;
                                      });
                                    },
                                    icon: Icon(
                                      _isObscured
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // "forget password"
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("forget your password ?"),
                          ),
                        ),

                        SizedBox(height: 20),

                        // login button
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                              }
                            },
                            child: const Text("Log in"),
                          ),
                        ),

                        // register redirection
                        TextButton(
                          onPressed: () {
                            widget.changeView!(mode: authView.Register);
                          },
                          child: Text("Don't have an account ? Create account"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/********************* EOF login_view *********************/
