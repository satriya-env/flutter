import 'package:flutter/material.dart';

// Abstract class
abstract class Listitem {
  Widget btitle(BuildContext context);
  Widget bsub(BuildContext context);
}

// HeadingItem: teks biru dan besar
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

// MessageItem: ada ikon di depan nama pengirim
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

// ImageItem: menampilkan gambar dan judul
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

// Widget utama
class llist extends StatelessWidget {
  const llist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Listitem> items = List<Listitem>.generate(30, (i) {
      if (i % 5 == 0) {
        return Headingitem('Heading $i');
      } else if (i % 3 == 0) {
        return Imageitem('Gambar $i', 'aset/img/chisiya.jpg');
      } else {
        return Messageitem('Sender $i', 'Message Body $i');
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
