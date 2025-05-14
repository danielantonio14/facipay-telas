import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // Top Image Decoration
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/top_food.png',
                width: 200,
              ),
            ),

            const SizedBox(height: 20),

            // App Title
            const Text(
              'Kúdia',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Learn how to cook and eat healthy, just be healthier and be happy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Colors.black, Colors.deepPurple],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Or Divider
            Row(
              children: const [
                Expanded(
                  child: Divider(thickness: 1, indent: 40, endIndent: 10),
                ),
                Text('Or', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Expanded(
                  child: Divider(thickness: 1, indent: 10, endIndent: 40),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Social Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(icon: Icons.facebook, color: Colors.blue),
                const SizedBox(width: 20),
                SocialButton(icon: Icons.g_mobiledata, color: Colors.red),
                const SizedBox(width: 20),
                SocialButton(icon: Icons.alternate_email, color: Colors.lightBlue),
              ],
            ),

            const SizedBox(height: 20),

            // Login Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account ?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Login'),
                )
              ],
            ),

            const SizedBox(height: 20),

            // Bottom Image Decoration
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/bottom.png',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SocialButton({Key? key, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
