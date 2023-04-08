import 'package:flutter/material.dart';

class studentResult extends StatefulWidget {
  const studentResult({Key? key}) : super(key: key);

  @override
  State<studentResult> createState() => _studentResultState();
}

class _studentResultState extends State<studentResult> {
  String ResultcalculateAdd = '0';
  String prgData = "0";
  int prg = 100;
  int Total = 300;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _RollNo = TextEditingController();
  TextEditingController _Name = TextEditingController();
  TextEditingController _Maths = TextEditingController();
  TextEditingController _Science = TextEditingController();
  TextEditingController _English = TextEditingController();
  TextEditingController _Persantage = TextEditingController();
  TextEditingController _Class = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: Text("Student Result"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Roll No.",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _RollNo,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _Name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Maths",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _Maths,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Science",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _Science,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "English",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _English,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Persantage",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _Persantage,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Class",
                  style: TextStyle(fontSize: 20.0, color: Colors.brown),
                ),
                TextFormField(
                  onTap: () {},
                  controller: _Class,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                    child:
                    ElevatedButton(onPressed: () {
                      setState(() {
                        int result = int.parse(_Maths.text) + int.parse(_Science.text)+
                            int.parse(_English.text);
                        ResultcalculateAdd = result.toString();
                        double pr = result * prg / Total;
                        prgData = pr.toString();
                        print(prgData);
                      });
                    }, child: Text("Result"))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120.0,
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
                              "Total:",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.green),
                            ),
                            Text(
                              ResultcalculateAdd,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.green),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "parsantage:",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.green),
                            ),
                            Text(
                              prgData,
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
        ),
      ),
    );
  }
}
