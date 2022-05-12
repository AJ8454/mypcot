import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFDAE86),
      body: Center(child: Text('Customers')),
    );
  }
}
