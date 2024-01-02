import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";
import "package:realtor/controllers/authentication/registrationController.dart";
import "package:realtor/reusables/realtorButton.dart";
import "package:realtor/reusables/signInOptions.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hidePassword = true;
  void showPassword() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  final registerController = Get.put(RegisterByEmailController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Join Realtor",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text("Have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Sign In"),
                  ),
                ],
              ),
              //Expanded(child: SignInOptions()),
              //SignInOptions(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("First Name *"),
                          SizedBox(
                            height: 45.0,
                            child: TextField(
                              maxLines: 1,
                              //style: TextStyle(),
                              decoration: InputDecoration(
                                //label: const Text("Email"),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Last Name *"),
                          SizedBox(
                            height: 45.0,
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                //label: const Text("Email"),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email Address *"),
                    SizedBox(
                      height: 45.0,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                              RegExp(r'[^\s@]+@[^\s@]+\.[^\s@]+')),
                        ],
                        maxLines: 1,
                        decoration: InputDecoration(
                          //label: const Text("Email"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 245, 8, 8)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password *"),
                    SizedBox(
                      height: 45.0,
                      child: TextField(
                        maxLines: 1,
                        obscureText: hidePassword,
                        controller: registerController.passwordController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              showPassword();
                            },
                            icon: Icon(hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          //label: const Text("Email"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cpnfirm Password *"),
                    SizedBox(
                      height: 45.0,
                      child: TextField(
                        maxLines: 1,
                        obscureText: hidePassword,
                        controller:
                            registerController.confirmPasswordController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              showPassword();
                            },
                            icon: Icon(hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          //label: const Text("Email"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RealtorButton(
                  color: Colors.red,
                  text: "Join Realtor",
                  onpressed: () {
                    registerController.registerWithEmail();
                  },
                  styles: const TextStyle(color: Colors.white),
                ),
              ),
              SignInOptions(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "By joining you agree to Realtor's Terms of use and Privacy policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueGrey),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
