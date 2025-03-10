import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/Button.dart';
import 'package:gsos/views/widgets/sizedbox.dart';
import 'package:gsos/views/widgets/textfield.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // final _formKey = GlobalKey<FormState>();

  late final TextEditingController _username;
  late final TextEditingController _password;

  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/img_1.png"),
              Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              get10height(),
              Text("Nice to see you again, Login to Continue"),
              get10height(),
              getTextFiled(
                keyboardType: TextInputType.name,
                controller: _username,
                hintText: "Enter Username",
                // validator: (value) {
                //   value = value?.trim() ?? '';
                //   if (value.isEmpty) {
                //     return 'Please enter your username';
                //   }
                //   return null;
                // },
              ),
              get20height(),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisible,
                controller: _password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: InkWell(
                    child: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onTap: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                ),
                // validator: (value) {
                //   value = value?.trim() ?? '';
                //   if (value.isEmpty) {
                //     return 'Please enter your password';
                //   }
                //   if (value.length < 6) {
                //     return 'Password must be at least 6 characters long';
                //   }
                //   return null;
                // },
              ),
              get10height(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline, // Add underline
                  ),
                ),
              ),
              getMainButton(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();

                    // if (_formKey.currentState?.validate() ?? false) {
                    final username = _username.text.trim();
                    final password = _password.text.trim();
                    print("Username - $username | Password - $password");
                    Navigator.pushReplacementNamed(context, '/dashboardscreen');

                    // }
                  },
                  name: "Login"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _username.dispose();
    _password.dispose();
  }
}
