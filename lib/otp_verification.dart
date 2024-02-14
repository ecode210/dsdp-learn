import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF2EF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(
                color: Colors.black,
              ),
              const SizedBox(height: 20),
              const Text(
                "OTP code\nVerification",
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  height: 1,
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                "Code has been sent to +2348138******",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Pinput(
                  closeKeyboardWhenCompleted: true,
                  defaultPinTheme: PinTheme(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  length: 4,
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    const TextSpan(
                      text: "Resend code in ",
                    ),
                    TextSpan(
                      text: "45",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const TextSpan(
                      text: " s",
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
