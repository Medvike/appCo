import 'package:app_co/utils/images.dart';
import 'package:flutter/material.dart';
import '../otp/otp.dart';
import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MyImages.Group,
                height: 150,
              ),
              const SizedBox(height: 50),
              CustomTextField(
                hintText: 'Enter Your Name',
                prefixIcon:
                    const Icon(Icons.person_outline, color: Colors.black),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: '+20',
                prefixIcon: const Icon(Icons.phone, color: Colors.black),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 60),
              Custom_Button(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otp(),
                      ),
                    );
                  },
                  data: 'DONE'),
            ],
          ),
        ),
      ),
    );
  }
}
