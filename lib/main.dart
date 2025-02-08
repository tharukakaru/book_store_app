import 'package:flutter/material.dart';
import 'book_widget.dart';
import 'book_details_screen.dart';

void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rare Books Collection',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const BookListScreen(),
    );
  }
}

class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rare Books Collection')),
      body: ListView(
        children: [
          BookWidget(
            title: 'Codex Seraphinianus',
            author: 'Luigi Serafini',
            price: '\$120',
            imagePath: 'assets/book1.jpg',
            description:
                "Codex Seraphinianus is an illustrated encyclopedia of an imaginary world, featuring bizarre plants, strange creatures, and an indecipherable script. It is a surreal masterpiece filled with intricate drawings and a mysterious language, sparking curiosity worldwide.",
          ),
          BookWidget(
            title: 'The Book of Soyga',
            author: 'John Dee',
            price: '\$150',
            imagePath: 'assets/book2.jpg',
            description:
                "The Book of Soyga is a Renaissance-era book of magic, studied by the famous mathematician John Dee. It contains cryptic texts, angelic language, and mysterious codes that were believed to hold the secrets of the universe and mystical communication.",
          ),
          BookWidget(
            title: 'Ripley Scroll',
            author: 'George Ripley',
            price: '\$300',
            imagePath: 'assets/book3.jpg',
            description:
                "The Ripley Scroll is a legendary alchemical manuscript that describes the process of creating the Philosopher’s Stone. With its elaborate symbols and encrypted messages, it has fascinated scholars and alchemists for centuries, offering insight into medieval esoteric practices.",
          ),
        ],
      ),
    );
  }
}
