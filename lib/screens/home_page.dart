import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signature_pdf/controller/pdf_controller.dart';
import 'package:signature_pdf/screens/html_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter PDF'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("View HTML"),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => HtmlPage()),
                );
              },
            ),
            RaisedButton(
              child: Text("Criar PDF By HTML"),
              onPressed: () async {
                PDFController.openPDFPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
