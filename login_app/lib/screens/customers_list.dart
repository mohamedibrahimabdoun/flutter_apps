import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Customers_list());
}

class Customers_list extends StatelessWidget {
  final List<String> items = ['Customer1', 'Customer1', 'Customer3'];

  @override
  Widget build(BuildContext context) {
    final title = 'Customer List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
