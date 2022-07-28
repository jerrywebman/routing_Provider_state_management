import 'package:flutter/material.dart';
//step 4
import 'package:provider/provider.dart';
import 'package:routing/providers/count_provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
            context.read<Counter>().decrement();
          },
          child: const Text("Launch Screen"),
        ),
      ),
    ));
  }
}
