import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/body.dart';
import 'package:flutter_application_1/widgets/header.dart';

class class_first extends StatelessWidget {
  class_first({super.key});


  

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const class_header(), class_body()],
    );
  }
}
