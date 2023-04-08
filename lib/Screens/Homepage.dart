import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Newspappar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/News1.jpg'),
                  Text("News1",style: TextStyle(fontSize: 25.0,fontFamily: 'PlayfairDisplay'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'PlayfairDisplay'),),
                ],
              ),
            ),


            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News2.jpg'),
                  Text("News2",style: TextStyle(fontSize: 25.0,fontFamily: 'RobotoCondensed'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'RobotoCondensed'),),
                ],
              ),
            ),


            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News3.jpg'),
                  Text("News3",style: TextStyle(fontSize: 25.0,fontFamily: 'RobotoMono'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'RobotoMono'),),
                ],
              ),
            ),



            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News4.jpg'),
                  Text("News4",style: TextStyle(fontSize: 25.0,fontFamily: 'Oswald'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'Oswald'),),
                ],
              ),
            ),


            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News5.jpg'),
                  Text("News5",style: TextStyle(fontSize: 25.0,fontFamily: 'RobotoMono'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'RobotoMono'),),
                ],
              ),
            ),


            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News6.jpg'),
                  Text("News6",style: TextStyle(fontSize: 25.0,fontFamily: 'RobotoMono'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'RobotoMono'),),
                ],
              ),
            ),


            Card(
              elevation: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      'assets/image/News7.jpg'),
                  Text("News7",style: TextStyle(fontSize: 25.0,fontFamily: 'Oswald'),),
                  Text("RBI lifts restrictions imposed on Mahindra Financ Based on the submissions made by the company and its commitment to strengthen its recovery practices and outsourcing arrangements, tighten the process of onboarding third party agents and strengthen accountability framework as per its Board approved action plan, the RBI has informed the company of its decision to lift the restrictions.",
                    style: TextStyle(fontSize: 12.0,fontFamily: 'Oswald'),),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
