import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_project/constants/gaps.dart';
import 'package:tiktok_project/constants/sizes.dart';

class UserNameScreen extends StatefulWidget{
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}


class _UserNameScreenState extends State<UserNameScreen> {
  final TextEditingController _usernameController = TextEditingController();
  String _userName = "";

  @override
  void initState() {
    super.initState();
    _usernameController.addListener((){
      setState(() {
        _userName = _usernameController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title : const Text("Sign Up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(

            horizontal :Sizes.size36),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Gaps.v40,
              Text("Create UserName" , style:TextStyle(
                fontSize: Sizes.size24,
                fontWeight: FontWeight.w700,
              ),
              ),
              Gaps.v8,
              Text("You can always chane this later" , style:TextStyle(
                fontSize: Sizes.size16,
                color : Colors.black54,
                ),
              ),
              Gaps.v8,
              TextField(
                controller: _usernameController,
                decoration:  InputDecoration(
                  hintText: "Username",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color : Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color : Colors.grey.shade400,
                    ),
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
              ),
              Gaps.v16,
              FractionallySizedBox(
                widthFactor: 1,
                child: AnimatedContainer(
                  padding:EdgeInsets.symmetric(vertical: Sizes.size16) ,
                  decoration: BoxDecoration(
                    color: _userName.isEmpty ? Colors.grey.shade300 : Theme.of(context).primaryColor,
                    borderRadius:  BorderRadius.circular(Sizes.size5),
                  ),
                  child: Text('Next' ,
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.white,
                     fontWeight: FontWeight.w600),
                    ),
                  duration: Duration(microseconds:500),
                ),
              ),
            ]),
      ),
    );
  }
}