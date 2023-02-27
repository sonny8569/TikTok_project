import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_project/constants/gaps.dart';
import 'package:tiktok_project/constants/sizes.dart';

class EmailScreen extends StatelessWidget{
  const EmailScreen({super.key});

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
            children: const [
              Gaps.v40,
          Text("Create UserName" , style:TextStyle(
            fontSize: Sizes.size24,
            fontWeight: FontWeight.w700,
           ),
          ),
          Gaps.v8,
          Text("you can always chane this later" , style:TextStyle(
            fontSize: Sizes.size16,
            color : Colors.black54,
          ),
          ),
        ]),
      ),
    );
  }
}