import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newdemo/component/drawer.dart';
import 'package:newdemo/component/itemwidget.dart';
import 'package:newdemo/models/catelog.dart';
import '../pages/login_page.dart';

class WelcomePage extends StatefulWidget {
  final String name;
  const WelcomePage({super.key, required this.name});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogjson = await rootBundle.loadString("assets/files/catelog.json");
    // print(catelogjson);
    var decodeddata = jsonDecode(catelogjson);
    var cateloglist = decodeddata["products"];
    print(cateloglist[0]);
  }

  Widget build(BuildContext context) {
    final dummy = List.generate(5, (index) => CatalogModel().products[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agri Tips"),
        // backgroundColor: Color.fromARGB(255, 94, 231, 110),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.home_outlined,
        //     size: 40,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     //goes to home page
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => LoginPage(),
        //       ),
        //     );
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              size: 30,
              // color: Colors.black,
            ),
            onPressed: () {
              //goes to home page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
      // );
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: dummy.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummy[index],
              );
            }),
      ),
      //  Center(
      //   child: Center(
      //     child: Text(
      //       'Welcome, ${widget.name}!',
      //       style: TextStyle(fontSize: 24),
      //     ),
      //   ),
      // ),
      drawer: const MyDrawer(),
    );
  }
}
