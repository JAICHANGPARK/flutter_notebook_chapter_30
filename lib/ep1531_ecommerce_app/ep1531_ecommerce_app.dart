import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1531_ecommerce_app/view/ecommerce_login_page.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: EcommerceLoginPage(),
    );
  }
}
