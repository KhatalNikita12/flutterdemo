import 'package:flutter/material.dart';
import '../pages/welcomepage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  LoginPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 243, 240),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Icon(
            //   Icons.lock_open_rounded,
            //   size: 100,
            //   color: Color.fromARGB(255, 13, 12, 15),
            // ),
            Image.asset(
              'assets/login.jpg',
              fit: BoxFit.cover,
            ),
            // Logo

            const SizedBox(
              height: 25,
            ),
            // Text
            const Text(
              "AgriCultural App",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(221, 9, 155, 55),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 10, 208, 109), width: 3.0),
                  ),
                  hintText: "Khatal Nikita",
                  labelText: 'Enter your name',
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // Button
            ElevatedButton(
              onPressed: () {
                final String name = _nameController.text;
                if (name.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(name: name),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter your name')),
                  );
                }
              },
              child: const Text('Go to Explore'),
            ),
          ],
        ),
      ),
    );
  }
}
