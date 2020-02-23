import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Taylor Swift', text: 'Cats is not important thing, its everything'),
    Quote(author: 'Taylor Swift', text: 'Cat is our God!'),
    Quote(author: 'Taylor Swift', text: 'The old Taylor cant come to the phone right now...Why? Oh, cause shes dead!'),
  ];

  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text ("Quote of the day"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      )
    );
  }
}


