import 'package:flutter/material.dart';
import 'package:myquiz/components/options.dart';

import 'completed.dart';

class Play extends StatelessWidget {
  const Play({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
      body: Padding(
        //FOR DECORATION BOX
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            SizedBox(
              height: 421,
              width: 500,
              child: Stack(
                children: [
                  Container(
                    height: 280,
                    width: 490,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // FOR QUESTION INDEX BOX
                  Positioned(
                    bottom: 60,
                    left: 22,
                    right: 22,
                    child: Container(
                      height: 200,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 3,
                              color: Colors.amberAccent,
                            )
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 9),
                        child: Column(
                          // FOR QUESTION INDEX
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                'Question 3/10',
                                style: TextStyle(
                                  color: Color(0xFF003399),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            //FOR QUESTIONS
                            Text(
                              "Questions here!",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 243,
                    left: 171,
                    child: CircleAvatar(
                      //FOR TIMER
                      radius: 42,
                      backgroundColor: Colors.orangeAccent,
                      child: Center(
                        child: Text(
                          '15',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Options(option: 'option A'),
            Options(option: 'option B'),
            Options(option: 'option C'),
            Options(option: 'option D'),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompletePage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
