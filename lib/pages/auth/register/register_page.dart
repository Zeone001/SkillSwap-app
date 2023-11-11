import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/pages/auth/register/otp_page.dart';
import 'package:skill_swap/utils/routes.dart';
import 'package:skill_swap/pages/auth/login/login_page.dart';
import 'package:skill_swap/widgets/toast.dart';
import 'package:skill_swap/utils/validator.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  DateTime? currentBackPressTime;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameNode = FocusNode();
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
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/ic_app.png",
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      "Welcome To",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Skill Swab",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                            autofillHints: const [AutofillHints.email],
                            keyboardType: TextInputType.emailAddress,
                            focusNode: _usernameNode,
                            controller: _usernameController,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.blueGrey,
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_usernameNode);
                            },
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
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
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
                              hintText: "Email",
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.email),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
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
                          const SizedBox(height: 16.0),
                          Hero(
                            tag: "register_btn",
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpPage()),
                                );
                              },
                              child: Text(
                                "daftar".toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    // if (MediaQuery.of(context).viewInsets.bottom == 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      border: Border.all(
                                          width: 1, color: AppColors.redCream)),
                                  child: Image.asset(
                                    "assets/images/ic_google.png",
                                    width: 35.0,
                                    height: 35.0,
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "Atau",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.00),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                    border: Border.all(
                                        width: 1, color: AppColors.redCream)),
                                child: Image.asset(
                                  "assets/images/ic_facebook.png",
                                  width: 35.0,
                                  height: 35.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Sudah Punya Akun ? ",
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 20.00),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  Routes.login,
                                );
                              },
                              child: const Text(
                                "Masuk",
                                style: TextStyle(
                                    color: AppColors.purple,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.00),
                              ),
                            )
                          ],
                        ),
                      ],
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
