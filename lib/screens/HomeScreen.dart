
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
        super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3333),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Text('Question goes here',style: TextStyle(color: Color(0xFF0E8388),fontSize: 30),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('True'),style: ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(500, 50)),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){}, child: Text('False'),style: ElevatedButton.styleFrom(primary: Colors.redAccent,fixedSize: Size(500, 50)),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
