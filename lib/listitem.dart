import 'package:flutter/material.dart';

abstract class Listitem {
  Widget btitle(BuildContext context);
  Widget bsub(BuildContext context);
}

class Headingitem implements Listitem {
  final String heading;
  Headingitem(this.heading);

  @override
  Widget btitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(color: Colors.blue, fontSize: 24),
    );
  }

  @override
  Widget bsub(BuildContext context) => const SizedBox.shrink();
}

class Messageitem implements Listitem {
  final String sender;
  final String body;
  Messageitem(this.sender, this.body);

  @override
  Widget btitle(BuildContext context) => Row(
        children: [
          const Icon(Icons.message, size: 20),
          const SizedBox(width: 8),
          Text(sender),
        ],
      );

  @override
  Widget bsub(BuildContext context) => Text(body);
}

class Imageitem implements Listitem {
  final String title;
  final String imagePath;
  Imageitem(this.title, this.imagePath);

  @override
  Widget btitle(BuildContext context) => Text(title);

  @override
  Widget bsub(BuildContext context) => Image.asset(
        imagePath,
        height: 150,
        fit: BoxFit.cover,
      );
}

class llist extends StatelessWidget {
  const llist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'aset/img/chisiya.jpg',
      'aset/img/arisu.png'
    ];
    final List<String> msg = [
      'P, Mabar',
      'Infokan Ngopi',
      'Login -1 exp'
    ];

    final List<Listitem> items = List<Listitem>.generate(30, (i) {
      if (i % 5 == 0) {
        return Headingitem('Heading $i');
      } else if (i % 3 == 0) {
        final path = imagePaths[i % imagePaths.length];
        return Imageitem('Gambar $i', path);
      } else {
        final mes = msg[i % msg.length];
        return Messageitem('Sender $i', mes);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('List Item')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 2,
            child: ListTile(
              title: item.btitle(context),
              subtitle: item.bsub(context),
            ),
          );
        },
      ),
    );
  }
}