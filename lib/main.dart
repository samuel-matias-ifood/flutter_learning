import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'src/themes/button_theme_custom.dart';
import 'src/themes/dimens.dart';
import 'src/themes/text_theme_custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.red,
                padding: EdgeInsets.all(Space.spring_green),
                margin: EdgeInsets.all(Space.carmine),
                child: Text(
                  'texto h1 XD',
                  style: TextThemeCustom().title.h1,
                ),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: Space.golden_dream,
                  vertical: Space.spring_green,
                ),
                child: Text(
                  'texto h2 XD',
                  style: TextThemeCustom().title.h2,
                ),
              ),
              Container(
                  color: Colors.orange,
                  padding: EdgeInsets.only(
                    bottom: Space.dodger_blue,
                  ),
                  child: Text(
                    'texto h3 XD',
                    style: TextThemeCustom().title.h3,
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(
                  Space.dodger_blue,
                  Space.spring_green,
                  Space.dodger_blue,
                  Space.carmine,
                ),
                child: ButtonThemeCustom.primaryButton(
                  () => print('HAHAH XD'),
                  _renderContentButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderContentButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("God Example about TextThemeCustom!"),
        Icon(
          Icons.access_alarm,
          size: Space.fire_bush,
        ),
      ],
    );
  }
}
