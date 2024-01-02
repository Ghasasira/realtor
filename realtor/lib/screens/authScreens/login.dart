import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:realtor/controllers/authentication/loginController.dart";
import "package:realtor/reusables/realtorButton.dart";
import "package:realtor/reusables/signInOptions.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  void showPassword() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  final loginController = Get.put(LoginByEmail());
  @override
  Widget build(BuildContext context) {
    // bool hidePassword = true;

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          child: ListView(
            children: [
              Image.asset(
                "images/house.jpg",
                width: 100.0,
                height: 120.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Join or sign in",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: TextFormField(
                  controller: loginController.emailController,
                  // autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 46, 46, 46)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: TextFormField(
                  obscureText: hidePassword,
                  controller: loginController.passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        showPassword();
                      },
                      icon: Icon(hidePassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 46, 46, 46)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RealtorButton(
                    color: Colors.red,
                    text: "Continue with Email",
                    onpressed: () {
                      loginController.loginWithEmail();
                    },
                    styles: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 46, 46, 46))),
                  Text('or'),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 46, 46, 46))),
                ],
              ),
              SignInOptions(),
              Text(
                "By signing in you agree to Realtor's Terms of Use and Privacy Policy",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
