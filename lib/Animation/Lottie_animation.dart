import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(
    home: lottie_animation(),
    debugShowCheckedModeBanner: false,
  ));
}
class lottie_animation  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       // child: Lottie.asset("Assets/Animations/animation.json",height: 200,width: 200),
        child: Lottie.network("https://lottie.host/6f2b5838-e929-44ce-981e-7d0a073412cd/yiDsWOGOOo.json"),
      ),
    );
  }
}