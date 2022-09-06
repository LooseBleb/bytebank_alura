import 'package:bytebank/screens/contacts_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final title = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.network(
              'https://media.istockphoto.com/photos/pixelated-bitcoin-symbol-made-from-cubes-mosaic-pattern-3d-rendering-picture-id1315450862',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactsList(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: 150,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        'Contacts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
