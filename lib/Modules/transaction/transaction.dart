import 'package:flutter/material.dart';

class transaction extends StatefulWidget {
  const transaction({super.key});

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Transaction'),
                  Icon(Icons.filter_alt_rounded),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
