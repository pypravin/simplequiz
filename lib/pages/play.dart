import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  const Play({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What is Your Father Put is Your Name?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(80, 40), // Adjusted size
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 3),
                      ),
                      child: const Text('Answer 1'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(80, 40), // Adjusted size
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                      child: const Text('Answer 2'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(80, 40), // Adjusted size
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                      child: const Text('Answer 3'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(40, 40), // Adjusted size
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                      ),
                      child: const Text('Answer 4'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
