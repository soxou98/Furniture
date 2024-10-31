import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 


class SplashScreen4 extends StatefulWidget {
  static String routeName = '/splash4';

  @override
  _SplashScreen4State createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  bool _obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            Expanded(
              flex: 4,
              child: Center(
                child: Image.asset(
                  'assets/images/login.png', 
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 40), 
            
            TextField(
              decoration: InputDecoration(
                prefixIconColor: Colors.grey,
                prefixIcon: const Icon(Icons.email),
                labelText: 'Email', labelStyle: const TextStyle(color: Color.fromARGB(255, 151, 149, 149), fontSize: 14,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color.fromARGB(255, 230, 225, 225), width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
              style: const TextStyle(color: Colors.black, fontSize: 18,),
            ),
            const SizedBox(height: 10), 
            TextField(
              obscureText: _obscureText, 
              decoration: InputDecoration(
                prefixIconColor: Colors.grey,
                prefixIcon: const Icon(Icons.lock),
                labelText: 'Password', 
                labelStyle: const TextStyle(color: Color.fromARGB(255, 151, 149, 149), fontSize: 14,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color.fromARGB(255, 230, 225, 225), width: 2),),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
              style: const TextStyle(color: Colors.black, fontSize: 18,),
            ),
            const SizedBox(height: 10), 

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home'); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(249, 255, 128, 2), 
                minimumSize: const Size(double.infinity, 50), 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(vertical: 16),
                
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 18),
                
              ),
            ),
            const SizedBox(height: 10), 
            const Text(
              'Or login with',
              style: TextStyle(color: Colors.black, fontSize: 8),
            ),
            const SizedBox(height: 5), 
            
            OutlinedButton.icon(
              onPressed: () {
              },
              icon: Image.asset('assets/images/google.png', height: 20, width: 18,), 
              label: const Text('Google'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/splash5'); 
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Color.fromARGB(255, 23, 144, 243)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
