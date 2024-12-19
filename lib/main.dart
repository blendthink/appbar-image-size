import 'package:flutter/material.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 0.5,
    );
    const title = Text('AppBar Image Size');
    final image = Image.asset(
      'assets/dash.png',
      color: Colors.black,
      width: 32,
      height: 32,
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            divider,
            AppBar(
              primary: false,
              title: title,
              leading: image,
            ),
            divider,
            AppBar(
              primary: false,
              title: title,
              leading: Center(
                child: image,
              ),
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
