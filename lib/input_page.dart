import '../../constants.dart';
import '../../card_content.dart';
import '../../reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                    child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  colour: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                ))
              ],
            )),
            Expanded(
              child: ReuseableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextStyle),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: const Color(0XFF8D8E98),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          thumbColor: const Color(0XFFEB1555),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: const Color(0X29EB1555)),
                      child: Slider(
                          value: height.toDouble(),
                          min: kMinimumHeight,
                          max: kMaximumHeight,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: kActiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: kBottomContainerHeight,
              width: double.infinity,
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
            ),
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
      onPressed: () {},
      elevation: 6,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(height: 54, width: 54),
    );
  }
}
