import 'package:android_zaj3/zadanie2.dart';
import 'package:flutter/material.dart';

class Zadanie1 extends StatelessWidget {
  const Zadanie1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Zadanie2(),
                  ),
                );
              },
              child: const Text(
                "Przycisk który przenosi do Zadania nr 2",
              ),
            ),
            const Text('Mozna obrócić ekran a Lista dopasuje się do wyświetlacza'),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ListTile(leading: Icon(Icons.done), title: Text('Text 1')),
                    Divider(),
                    ListTile(leading: Icon(Icons.cancel), title: Text('Text 2')),
                    Divider(),
                    ListTile(trailing: Icon(Icons.abc), title: Text('Text 3')),
                    Divider(),
                    ListTile(
                      title: Text('Text 4'),
                      trailing: Icon(Icons.adjust),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Text 5'),
                      trailing: Icon(Icons.youtube_searched_for),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
