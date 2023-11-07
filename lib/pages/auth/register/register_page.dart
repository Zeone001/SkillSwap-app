import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/pages/auth/login/login_page.dart';
import 'package:skill_swap/utils/toast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime? currentBackPressTime;
  bool _isShowPassword1 = false;
  bool _isShowPassword2 = false;
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
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.blueGrey,
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                              hintText: "Username",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.blueGrey,
                            onChanged: (value) {},
                            decoration: const InputDecoration(
                              hintText: "Email",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.person),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            cursorColor: Colors.blueGrey,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Icon(Icons.lock),
                              ),
                              suffixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() =>
                                        _isShowPassword1 = !_isShowPassword1);
                                  },
                                  icon: Icon(
                                    _isShowPassword1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            cursorColor: Colors.blueGrey,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Icon(Icons.lock),
                              ),
                              suffixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() =>
                                        _isShowPassword2 = !_isShowPassword2);
                                  },
                                  icon: Icon(
                                    _isShowPassword2
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          Hero(
                            tag: "login_btn",
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Sign".toUpperCase(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Already have an Account ? ",
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
                                            const LoginPage()),
                                  );
                                },
                                child: const Text(
                                  "Sign In",
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
    FocusScope.of(context).requestFocus(FocusNode());
    if (_autovalidateMode == AutovalidateMode.disabled) {
      _autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }

    if (_formKey.currentState!.validate()) {
      print("Succress masbro");
    }
  }

  Future<bool> onWillPop() async {
    if (currentBackPressTime == null ||
        DateTime.now().difference(currentBackPressTime!) >
            const Duration(seconds: 2)) {
      currentBackPressTime = DateTime.now();
      Toasts.successToast('Tekan sekali lagi untuk keluar');
      return false;
    } else {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      return true;
    }
  }
}
