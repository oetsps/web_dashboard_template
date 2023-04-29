import 'package:flutter/material.dart';
import 'package:web_dashboard_template/constants/style.dart';
import 'package:web_dashboard_template/routing/routes.dart';
import 'package:web_dashboard_template/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Welcome back to the admin panel.",
                    color: lightGrey,
                    weight: FontWeight.w600,
                    size: 14,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
               const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value){}),
                      CustomText(
                        text: "Remeber Me",
                        color: active,
                        weight: FontWeight.w600,
                        size: 12,
                      ),
                    ],
                  ),

                  CustomText(
                    text: "Forgot password?",
                    color: active,
                    weight: FontWeight.w600,
                    size: 12,
                  )
                ],
              ),
                const SizedBox(
                  height: 15,
                ),
              InkWell(
                onTap: (){
                  Get.offAllNamed(rootRoute);
                  // Get.offAllNamed(overviewPageRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active, 
                    borderRadius: BorderRadius.circular(20)
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

               SizedBox(
                height: 15,
              ),

              RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Do not have admin credentials? "),
                  TextSpan(text: "Request Credentials! ", style: TextStyle(color: active))
                ]
              ))

            ],
          ),
        ),
      ),
    );
  }
}
