import 'package:flutter/material.dart';

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({Key? key}) : super(key: key);

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget> {
  final _loginController = TextEditingController(text: 'admin');
  final _passwordController = TextEditingController(text: 'admin');

  void _checkAuth() {
    final login = _loginController.text;
    final password = _passwordController.text;
    if (login == 'admin' && password == 'admin') {
      // context.router.pushNamed('/main-screen');
    } else {
      // const errorText = "Неверный логин или пароль";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              TextField(
                controller: _loginController,
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                autofocus: false,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: _checkAuth, child: const Text("Войти"))
            ],
          ),
        ),
      ),
    );
  }
}
