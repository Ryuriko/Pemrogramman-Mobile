import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    const title = "Data Product";

    List<String> items;
    items = [
      'Telor',
      'Beras',
      'Pepsodent',
      'GIV',
      'Lifebuoy',
      'Indomie Goreng',
      'Sedap Ayam Bawang',
      'Emeron',
      'Head & Shouders',
      'Pantene',
      'Beras Ketan',
      'Minyak',
      'Gula'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
