import 'package:flutter/material.dart';

class CreazaDeviz extends StatefulWidget {
  CreazaDeviz({Key key}) : super(key: key);
  CreazaDevizState createState() => CreazaDevizState();
}

class CreazaDevizState extends State<CreazaDeviz> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Table(
          border: new TableBorder(
              horizontalInside:
                  new BorderSide(color: Colors.grey[200], width: 2)),
          children: [
            TableRow(
              children: [
                Text('Produs', textAlign: TextAlign.center),
                Text('Cantitate', textAlign: TextAlign.center),
                Text('Pret Unitar', textAlign: TextAlign.center),
                Text('Total', textAlign: TextAlign.center),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
