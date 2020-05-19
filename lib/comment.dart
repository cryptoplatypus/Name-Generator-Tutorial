import 'package:flutter/material.dart';

class Comment {
  DateTime dateTime;
  String author;
  String value;

  Comment(String value, String author) {
    this.author = author;
    this.value = value;
    this.dateTime = DateTime.now();
  }
}

class CommentCard extends StatelessWidget {
  final Comment comment;
  final Function deleteFunction;

  CommentCard({this.comment, this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              comment.value,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              '~' + comment.author + '; ' + comment.dateTime.toString(),
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            FlatButton.icon(
              onPressed: deleteFunction,
              icon: Icon(Icons.delete),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}