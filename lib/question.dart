import 'package:flutter/material.dart';
import 'package:quiz_app/storeque.dart';
class que extends StatefulWidget {
  const que({super.key});

  @override
  State<que> createState() => _queState();
}

class _queState extends State<que> {
  List question=[
    Quiz(ques: "cat is an animal",ans: true),
    Quiz(ques: "spider have eight legs",ans: true),
    Quiz(ques: "Panaji is the capital of Assam",ans: false),
    Quiz(ques: "car have 4 wheels",ans: true),
    Quiz(ques: "india has 35 states",ans: false),
    Quiz(ques: "125 is greater than 200",ans: false),
    Quiz(ques: " India is the largest country in the world",ans: false),
    Quiz(ques: "keerthana is a student",ans: false),
    Quiz(ques: "lakshmi is a comdeian",ans: false),
    Quiz(ques: "parrot is an animal",ans: false),


  ];
  int q=0;
  String result="";
  void nextQus(){
    setState(() {
      if(q<question.length){
        q++;
      }
    });
  }
  void check(bool name){
    print(name);
    if(name==question[q].ans){
     result='correct';
    }
    else{
    result= "wrong";
    };

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 50,
            ),
            Text(
            question[q].ques,
            style: TextStyle(fontSize: 28,color: Colors.white,fontStyle: FontStyle.italic),),
            SizedBox(height: 50,),

            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.grey,foregroundColor: Colors.white),
                    onPressed: (){check(true); nextQus();}, child: Text('true'))),
            SizedBox(height: 50,),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.brown,foregroundColor: Colors.white),
                    onPressed: (){check(false);nextQus();}, child: Text('false'))),
            Text(result,
              style: TextStyle(fontSize: 28,color: Colors.white),),
          ],
        ),
      ),

    );
  }
}
