import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testtest/features/HomePage/Views/home_view.dart';
import 'package:testtest/utils/constants.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                AppLogo(),
                Column(
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: kExtremeTextSize,
                      ),
                    ),
                    Text(
                      "We're here to help",
                      style: TextStyle(
                        color: knormalText,
                        fontSize: knormalTextSize,
                      ),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintText: "Your name",

                        prefixIcon: Icon(Icons.person),
                        fillColor: kTextField,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: knormalText),

                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextField),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintText: "Your email",
                        prefixIcon: Icon(Icons.email),
                        fillColor: kTextField,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: knormalText),

                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextField),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        fillColor: kTextField,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: knormalText),

                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextField),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: MaterialButton(
                            color: kDarkTeal,
                            onPressed:
                                () => Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => HomeView(),
                                  ),
                                ),
                            child: Text(
                              "Create Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24, child: Text("or")),
                    const SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: knormalText),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 41,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.google, color: Colors.red),
                          SizedBox(width: 15),
                          Text("Continue with google"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: knormalText),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 41,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                          SizedBox(width: 15),
                          Text("Continue with facebook"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do you have an account?"),
                        TextButton(child: Text("Sign In"), onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: SizedBox(
        height: 107,
        child: Expanded(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/cardiology.png"),
                const SizedBox(height: 16),
                Text(
                  "E7gezly",
                  style: TextStyle(
                    fontSize: kExtremeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
