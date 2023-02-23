import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_project/constants/gaps.dart';
import 'package:tiktok_project/constants/sizes.dart';

class SignUpScreen extends StatelessWidget{
  const  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size40,
            ),
            child: Column(
            children : const [
              Gaps.v80,
            Text("Sign UP for TikTok",
              style: TextStyle(
                fontSize : Sizes.size24,
                fontWeight: FontWeight.w700,),),
            Gaps.v20,
            Text("Create a profile , follow other accounts , make your own videos , and more. ",
              style: TextStyle(
                fontSize: Sizes.size16,
                color:  Colors.black45,
              ),
            textAlign:TextAlign.center ,)
          ],
        ),
       ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        elevation: 1,
        child : Padding(
          padding: const EdgeInsets.symmetric(vertical:
            Sizes.size32),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Already have an account'),
            Gaps.h5,
            Text("Log in Now",
            style:TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor
            ) ,)
          ],),
        ),
      ),
      ),
    );
  }

}