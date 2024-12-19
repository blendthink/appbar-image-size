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
    final image = Image.asset(
      'assets/dash.png',
      color: Colors.black,
      width: 40,
      height: 40,
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            divider,
            AppBar(
              primary: false,
              title: Text('そのまま'),
              leading: image,
            ),
            divider,
            divider,
            AppBar(
              primary: false,
              title: Text('Center で囲む'),
              leading: Center(
                child: image,
              ),
            ),
            divider,
            AppBar(
              primary: false,
              title: Text('IconButton で囲む'),
              leading: IconButton(
                icon: image,
                onPressed: () {},
              ),
            ),
            divider,
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: kToolbarHeight),
              child: NavigationToolbar(
                leading: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: kToolbarHeight),
                  child: image,
                ),
                middle: Text(
                  '再現する',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                centerMiddle: true,
                middleSpacing: NavigationToolbar.kMiddleSpacing,
              ),
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
