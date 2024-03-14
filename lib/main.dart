import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/logo.jpeg'),
                    height: 50,
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maintenance'),
                      Text(
                        'Box',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Center(child: Text('login')),
              const Text(
                  'welcome to our supper app\n you will enjoy here more'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email_sharp,
                      color: Color(0xff323F4B),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7E8))),
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7E8))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: Icon(Icons.lock),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7E8))),
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off_outlined)),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
                child: const Center(child: Text('login')),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Do not have an account?'),
                  Text(
                    'signup',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
