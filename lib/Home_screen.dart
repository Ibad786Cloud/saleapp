import 'package:flutter/material.dart';
import 'package:saleapp/Dashboard.dart';

class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ),
        (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Deshboard()),);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'IMXpress',style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Point Of Sale System',style: TextStyle(color: Colors.white,
                fontSize: 16,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

    );
  }
}

