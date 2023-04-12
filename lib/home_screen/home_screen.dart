import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text("Hoofboot Academy",
        style: TextStyle(
            color: Colors.black
        ),
        ),
        backgroundColor: Colors.grey.shade200,

      ),
      drawer: Drawer(
        child: ListView(
          children: const [
           DrawerHeader(
                child: Text("Menu",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                  ),
                )
            )

          ],
        ),

      ),
      backgroundColor: Colors.grey.shade200,
      // body: ,
    );
  }
}
