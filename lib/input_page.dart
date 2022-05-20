import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: cardColor,
                  ),
                ),
                Expanded(
                    child: ReuseableCard(
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
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

class CardContent extends StatelessWidget {
  CardContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF8d8e98),
          ),
        ),
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
