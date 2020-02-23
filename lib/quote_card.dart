import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                )
            ),
            SizedBox(height:10.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                )
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete_outline),
            )
          ]
      ),
    );
  }
}