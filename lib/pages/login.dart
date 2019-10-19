import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppTheme.background,
      /*
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),*/
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                "https://www.texomacc.org/uploads/4/4/2/5/44257177/published/community-page-background-image-1024x564.png?1524513514",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Tribe',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[600]),
                      ),
                      Icon(
                        Icons.bubble_chart,
                        color: Colors.lightGreen,
                        size: 40.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 210,
                    child: TextField(
                      onSubmitted: (text) {
                        print(text);
                      },
                      textAlign: TextAlign.center,
                      obscureText: true,
                      maxLength: 10,
                      autofocus: true,
                      textInputAction: TextInputAction.continueAction,
                      decoration: InputDecoration(
                        hintText: 'Enter your house key',
                        // border: OutlineInputBorder(),
                        suffix: IconButton(
                          splashColor: Theme.of(context).primaryColor,
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                                    SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
