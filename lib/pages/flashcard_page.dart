import 'package:flutter/material.dart';
import 'package:apolomed_flashcards/models/flashcard.dart';

class FlashcardPage extends StatefulWidget {
  const FlashcardPage({Key? key}) : super(key: key);

  @override
  _FlashcardPageState createState() => _FlashcardPageState();
}

class _FlashcardPageState extends State<FlashcardPage> {
  List<Flashcard> flashcards = [
    Flashcard(
      question: 'Question 1',
      answer: 'Answer 1',
      category: 'Category 1',
    ),
    Flashcard(
      question: 'Question 2',
      answer: 'Answer 2',
      category: 'Category 2',
    ),
    // Add more flashcards here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcard Page'),
      ),
      body: ListView.builder(
        itemCount: flashcards.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(flashcards[index].question),
            subtitle: Text(flashcards[index].answer),
          );
        },
      ),
    );
  }
}
