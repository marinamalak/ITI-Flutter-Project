import 'package:final_project/app_screens/navigation.dart';
import 'package:final_project/app_screens/register_screen.dart';
import 'package:final_project/dio/api_provider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
    const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visable = true;
  bool rememberMe = false;

  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController passController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Login to Your Account',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(15.0)),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                  obscureText: visable,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(15.0)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visable = !visable;
                          });
                        },
                        icon: Icon(
                            visable ? Icons.visibility : Icons.visibility_off)),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember Me',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(35.0)),
                  child: MaterialButton(
                      onPressed: () async {
                        if(formKey.currentState!.validate()){
                          await ApiProvider()
                              .userLogin(
                                  userName: nameController.text,
                                  password: passController.text)
                              .then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("$value")));
                            if (value == "Login Success") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NavigationBarPage()));
                            }
                          });
                        }
                        
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                ),
                const SizedBox(height: 135),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                      child: const Text(
                        'Sign Up',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
