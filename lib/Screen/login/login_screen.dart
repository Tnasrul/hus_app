import 'package:flutter/material.dart';
import 'package:hus_project/Screen/home/main_page.dart';
import 'package:hus_project/color.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: primaryColor),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 209,
            width: 209,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image.asset('assets/images/hus-logo.png')]),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Form(
                        key: _formSignInKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Selamat Datang Di \nProperty Management Sytem',
                                  style: primaryTextStyle14b,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: primaryColor,
                                ),
                                label: const Text('Email'),
                                hintText: 'Masukan Email',
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryColor, // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryColor, // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Harap Masukan Kata Sandi';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: primaryColor,
                                ),
                                label: const Text('Kata Sandi'),
                                hintText: 'Masukan Kata Sandi',
                                hintStyle: TextStyle(
                                  color: primaryColor,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryColor, // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryColor, // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: rememberPassword,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          rememberPassword = value!;
                                        });
                                      },
                                      activeColor: primaryColor,
                                    ),
                                    Text('Ingat Saya',
                                        style: primaryTextStyle12),
                                  ],
                                ),
                                GestureDetector(
                                  child: Text('Lupa Kata Sandi?',
                                      style: primaryTextStyle12l),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            SizedBox(
                              width: 230,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formSignInKey.currentState!.validate() &&
                                      rememberPassword) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Processing Data'),
                                      ),
                                    );
                                  } else if (!rememberPassword) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Please agree to the processing of personal data')),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor),
                                child: Text('Masuk',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
