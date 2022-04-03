import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

    final _form_key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _form_key,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "enter your email",
                ),

                validator: (val){

                  if(val!.isEmpty){
                    return "email can't be empty";
                  }
                  else if (val.length>5) {
                    return "can't be more than 5";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter your age",
                ),

                validator: (val){

                  if(val!.isEmpty){
                    return "age can't be empty";
                  }
                  else if (val.length>5) {
                    return "can't be more than 5";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter your phone",
                ),

                validator: (val){

                  if(val!.isEmpty){
                    return "phone   can't be empty";
                  }
                  else if (val.length>11) {
                    return "can't be more than 5";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if(_form_key.currentState!.validate()){
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_)=>SecondScreen()));
                  }
                },
                child: Text("Check"),
              ),



            ],
          ),
        ),
      )
    );
  }
}
