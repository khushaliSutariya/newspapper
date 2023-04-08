import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var group = 'M';
  var selected = "i1";
  bool _isChecked = false;

  var fullname = "";
  var mobileno = "";
  var password = "";
  var gender = "";
  var state = "";
  var ans = "";

  _handleRadio(val) {
    setState(() {
      group = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.purple.shade100),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5.0,
                color: Colors.green.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        "img/userlogo.jpg",
                        width: 100.0,
                        height: 100.0,
                      )),
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.length <= 0) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                        controller: _name,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Mobile No",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter mobile number";
                          } else if (value.length != 10) {
                            return "Please enter your valid number";
                          }
                          return null;
                        },
                        controller: _phone,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter New Password";
                          } else if (value!.length < 8) {
                            return "Password must be atleast 8 characters long";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        controller: _password,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Gender: ",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Radio(
                            value: "M",
                            groupValue: group,
                            onChanged: _handleRadio,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Radio(
                            value: "F",
                            groupValue: group,
                            onChanged: _handleRadio,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "State:",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade300, //<-- SEE HERE
                              ),
                              child: DropdownButton(
                                  value: selected,
                                  items: [
                                    DropdownMenuItem(
                                        child: Text("Gujrati"), value: "i1"),
                                    DropdownMenuItem(
                                        child: Text("Maharastra"), value: "i2"),
                                    DropdownMenuItem(
                                        child: Text("Panjab"), value: "i3"),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selected = value!;

                                      return null;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: _isChecked,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked = val!;
                                  // if(_isChecked==true){
                                  //   ans = "submited";
                                  // }
                                  // else{
                                  //   ans = "please fill ditail";
                                  // }
                                });
                              }),
                          RichText(
                            text: TextSpan(
                                text: "I accent",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.red.shade200),
                                children: [
                                  TextSpan(
                                      text: "Torm's and Condition",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.purple)),
                                ]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(ans),
                        ],
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              gender = group;
                              if (selected == "i1") {
                                state = "GJ";
                              } else if (selected == "i2") {
                                state = "MH";
                              } else if (selected == "i3") {
                                state = "PB";
                                state = "PB";
                              }
                              if (_isChecked== true) {
                                setState(() {
                                  if (formkey.currentState!.validate()) {
                                    var nm = _name.text.toString();
                                    fullname = nm;
                                    print("Name : " + nm);
                                    var pass = _password.text.toString();
                                    print("pass : " + pass);
                                    password = pass;
                                    var phone = _phone.text.toString();
                                    print("phone : " + phone);
                                    mobileno = phone;
                                  }

                                });
                              } else {
                                ans = "please fill detail";
                              }

                              _name.text = '';
                              _phone.text = '';
                              _password.text = '';
                            },
                            child: Text("Submit")),
                      ),

                      Center(
                        child: Container(
                          width: 250.0,
                          height: 150.0,
                          child: Card(
                            color: Colors.redAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Name: " + fullname,
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                  Text(
                                    "Mobile No: " + mobileno,
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                  Text(
                                    "Password: " + password,
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                  Text(
                                    "Gender: " + gender,
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                  Text(
                                    "State: " + state,
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
