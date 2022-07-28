import 'package:flutter/material.dart';
//step 5
import 'package:provider/provider.dart';
import 'package:routing/providers/count_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      //step 6
      body: Text('Learn Flutter:${context.watch<Counter>().count}'),
    ));
  }
}
