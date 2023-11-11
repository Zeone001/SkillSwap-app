import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:skill_swap/const/app_colors.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Verify",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        leadingWidth: 70,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: InkWell(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.redCream),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Icon(
                Icons.chevron_left_rounded,
                color: Colors.black,
                size: 29.0,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Masukkan kode yang dikirim ke JhonDhoe@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 60.0,
              ),
              OtpTextField(
                numberOfFields: 4,
                borderColor: AppColors.redCream,
                borderWidth: 2,
                borderRadius: BorderRadius.circular(12),
                textStyle: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: AppSize(context) / 20),
                cursorColor: AppColors.redCream,
                filled: true,
                fillColor: Colors.white,
                enabledBorderColor: AppColors.redCream,
                fieldWidth: AppSize(context) / 7,
                focusedBorderColor: AppColors.redCream,
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (value) {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Kirim Ulang Code",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Image.asset(
                "assets/images/ic_app.png",
                width: 150.0,
                height: 150.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "verifikasi".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
