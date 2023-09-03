import 'package:flutter/material.dart';
import 'package:test_3/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_3/pages/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
    TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Form(
            key: loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  'Register',
                  style: GoogleFonts.forum(fontSize: 30,),
                ),
                 const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (v) {
                    if (v == null) return "Username is required";
                    if (v.isEmpty) {
                      return 'Username is required';
                    }
                    return null;
                  },
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter your Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.8,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (v) {
                    if (v == null) return "Email is required";
                    if (v.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Enter your email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.8,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                TextFormField(
                  validator: (v) {
                    if (v == null) return "Password is required";
                    if (v.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 134, 134, 134),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1.8,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  
                    onPressed: () {
                      if (loginFormKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyApp(),
                          ),
                        );
                      }
                    },
                      style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                onPrimary: Colors.white,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
            ),
            
                    // style: ButtonStyle(
                      
                    //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //     const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.zero,
                    //       side: BorderSide(color: Colors.black),
                         
                    //     ),
                    //   ),
                    // ),
                    child: Text('Register',style: GoogleFonts.zenMaruGothic(fontSize: 25,),),),

                    const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text("Already have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Text("Login",
                          style: GoogleFonts.comfortaa(
                              color: Colors.blue, fontSize: 20)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
