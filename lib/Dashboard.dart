import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saleapp/Category.dart';
import 'package:saleapp/Check.dart';
import 'package:saleapp/Lowstock.dart';
import 'package:saleapp/items.dart';

import 'package:syncfusion_flutter_charts/charts.dart';



class Deshboard extends StatefulWidget {
  @override
  _DeshboardState createState() => _DeshboardState();
}

class _DeshboardState extends State<Deshboard> {
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget Cards(image, title, code) {
    return GestureDetector(
        onTap: () {
          switch (title) {
            case "items":
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Itmes()));
             break;
            case "category":
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => category()));
              break;
            case "New worth":
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
              break;
            case "Quantity":
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ApplayLone()));
              break;
          }
        },
        child: Container(
          height: 300,
          width: 200,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4.0,
                )
              ],
              color: Colors.white
          ),
          child: Center(
            child: Column(
                children: <Widget>[
                  Text(title,
                    style: TextStyle(color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Column(
                    children: <Widget>[
                      Text(code,
                        style: TextStyle(color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Image.asset('images/items.png', height: 80.0,),
                    ],
                  ),
                ]
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Dashboard', style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,

      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.red,),
              title: Text(
                'Dashboard', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.content_paste, color: Colors.red,),
              title: Text(
                'CheckList', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Checklist()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category, color: Colors.red,),
              title: Text(
                'Category', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.red,),
              title: Text(
                'Salehistory', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store, color: Colors.red,),
              title: Text(
                'lowstock', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Lowstocks()));
              },
            ),
            ListTile(
              leading: Icon(Icons.report, color: Colors.red,),
              title: Text(
                'Anykatic and reports', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.last_page, color: Colors.red,),
              title: Text(
                'Logout', style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              onTap: (){},
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Container(

                  height:300,
                  width: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(5,5),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child:SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(),
                    series:<ChartSeries>[
                      ColumnSeries<saleData,String>(
                        dataSource: getColumnData(),
                        xValueMapper: (saleData sale,_)=>sale.x,
                        yValueMapper: (saleData sale,_)=>sale.y,

                      ),

                    ],
                  ),


                ),
              ),
            ),
            Expanded(
              child: Container(

                  child:GridView.count(crossAxisCount: 2,
                    children: <Widget>[


                      Container(
                        height: 100,
                        width: 100,
                        child: Cards('images/items.png', 'items','900'),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        child: Cards('images/items.png', 'category','90'),
                      ),


                      Container(
                        height: 100,
                        width: 100,
                        child: Cards('images/items.png', 'Quantity','13000'),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        child: Cards('images/items.png', 'North Wind','1M'),
                      ),
                    ],
                  ),


                ),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                        ),
                      ],
                      color: Colors.white
                  ),
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('images/images.jpg'),
                        ListTile(
                          title: Text('Lenove'),
                          subtitle: Text('IdeaPad3000'),
                          trailing: Text('30 Qty'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                        ),
                      ],
                      color: Colors.white
                  ),
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('images/images.jpg'),
                        ListTile(
                          title: Text('Lenove'),
                          subtitle: Text('IdeaPad3000'),
                          trailing: Text('30 Qty'),
                        )
                      ],
                    ),
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}

class saleData{
  String x;
  double y;
  saleData(this.x,this.y);
}
dynamic getColumnData(){
  List<saleData> columnData = <saleData>[
    saleData('Jan',100000),
    saleData('Mar',50000),
    saleData('May',90000),
    saleData('Jul',60000),
    saleData('Sep',80000),
    saleData('Nov',40000),
  ];
  return columnData;
}

