import 'package:flutter/material.dart';

class SimpleDialogPage extends StatefulWidget {
  const SimpleDialogPage({super.key, required this.title});

  final String title;

  @override
  State<SimpleDialogPage> createState() => _SimpleDialogPageState();
}

class _SimpleDialogPageState extends State<SimpleDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show SimpleDialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const SimpleDialog(
                  title: Text('SimpleDialog'),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Text('This is SimpleDialog.'),
                    ),
                    SizedBox(height: 16),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
