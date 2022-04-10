
import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
      ),
      body: Container(
        color: Colors.green.shade100,
        child: Container(

          padding: EdgeInsets.only(
            top: 200,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: [
              Center(
                child: SizedBox(

                  width: 128,
                  height: 128,
                  child: Image.asset("assets/fishlogin.png"),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: Text(
                    "Infoquário",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "VERSÃO 1.0.0",
                  style: TextStyle(
                    color: Colors.green.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
