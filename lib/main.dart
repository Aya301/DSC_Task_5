import 'package:flutter/material.dart';
import 'package:task_5/cards.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signin(),
  ));
}
class Signin extends StatefulWidget {
  Signin({Key key,this.title}):super(key: key);
  final String title;
  @override
  _SigninState createState()=> _SigninState();
}
class _Signin extends StatefulWidget{
  @override
  _SigninState createState()=> _SigninState();
}
class _SigninState extends State<Signin>{
  bool hide = true;
  GlobalKey<FormState> formkey=  GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
      print("validated");
    }else{
      print("Not Validated");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Center(
          child:Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Text('Sign Up',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                child: TextFormField(decoration: InputDecoration(
                  icon: Icon(Icons.person_pin,color: Colors.deepPurple),
                  hintText: "User Name",
                  border: InputBorder.none,
                ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Required';
                    }else{
                      return null;
                    }
                  },
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: 350,
                height: 50,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(29),),
              ),
              Text('Required',style: TextStyle(color: Colors.white70),),
              Container(
                child: TextField(decoration: InputDecoration(
                  icon: Icon(Icons.email_sharp,color: Colors.deepPurple,),
                  hintText: "Email",
                  border: InputBorder.none,
                ),),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: 350,
                height: 50,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(29),),
              ),
              Text('Required',style: TextStyle(color: Colors.white70,),),

              Container(
                child: TextField(
                  obscureText: hide,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,color: Colors.deepPurple),
                    suffixIcon:InkWell(
                      onTap: _passord,
                      child: Icon(Icons.visibility,color:Colors.deepPurple ),
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                width: 350,
                height: 50,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(29),),
              ),
              Text('Required',style: TextStyle(color: Colors.white70),),
              Padding(padding: EdgeInsets.only(top: 50),),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>card(),),);}
                  // validate
                  , child: Text('CREATE ACCOUNT',
                    style: TextStyle(fontSize: 20),)
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
  void _passord(){
    setState(() {
      hide = !hide;
    });
  }
}

