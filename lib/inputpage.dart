import 'package:flutter/material.dart';
import 'result.dart';
import 'calc.dart';
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool colour1 = true;
  bool colour2 = true;
  int height =180;
  int weight=60;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator',
        style: TextStyle(
          fontSize: 25,
        ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: colour1 ? Color(0xFF1D1E40) : Color(0xFF1D1E90),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 170,
                    height: 200,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          colour2 = true;
                          colour1 = false;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 170,
                            color: Colors.white,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: colour2 ? Color(0xFF1D1E40) : Color(0xFF1D1E90),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 170,
                    height: 200,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          colour1 = true;
                          colour2 = false;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 170,
                            color: Colors.white,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E40),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      overlayColor: Colors.red,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newh){
                      setState(() {
                        height=newh.round();
                      });
                        },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 170,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'WEIGHT',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.remove,
                                ),
                                onPressed: (){
                                setState(() {
                                  weight--;
                                });
                                }),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.add,
                                ),
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 170,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.remove,
                                ),
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.add,
                                ),
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Calc cal=Calc(height:height,weight:weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
                bm: cal.calcbmi(),
                res: cal.resu(),
                com: cal.comment(),
              )));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
