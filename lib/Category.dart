import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  final List<String>listof=["Laptop","Cosmatics","Cameras","Cloths","Toys","Mobile Phone","Electronic Accessries"];
  final List<String>items=["Items : 100","Items : 200","Items : 50","Itmes : 100","Items : 50","Items : 200","Items : 100"];
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
      body:
         Container(
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
                         labelText: 'Search by category',
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
                   child:ListView.builder(itemBuilder: (_,int index)=>ListItmes(this.listof[index],this.items[index]),
                     itemCount: this.listof.length,
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
 class ListItmes extends StatelessWidget {
  String Itemname;
  String TotalItmes;

  ListItmes(this.Itemname,this.TotalItmes);



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
 