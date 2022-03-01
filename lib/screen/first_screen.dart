import 'package:flutter/material.dart';
import 'package:providerstatemanagement/providers/counter_providers.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App ${context.watch<Counter>().count}"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You jave pushed ${context.watch<Counter>().count}",
             // Count(),

            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
            child: Text("next Screen"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => context.read<Counter>().increment(),
        child: Icon(Icons.add),

      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: Key('counterState'),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
