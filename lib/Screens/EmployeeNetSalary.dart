import 'package:flutter/material.dart';
class EmployeeNetSalary extends StatefulWidget {
  const EmployeeNetSalary({Key? key}) : super(key: key);

  @override
  State<EmployeeNetSalary> createState() => _EmployeeNetSalaryState();
}

class _EmployeeNetSalaryState extends State<EmployeeNetSalary> {
  TextEditingController _name = TextEditingController();
  TextEditingController _salary = TextEditingController();

  var da = "";
  var hra = "";
  var pt = "";
  var netsalary = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee net salary"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",style: TextStyle(fontSize: 20.0,color: Colors.brown),),
            TextField(onTap: () {},
              controller: _name,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            Text("Salary",style: TextStyle(fontSize: 20.0,color: Colors.brown),),
            TextField(onTap: () {},
              controller: _salary,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            Center(
              child: ElevatedButton(onPressed: (){
                setState(() {
                  int basic_salary = int.parse(_salary.text);
                  print(basic_salary);
                  double ptfund = basic_salary*14/100;
                  pt = ptfund.toString();
                  double dafund = basic_salary*3/100;
                  da = dafund.toString();
                  double hrafund = basic_salary*2/100;
                  hra = hrafund.toString();
                  double employeenetsalary = basic_salary + ptfund +dafund + hrafund ;
                  netsalary = employeenetsalary.toString();
                });


              },
                  child: Text("Genrate")),
            ),

            SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.greenAccent),
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
                        Text(
                          "Name:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          _name.text,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Salary:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          _salary.text,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hra fund:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          hra,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Da fund:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          da,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pt fund:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          pt,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Net Salary:",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                        Text(
                          netsalary,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.green),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
