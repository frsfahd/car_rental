import 'package:car_rental/pages/Auth/auth.dart';
import 'package:car_rental/pages/Home/home.dart';
import 'package:flutter/material.dart';

/********************* register_view *********************/

///
/// Type : Stateful Widget
///
/// Description : Display registration form (with username, email, password, and password confirmation) and implement basic form validation
/// Responsive Layout : yes (mobile & view)
///
/// note : use stateful widget to accomodate form controllers, form validator, and obscured-text toggle button

class RegisterViewMobile extends StatefulWidget {
  const RegisterViewMobile({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  State<RegisterViewMobile> createState() => _RegisterViewMobileState();
}

class _RegisterViewMobileState extends State<RegisterViewMobile> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isObscured = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
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
              // username field
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username cannot be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        hintText: "Ex: Kenny Ackermann",
                      ),
                    ),
                  ],
                ),
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

              // password confirmation field
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordConfirmationController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value != _passwordController.text) {
                          return 'Password does not match';
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

              SizedBox(height: 40),

              // Register button
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
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }
                  },
                  child: const Text("Create Account"),
                ),
              ),

              // register redirection
              TextButton(
                onPressed: () {
                  widget.changeView!(mode: authView.Login);
                },
                child: Text("Already have an account ? Log in here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterViewWeb extends StatefulWidget {
  const RegisterViewWeb({super.key, required this.changeView});

  final void Function({required authView mode})? changeView;

  @override
  State<RegisterViewWeb> createState() => _RegisterViewWebState();
}

class _RegisterViewWebState extends State<RegisterViewWeb> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isObscured = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
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
            // Image Section
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/icon-bg.png",
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(width: 40),

            // Form section
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
                          "Join the car's squad",
                          style: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),

                        // username
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _usernameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Username cannot be empty';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  hintText: "Ex: Kenny Ackermann",
                                ),
                              ),
                            ],
                          ),
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

                        // password confirmation field
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Confirm Password",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _passwordConfirmationController,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value != _passwordController.text) {
                                    return 'Password does not match';
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

                        SizedBox(height: 40),

                        // Register button
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
                            child: const Text("Create Account"),
                          ),
                        ),

                        // register redirection
                        TextButton(
                          onPressed: () {
                            widget.changeView!(mode: authView.Login);
                          },
                          child: Text("Already have an account ? Log in here"),
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

/********************* EOF register_view *********************/
