import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FunnelButton extends StatefulWidget {
  FunnelButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  _FunnelButtonState createState() => _FunnelButtonState();
}

class _FunnelButtonState extends State<FunnelButton> {
  int _buttonCounter = 0;

  void _incrementFunnelCounter() {
    setState(() {
      _buttonCounter += 1;
      print(
          'inside increment counter functionious:' + _buttonCounter.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    print('built!');
    return Dismissible(
      key: ValueKey(_buttonCounter),
      child: RaisedButton(
        color: Colors.deepOrange,
        splashColor: Colors.orange,
        onPressed: _incrementFunnelCounter,
        shape: const StadiumBorder(),
        child: SizedBox(
          width: 220,
          height: 100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20.0,
              ),
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.child_care,
                    color: Colors.black,
                  ),
                  SizedBox(width: 30,),
                  Text(
                    _buttonCounter.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                  SizedBox(width: 30,),
                  const Icon(
                    Icons.child_care,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
