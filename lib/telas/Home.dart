import 'package:flutter/material.dart';

import 'Bichos.dart';
import 'Numeros.dart';
import 'Vogais.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5e9b9),
      appBar: AppBar(
        title: Text("Aprenda inglês"),
        backgroundColor: Color(0xff795548),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: [
            Tab(text: "Bichos",),
            Tab(text: "Números",),
            Tab(text: "Vogais",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
