import 'package:flutter/material.dart';

const cardColor = Color(0xFF1d1f33);
const bottomContainerColor = Color(0xFFeb1555);

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
                  colour: cardColor,
                )),
                Expanded(
                    child: ReuseableCard(
                  colour: cardColor,
                ))
              ],
            )),
            Expanded(
              child: ReuseableCard(
                colour: cardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: cardColor,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: cardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
            ),
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
