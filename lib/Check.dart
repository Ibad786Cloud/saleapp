import 'package:flutter/material.dart';
class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();

}

class _ChecklistState extends State<Checklist> {
  List<String>Item = ['Lenove IdeaPad','Lenove IdeaPad','Lenove IdeaPad','Lenove IdeaPad'];
  List<String>Quty = ['Quantity','Quantity','Quantity','Quantity'];
  List<String>price = [ 'Price: S320','Price: S320','Price: S320','Price: S320'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),

        title: Text(
          'CheckList',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight:FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(itemBuilder: (_,int index)=>checklist(this.Item[index],this.Quty[index],this.price[index]),
                  itemCount: this.Item.length,
                ),
              ),
            ),
            Divider(
              height: 10,
              indent: 5.0,
              color: Colors.black,
            ),
            

          ],
        ),

      ),
    );
  }
}
class checklist extends StatelessWidget {
  String Itemname;
  String Quantity;
  String price;

  checklist(this.Itemname, this.Quantity, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/images.jpg', height: 80.0,width: 100,),
                  Text(
                    Itemname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ],
              ),

                
              
              Column(
                children: <Widget>[
                  Text(
                    Quantity,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),
                  ),
                  Text(
                    '4',style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        price,style: TextStyle(color: Colors.black,fontSize: 20),
                      ),
                    ],
                  )
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}



