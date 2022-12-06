import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  static const String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();

    TextEditingController _mailCtrl = TextEditingController();
    TextEditingController _passwordCtrl = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 35),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Form(
                  key: _formKey,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: TextFormField(
                                controller: _mailCtrl,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if(value!.isEmpty) {
                                    return 'This is required';
                                  }
                                },
                              ),
                            ),
                            TextFormField(
                              controller: _passwordCtrl,
                              obscureText: true,
                              validator: (value) {
                                if(value!.isEmpty) {
                                  return 'This is required';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                            }
                          },
                          child: Text('Submit', style: Theme.of(context).textTheme.button),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}