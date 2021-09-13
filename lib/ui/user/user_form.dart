import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/utils/Custom_TextFormField.dart';
import 'package:flutter_first_app_balcoder/utils/Custom_container.dart';

class UserFormPage extends StatefulWidget {
  const UserFormPage({Key? key}) : super(key: key);

  @override
  _UserFormPageState createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerEmail;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controllerName = new TextEditingController(text: "");
    _controllerEmail = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * 0.05;
    double _width = MediaQuery.of(context).size.width * 0.65;

    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            Spacer(),
            Container(
              child: Custom_TextFormField(
                NameForm: "User Name",
                NameVar: _controllerName,
              ),
            ),
            Container(
              child: Custom_TextFormField(
                NameForm: "User Email",
                NameVar: _controllerEmail,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("User Name: " + _controllerName.text);
                print("User Email: " + _controllerEmail.text);
              },
              child: CustomContainer(
                titleText: "Add User",
                sizeHeight: _height * 1,
                sizeWidth: _width * 0.65,
                color: Colors.green,
              ),
            ),
            Spacer(),
          ],
        )),
      ),
    );
  }
}
