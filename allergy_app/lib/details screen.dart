import "package:flutter/material.dart";
class AdviceForUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADVICE~"),
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Text("please stay home")
          )
      ),
    );
  }
}