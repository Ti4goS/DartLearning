import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _exibePassWord = true;
  String email = '';
  String passWord = '';
  void _changeObscurate() {
    setState(() {
      _exibePassWord = !_exibePassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://image.freepik.com/fotos-gratis/jovem-em-uma-camisa-trabalhando-no-laptop-roxo_155003-14131.jpg"),
                    ),
                  ),    
                ),
                const SizedBox(height: 10,),
                TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.alternate_email_outlined))),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (text) {
                    passWord = text;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: _exibePassWord,
                  decoration: InputDecoration(
                      labelText: 'PassWord',
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.turned_in_not),
                      suffixIcon: IconButton(
                        onPressed: _changeObscurate,
                        icon: PassWordObscure(
                          obscure: _exibePassWord,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == "tiagosantiago.cc@outlook.com" &&
                          passWord == "123456789") {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
