 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itmes extends StatefulWidget {
  @override
  _ItmesState createState() => _ItmesState();
}

class _ItmesState extends State<Itmes> {
  List<String>Items=["Basse opticlean Cyclonic","Basse opticlean Cyclonic","Basse opticlean Cyclonic","Basse opticlean Cyclonic","Basse opticlean Cyclonic","Basse opticlean Cyclonic","Basse opticlean Cyclonic"];
  List<String>Qty=['Qty : 40','Qty : 40','Qty : 40','Qty : 40','Qty : 40','Qty : 40','Qty : 40','Qty : 40'];
  List<String>buy=['Buying Price: S300.00','Buying Price: S300.00','Buying Price: S300.00','Buying Price: S300.00','Buying Price: S300.00','Buying Price: S300.00','Buying Price: S300.00'];
  List<String>Sell=['Selling Price : S320.00','Selling Price : S320.00','Selling Price : S320.00','Selling Price : S320.00','Selling Price : S320.00','Selling Price : S320.00','Selling Price : S320.00'];
  List<String>Desc= ['items Description','items Description','items Description','items Description','items Description','items Description','items Description'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,
          color: Colors.white,
          size: 20,
        ),
        title: Text(
          'Category',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight:FontWeight.bold),
        ),
        backgroundColor: Colors.red,

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: double.infinity,
                child: Container(
                  height: 50,
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Search by Items',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(itemBuilder: (_,int index)=>listitme(this.Items[index],this.Qty[index],this.buy[index],this.Sell[index],this.Desc[index]),
                  itemCount: this.Items.length,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),

    );
  }
}


class listitme extends StatelessWidget {
  String ItemName;
  String Qty;
  String BuyingPrice;
  String SellingPrice;
  String Description;

  listitme(this.ItemName, this.Qty,this.BuyingPrice,this.SellingPrice, this.Description);



  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3.0,
      child:Container(
        margin: EdgeInsets.all(9),
        padding: EdgeInsets.all(6),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('images/Image.png', height: 80.0,width: 100,),
                  Text(
                          ItemName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),

                  IconButton(icon: Icon(Icons.more_vert),iconSize: 30, onPressed:(){})

                ],
              ),
              Column(
                    children: <Widget>[
                      Text(
                        Qty,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),
                      ),
                      Text(
                        BuyingPrice,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),
                      ),
                      Text(
                        SellingPrice,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),
                      ),
                      Text(
                        Description,style: TextStyle(color: Colors.grey.shade600,fontSize: 20),
                      ),

                    ],
                  )





            ],
          ),
        ),
      )
    );
  }
}

