import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/components/my_button.dart';
import 'package:onboarding_screen/components/my_iconbutton.dart';
import 'package:onboarding_screen/components/my_textbutton.dart';
import 'package:onboarding_screen/components/my_textfield.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print('It s ok');
    } else {
      print('Please input your email ad password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, ready to get started?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign in with your email and password.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Please input your email',
                obscureText: false,
                labelText: 'Email',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                hintText: 'Enter your password',
                labelText: 'Password',
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 25,
              ),
              const MyTextButton(labelText: 'Forgot password?', pageRoute: 'forgot',),
              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signInUser, hinText: 'Sign in'),
              const SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade700,
                    ),
                    ),
                    Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 8.0), 
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    ),
                    Expanded(
                      child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade700,
                    )
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'asset/google_icon.png'),
                  SizedBox(width: 10,),
                  MyIconButton(imagePath: 'asset/apple_icon.png'),
                ],
              ),


              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Not a member?', style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),),
                    const MyTextButton(labelText: 'Register now',pageRoute: 'register',),
                  ],
                ),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
