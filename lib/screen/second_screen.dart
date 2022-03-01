import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstatemanagement/providers/counter_providers.dart';

import '../providers/shopping_card.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Provider ${context.watch<Counter>().count}"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${context.watch<ShoppingCard>().count}"),
            Text("${context.watch<ShoppingCard>().cart}")
              // Count(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => context.read<ShoppingCard>().addIteam('shirt'),
        child: Icon(Icons.add),

      ),
    );
  }
}
