
import 'package:flutter/material.dart';
import 'package:trivia_app/qbank.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List quests=[
    Quiz(question: "The Great Wall of China is visible from space.", answer: false)
    ,Quiz(question: "Mount Everest is the tallest mountain on Earth.", answer: false)
    ,Quiz(question: "The Eiffel Tower is located in Paris.", answer: true)
    ,Quiz(question: "The Amazon rainforest is in South America.", answer: true)
    ,Quiz(question: "The Great Barrier Reef is a single coral reef.", answer: false)
    ,Quiz(question: "Venus is the closest planet to Earth.", answer: false)
    ,Quiz(question: "The Nile River flows through Egypt.", answer: true)
    ,Quiz(question: "The Sahara Desert is the largest hot desert in the world.", answer: true)
    ,Quiz(question: "The Great Pyramid of Giza was built by the Pharaoh Khufu.", answer: true)
    ,Quiz(question: "The Grand Canyon was formed by a volcanic eruption.", answer: false)];
  int qsnNo=0;
  bool? stat;
  Icon? stat_icon;
   void nextQsn(bool clickstat){
     if(clickstat==quests[qsnNo].answer)
       stat_icon=Icon(Icons.done);
     else
       stat_icon = Icon(Icons.clear);
     setState((){
     if(qsnNo<quests.length-1){
       qsnNo++;
     }});
   }
  // String getQns(){
  //   return
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3333),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Text(quests[qsnNo].question,style: TextStyle(color: Color(0xFF0E8388),fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){nextQsn(true);}, child: Text('True'),style: ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(500, 50)),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){nextQsn(false);}, child: Text('False'),style: ElevatedButton.styleFrom(primary: Colors.redAccent,fixedSize: Size(500, 50)),),
                ],
              ),
            ),
            ListView.builder(physics: const NeverScrollableScrollPhysics(),shrinkWrap: true,scrollDirection:Axis.horizontal,itemBuilder: (context,index){return Container(height:10,width: 10,color: Colors.amber,);},itemCount: quests.length,),
          ],
        ),
      ),
    );
  }
}
