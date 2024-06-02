import 'package:flutter/material.dart';
import 'package:newdemo/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Image.network(item.image),
            title: Text(item.name),
            subtitle: Text(item.desc),
            trailing: ElevatedButton(
                onPressed: () {
                  print("buy1");
                },
                child: Text(
                  "Buy",
                  // style: TextStyle(color: Colors.green[100]),
                )),
            // trailing: Text(
            //   '\RS ${item.price}',
            //   // style: TextStyle(color: Colors.blue),
            // ),
            // textColor: Color.fromARGB(255, 20, 20, 20),
            tileColor: Color.fromARGB(255, 173, 225, 152),
          ),
        ],
      ),
    );
  }
}
