import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/const/routes.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_cubit.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_event.dart';
import 'package:skill_swap/pages/auth/register/register_page.dart';
import 'package:skill_swap/utils/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailNode = FocusNode();
  final _passwordNode = FocusNode();
  bool _isShowPassword = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Blur(
            blur: 10.0,
            blurColor: Colors.blueGrey,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1607748851687-ba9a10438621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              child: Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        textTheme: GoogleFonts.pacificoTextTheme().copyWith(
                          displayLarge: TextStyle(
                            color: Colors.grey[800],
                          ),
                          displayMedium: TextStyle(
                            color: Colors.grey[800],
                          ),
                          bodyLarge: TextStyle(
                            color: Colors.grey[800],
                          ),
                          bodyMedium: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      child: Text(
                        "SkillSwap",
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            autofillHints: const [AutofillHints.email],
                            keyboardType: TextInputType.emailAddress,
                            focusNode: _emailNode,
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.blueGrey,
                            validator: (val) {
                              if (Validator.isValidEmail(val)) {
                                return null;
                              } else {
                                return 'Email tidak valid';
                              }
                            },
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(_emailNode);
                            },
                            decoration: const InputDecoration(
                              hintText: "Your email",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              focusNode: _passwordNode,
                              autofillHints: const [
                                AutofillHints.password,
                                AutofillHints.newPassword
                              ],
                              controller: _passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !_isShowPassword,
                              cursorColor: Colors.blueGrey,
                              onFieldSubmitted: (value) {
                                FocusScope.of(context)
                                    .requestFocus(_passwordNode);
                              },
                              decoration: InputDecoration(
                                hintText: "Your password",
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Icon(Icons.lock),
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() =>
                                          _isShowPassword = !_isShowPassword);
                                    },
                                    icon: Icon(
                                      _isShowPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Hero(
                            tag: "login_btn",
                            child: ElevatedButton(
                              onPressed: _submit,
                              child: Text(
                                "Login".toUpperCase(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Don’t have an Account ? ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    if (MediaQuery.of(context).viewInsets.bottom == 0)
                      InkWell(
                        onTap: () =>
                            context.read<LoginCubit>().loginWithGoogle(context),
                        child: CircleAvatar(
                          radius: 26.0,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              "https://i.ibb.co/7WBNQ3M/281764.png",
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _submit() async {
    // FocusScope.of(context).requestFocus(FocusNode());
    // if (_autovalidateMode == AutovalidateMode.disabled) {
    //   _autovalidateMode = AutovalidateMode.always;
    //   setState(() {});
    // }

    // if (_formKey.currentState!.validate()) {
    context.read<LoginCubit>().loginWithEmailAndPassword(
          context,
          LoginWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text),
        );
    // }
  }
}
