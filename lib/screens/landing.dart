import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  static const String routeName = '/landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('DOE', style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 10),
                  Text(
                    'Solo tu informacion legal al instatne',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () {},
                      child: Text('Sign in', style: Theme.of(context).textTheme.button,)
                  ),
                  const SizedBox(width: 50),
                  OutlinedButton(
                      style: Theme.of(context).outlinedButtonTheme.style,
                      onPressed: () {},
                      child: Text('Sign up', style: Theme.of(context).textTheme.overline,)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}