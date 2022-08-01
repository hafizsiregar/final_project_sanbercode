import 'package:final_project_sanbercode/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 70),
              ),
              Text('Register',
              style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color(0xff0D0140)
              ),),
              const SizedBox(height: 25), 
              Image.asset('images/ic_app.png'),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Input your email',
                    labelStyle: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xff0D0140)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    label: Text('Email'),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    hintText: 'Input your password',
                    labelStyle: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xff0D0140)
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    label: Text('Password'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  const Text('Remember me'),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Forgot password?',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xff0D0140)
                    ),),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  AuthController.instance.register(
                    _emailController.text.trim(), 
                    _passwordController.text.trim()
                  );
                  Get.to('/login');
                },
                child: Text('Register',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff0D0140)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )),
                    maximumSize: MaterialStateProperty.all(Size(260, 50)),
                    minimumSize: MaterialStateProperty.all(Size(260, 50)),
                  ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/google.png',
                    width: 20,
                    height: 20,),
                    const SizedBox(width: 12),
                    Text('SIGN UP WITH GOOGLE',
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: const Color(0xff0D0140),
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xffD6CDFE)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )),
                    maximumSize: MaterialStateProperty.all(Size(260, 50)),
                    minimumSize: MaterialStateProperty.all(Size(260, 50)),
                  ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' You don\'t have an account yet?',
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: const Color(0xff524B6B)
                  ),),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text('Sign up',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: const Color(0xffFF9228),
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}