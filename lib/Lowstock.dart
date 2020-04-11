import 'package:flutter/material.dart';

class Lowstocks extends StatefulWidget {
  @override
  _LowstocksState createState() => _LowstocksState();
}

class _LowstocksState extends State<Lowstocks> {
  List<String>Itemname = ['Item Name','Item Name','Item Name','Item Name','Item Name'];
  List<String>TotalItems =['10 Items Remaining','22 Items Remaining','42 Items Remaining','55 Items Remaining','96 Items Remaining'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        backgroundColor: Colors.red,
        title: Text(
          'Low Stock',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(itemBuilder: (_,int index)=> Stockitems(this.Itemname[index],this.TotalItems[index]),
                  itemCount: this.Itemname.length,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
class Stockitems extends StatelessWidget {
  String Itemname;
  String TotalItmes;

  Stockitems(this.Itemname,this.TotalItmes);



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        margin: EdgeInsets.all(9),
        padding: EdgeInsets.all(6),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(Itemname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(TotalItmes,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}

