import 'package:flutter/material.dart';
class TextfieldTask2 extends StatefulWidget {
  const TextfieldTask2({Key? key}) : super(key: key);

  @override
  State<TextfieldTask2> createState() => _TextfieldTask2State();
}

class _TextfieldTask2State extends State<TextfieldTask2> {
  String ResultcalculateAdd = '0';
  String Resultcalculatesub = '0';
  String Resultcalculatemulti = '0';
  String Resultcalculatediv = '0';
  TextEditingController _number1 = TextEditingController();
  TextEditingController _number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: Text("Calculater"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("number1",style: TextStyle(fontSize: 20.0,color: Colors.brown),),
            TextField(onTap: () {},
              controller: _number1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ),),
            SizedBox(height: 25.0,),
            Text("number2",style: TextStyle(fontSize: 20.0,color: Colors.brown),),
            TextField(onTap: () {},
              controller: _number2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            SizedBox(height: 25.0,),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    int result = int.parse(_number1.text) + int.parse(_number2.text);
                    ResultcalculateAdd = result.toString();
                  });

                }, child: Text("+")),
                SizedBox(width: 25.0,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    int result = int.parse(_number1.text) - int.parse(_number2.text);
                    Resultcalculatesub = result.toString();
                  });
                  }, child: Text("-")),
                SizedBox(width: 25.0,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    int result = int.parse(_number1.text) * int.parse(_number2.text);
                    Resultcalculatemulti = result.toString();
                  });
                  }, child: Text("*")),
                SizedBox(width: 25.0,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    double result = double.parse(_number1.text) / double.parse(_number2.text);
                    Resultcalculatediv = result.toString();
                  });

                }, child: Text("/")),
              ],
            ),
            SizedBox(height: 25.0,),
            Center(
              child: Container(
                width: 200.0,
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
                          Text("Addition:",style: TextStyle(fontSize: 20.0,color: Colors.green),),
                          Text(ResultcalculateAdd,style: TextStyle(fontSize: 20.0,color: Colors.green),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Subtraction:",style: TextStyle(fontSize: 20.0,color: Colors.green),),
                          Text(Resultcalculatesub,style: TextStyle(fontSize: 20.0,color: Colors.green),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Multiplication:",style: TextStyle(fontSize: 20.0,color: Colors.green),),
                          Text(Resultcalculatemulti,style: TextStyle(fontSize: 20.0,color: Colors.green),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Diviton:",style: TextStyle(fontSize: 20.0,color: Colors.green),),
                          Text(Resultcalculatediv,style: TextStyle(fontSize: 20.0,color: Colors.green),),
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
