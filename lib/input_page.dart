import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReuseableCard(
                  colour: Color(0xFF1d1f33),
                )),
                Expanded(
                    child: ReuseableCard(
                  colour: Color(0xFF1d1f33),
                ))
              ],
            )),
            Expanded(
              child: ReuseableCard(
                colour: Color(0xFF1d1f33),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1d1f33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1d1f33),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
