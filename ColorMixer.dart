import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ColorMixer(),
  ));
}

class ColorMixer extends StatefulWidget {
  @override
  _ColorMixerState createState() => _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer> {
  double _redValue = 1;
  double _greenValue = 1;
  double _blueValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Mixing'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 250.0,
              height: 250.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(_redValue.toInt(), _greenValue.toInt(),
                    _blueValue.toInt(), 50),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  'Red',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Slider(
                    value: _redValue.toDouble(),
                    min: 1,
                    max: 200,
                    divisions: 200,
                    activeColor: Colors.red,
                    inactiveColor: Colors.red.shade100,
                    label: '${_redValue.round()}',
                    onChanged: (double newValue) {
                      setState(() {
                        _redValue = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Green',
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: Slider(
                    value: _greenValue.toDouble(),
                    min: 1,
                    max: 200,
                    divisions: 200,
                    activeColor: Colors.green,
                    inactiveColor: Colors.green.shade100,
                    label: '${_greenValue.round()}',
                    onChanged: (double newValue) {
                      setState(() {
                        _greenValue = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Blue',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Slider(
                    value: _blueValue.toDouble(),
                    min: 1,
                    max: 200,
                    divisions: 200,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.blue.shade100,
                    label: '${_blueValue.round()}',
                    onChanged: (double newValue) {
                      setState(() {
                        _blueValue = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
