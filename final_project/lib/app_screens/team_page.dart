import 'package:flutter/material.dart';

class DeveloperTeam extends StatefulWidget {
  const DeveloperTeam({super.key});

  @override
  State<DeveloperTeam> createState() => _DevoleperState();
}

class _DevoleperState extends State<DeveloperTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Developer Team',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color:Colors.white),
        ),        
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 220,),
              Text("Marina Malak Mazoz",style: TextStyle(color: Color.fromARGB(255, 140, 6, 145),fontSize: 27, fontWeight: FontWeight.bold),),
              SizedBox(height: 35,),
              Text("Zeina Esam Zyada",style: TextStyle(color:Color.fromARGB(255, 140, 6, 145),fontSize: 27, fontWeight: FontWeight.bold),),
            ],    
          ),
        ),
      ),
    );
  }
}