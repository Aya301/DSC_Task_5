import 'package:flutter/material.dart';
import 'package:task_5/main.dart';
class card extends StatefulWidget {
  card({Key key,this.title}):super(key: key);
  final String title;
  @override
  _cardState createState()=> _cardState();
}
class _card extends StatefulWidget{
  @override
  _cardState createState()=> _cardState();
}
class _cardState extends State<card>{
  List number = ['1','2','3','4','5'];
  String valueChoose;
//class card extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Restaurant Menu", style: TextStyle(fontSize: 20),),
        leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));} ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children:[
              Padding(padding: EdgeInsets.only(top: 20)),
              Card(
                child: Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child:Row(
                        children:[
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 0,top: 10)),
                              Image.asset('image/image1.jpg',height: 130,width: 300,),
                              Padding(padding: EdgeInsets.only(left: 0,top: 5)),
                              Text('Burger',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                                DropdownButton(
                                  hint: Text('N'),
                                  value:valueChoose ,
                                  onChanged: (newvalue){
                                  setState(() {
                                    valueChoose = newvalue;
                                  });
                                  },
                                  items: number.map((valuenumber){
                                    return DropdownMenuItem(
                                      value: valuenumber,
                                      child: Text(valuenumber),);
                                  }).toList(),
                                ),
                          //
                          // ),
                        ]
                    ),
                ),
              ),
              Card(
                child: Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child:Row(
                        children:[
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 0,top: 10)),
                              Image.asset('image/image2.jpg',height: 130,width: 300,),
                              Padding(padding: EdgeInsets.only(left: 0,top: 5)),
                              Text('Spaghetti',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          DropdownButton(
                            hint: Text('N'),
                            value:valueChoose ,
                            onChanged: (newvalue){
                              setState(() {
                                valueChoose = newvalue;
                              });
                            },
                            items: number.map((valuenumber){
                              return DropdownMenuItem(
                                value: valuenumber,
                                child: Text(valuenumber),);
                            }).toList(),
                          ),
                        ]
                    )
                  // child: Text('Meal'),
                  //
                ),
              ),
              Card(
                child: Container(
                    width: 350,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child:Row(
                        children:[
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 0,top: 10)),
                              Image.asset('image/image3.jpg',height: 130,width: 300,),
                              Padding(padding: EdgeInsets.only(left: 0,top: 5)),
                              Text('Cake',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          DropdownButton(
                            hint: Text('N'),
                            value:valueChoose ,
                            onChanged: (newvalue){
                              setState(() {
                                valueChoose = newvalue;
                              });
                            },
                            items: number.map((valuenumber){
                              return DropdownMenuItem(
                                value: valuenumber,
                                child: Text(valuenumber),);
                            }).toList(),
                          ),
                        ]
                    )
                ),
              ),
            ]
        ),
      ),
    );
  }
}
