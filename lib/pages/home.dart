import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myquiz/pages/play.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz and rizz",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/images/trivia_logo.png",
                width: 170,
                height: 170,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //PLAY BUTTON
            SizedBox(
              width: 160,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Play()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ), // Button color
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  // Ensure the Row only takes up as much space as needed
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    // Icon widget
                    SizedBox(width: 10),
                    // SizedBox for spacing between icon and text
                    Text('PLAY', style: TextStyle(fontSize: 30)),
                    // Text widget
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            //EXIT BUTTON
            //PLAY BUTTON
            SizedBox(
              width: 160,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  //exit dialog
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Confirm Exit"),
                      content: const Text("Are you sure you want to exit?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: const Text("Exit"),
                        )
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ), // Button color
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  // Ensure the Row only takes up as much space as needed
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    // Icon widget
                    SizedBox(width: 10),
                    // SizedBox for spacing between icon and text
                    Text('EXIT', style: TextStyle(fontSize: 30)),
                    // Text widget
                  ],
                ),
              ),
            ),

            //GIF
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/books.gif',
              height: 270,
              width: 300,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xfffff1c9),
    );
  }
}
