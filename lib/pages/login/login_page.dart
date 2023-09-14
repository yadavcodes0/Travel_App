import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/widgets/logo.dart';
import 'package:travel_app_ui/pages/onboarding/onboarding_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  moveToOnboarding(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return const OnboardingPage();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(
            top: 82,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo
                  const Logo(
                    logoColor: Color(0xFF597FE4),
                    textColor: Color(0xFF163C9F),
                  ),
                  const SizedBox(height: 64),

                  // welcome back text
                  Text(
                    'Welcome Back!',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF2E3E5C),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 1.33,
                      letterSpacing: 0.48,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Please enter your account
                  Text(
                    'Please enter your account here',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: const Color(0xFF8189B0),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.71,
                      letterSpacing: 0.50,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // email textfield
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      } else if (!value.contains("@gmail.com")) {
                        return "Please enter a valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFF1F6FB),
                      prefixIcon: Image.asset("assets/images/message.png"),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      hintText: 'Email or phone number',
                      hintStyle: GoogleFonts.inter(
                        color: const Color(0xFF8089B0),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.23,
                        letterSpacing: 0.26,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // password textfield
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      } else if (!_isStrongPassword(value)) {
                        return "Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character";
                      }
                      return null;
                    },
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFF1F6FB),
                      prefixIcon: Image.asset("assets/images/lock.png"),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: showPassword
                            ? Image.asset("assets/images/eye.png")
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.inter(
                        color: const Color(0xFF8089B0),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        height: 1.23,
                        letterSpacing: 0.26,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // forgot password button
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF163C9F),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.71,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // login button
                  GestureDetector(
                    onTap: () => moveToOnboarding(context),
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF153C9F),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: GoogleFonts.inter(
                          color: const Color(0xFFF2F2F2),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 52),

                  // don't have an account + sign up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have any account?",
                        style: GoogleFonts.inter(
                          color: const Color(0xFF2D3D5C),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.67,
                          letterSpacing: 0.50,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.inter(
                            color: const Color(0xFF163C9F),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 1.67,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool _isStrongPassword(String password) {
  // Define the regular expressions for each password constraint
  final hasUppercase = RegExp(r'[A-Z]');
  final hasLowercase = RegExp(r'[a-z]');
  final hasDigit = RegExp(r'\d');
  final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  // Check if the password satisfies all constraints
  return hasUppercase.hasMatch(password) &&
      hasLowercase.hasMatch(password) &&
      hasDigit.hasMatch(password) &&
      hasSpecialChar.hasMatch(password);
}
