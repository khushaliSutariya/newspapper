
import 'package:flutter/material.dart';

class CalculationRadioButton extends StatefulWidget {
  const CalculationRadioButton({Key? key}) : super(key: key);

  @override
  State<CalculationRadioButton> createState() => _CalculationRadioButtonState();
}

class _CalculationRadioButtonState extends State<CalculationRadioButton> {
  TextEditingController _number1 = TextEditingController();
  TextEditingController _number2 = TextEditingController();
  var group = '+';
  var result="";

  _handleradio(val){
    setState(() {
      group=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CalculationRadioButton"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "number1",
              style: TextStyle(fontSize: 20.0, color: Colors.brown),
            ),
            TextField(
              onTap: () {},
              controller: _number1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Text(
              "number2",
              style: TextStyle(fontSize: 20.0, color: Colors.brown),
            ),
            TextField(
              onTap: () {},
              controller: _number2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Radio(value: "+", groupValue: group, onChanged: (val) {
                  _handleradio(val);
                  // group = add;
                },),
                Text("+"),
                Radio(value: "-", groupValue: group, onChanged: (val) {
                  _handleradio(val);
                  // group = sub;
                },),
                Text("-"),
                Radio(value: "*", groupValue: group,  onChanged: (val) {
                  _handleradio(val);
                  // group = multi;
                },),
                Text("*"),
                Radio(value: "/", groupValue: group,  onChanged: (val) {
                  _handleradio(val);
                  // group = div;
                },),
                Text("/"),
              ],
            ),
            Center(child: ElevatedButton(onPressed: (){
              setState(() {
                if(group=="+")
                  {
                    int addition = int.parse(_number1.text) + int.parse(_number2.text);
                    setState(() {
                      result = addition.toString();
                    });
                  }
                else if(group=="-")
                {
                  int addition = int.parse(_number1.text) - int.parse(_number2.text);
                  setState(() {
                    result = addition.toString();
                  });
                }
                else if(group=="*")
                {
                  int addition = int.parse(_number1.text) * int.parse(_number2.text);
                  setState(() {
                    result = addition.toString();
                  });
                }
                else
                  {
                    double addition = int.parse(_number1.text) / int.parse(_number2.text);
                    setState(() {
                      result = addition.toString();
                    });
                  }
              });
              }, child: Text("Submit"))),

            SizedBox(height: 25.0,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.greenAccent
                ),
                child: Card(
                  elevation: 10.0,
                  color: Colors.yellow.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Calculater = ' + result,),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
