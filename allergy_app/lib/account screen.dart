import "package:flutter/material.dart";
class UserInfoPage extends StatelessWidget {
  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR INFORMATION"),
      ),
      body: UserInfoForm(),
    );

  }

}
class UserInfoForm extends StatefulWidget {
  @override
  _UserInfoFormState createState( ) => _UserInfoFormState( );

}
class _UserInfoFormState extends State<UserInfoForm> {
  @override
  Widget build( BuildContext context ) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  TextField(
                    decoration: InputDecoration(labelText:"name:"),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText:"age:"),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText:"month:"),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText:"location:"),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText:"asthma:"),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(labelText:"smoking:"),
                  ),

                  SizedBox(height: 20),
                  TextButton(
                    child:Text("save"),
                    onPressed: () {

                    },
                  )
                ]
            )
        )
    );
  }
}
