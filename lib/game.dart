import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class FadeOutImageAlert extends StatefulWidget {
  @override
  _FadeOutImageAlertState createState() => _FadeOutImageAlertState();
}

class _FadeOutImageAlertState extends State<FadeOutImageAlert> {
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();
    // Start fading out after a delay of 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        opacity = 0.0;
      });
      // Close the dialog after the fade-out animation completes
      Future.delayed(Duration(milliseconds: 500), () {
        Navigator.of(context).pop();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: opacity,
        child: Image.asset('assets/wrong.png'),
      ),
    );
  }
}

class _GamePageState extends State<GamePage> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "Name something you do on a smartphone every day.",
      "options": [
        {"answer": "Social Media", "points": 40},
        {"answer": "Texting", "points": 30},
        {"answer": "Checking Email", "points": 20},
        {"answer": "Taking Photos", "points": 10},
        {"answer": "Playing Games", "points": 5},
        {"answer": "Watching movies/funky videos", "points": 5}
      ]
    },
    {
      "question":
          "What is the first thing people do when the internet stops working?",
      "options": [
        {"answer": "Toggle airplane mode", "points": 40},
        {"answer": "Restart the router", "points": 30},
        {"answer": "Restart phone/laptop", "points": 20},
        {"answer": "Call their internet provider", "points": 10},
        {"answer": "Complain loudly", "points": 5},
        {"answer": "Ask a tech-savvy friend", "points": 5}
      ]
    },
    {
      "question":
          "Name a piece of technological gadget you can’t live without.",
      "options": [
        {"answer": "Smartphone", "points": 40},
        {"answer": "Laptop", "points": 30},
        {"answer": "AI/ChatGPT", "points": 20},
        {"answer": "Smartwatch", "points": 10},
        {"answer": "Gaming Console", "points": 5},
        {"answer": "Television", "points": 5}
      ]
    },
    {
      "question":
          "What would you do when your laptop is infected with a virus?",
      "options": [
        {"answer": "Install antivirus software", "points": 40},
        {"answer": "Reset the laptop", "points": 30},
        {"answer": "Browse for solutions", "points": 20},
        {"answer": "Go to a service center", "points": 10},
        {"answer": "Quarantine the laptop", "points": 5},
        {"answer": "Sanitize the laptop", "points": 5}
      ]
    },
    {
      "question": "What is the most annoying thing about online meetings?",
      "options": [
        {"answer": "Someone forgetting to unmute", "points": 40},
        {"answer": "Bad internet connection", "points": 30},
        {"answer": "Background noise", "points": 20},
        {"answer": "People talking over each other", "points": 10},
        {"answer": "Awkward silences", "points": 5},
        {"answer": "Host requests to turn on video", "points": 5}
      ]
    },
    {
      "question": "What is the most common password people use?",
      "options": [
        {"answer": "Pet/lover’s name", "points": 40},
        {"answer": "Password", "points": 30},
        {"answer": "12345678", "points": 20},
        {"answer": "ABCD1234", "points": 10},
        {"answer": "qwerty", "points": 5},
        {"answer": "Their date of birth", "points": 5}
      ]
    },
    {
      "question":
          "What do you do when you see a python when you enter a computer lab?",
      "options": [
        {"answer": "Uninstall Python from the computer", "points": 40},
        {"answer": "Kill python", "points": 30},
        {"answer": "Exit the computer lab", "points": 20},
        {"answer": "Call for help/Vava Suresh", "points": 10},
        {"answer": "Pet/feed the snake", "points": 5},
        {"answer": "Fry and eat", "points": 5}
      ]
    },
    {
      "question": "What is the first thing you do when you buy a new gadget?",
      "options": [
        {"answer": "Charge it", "points": 40},
        {"answer": "Set it up", "points": 30},
        {"answer": "Read the manual", "points": 20},
        {"answer": "Show it off", "points": 10},
        {"answer": "Burst bubble wrap", "points": 5},
        {"answer": "Make an unboxing video", "points": 5}
      ]
    },
    {
      "question": "What features do people look for while buying a smartphone?",
      "options": [
        {"answer": "Camera", "points": 40},
        {"answer": "Battery life", "points": 30},
        {"answer": "Design/Appearance", "points": 20},
        {"answer": "Performance/Software", "points": 10},
        {"answer": "Budget", "points": 5},
        {"answer": "Reviews", "points": 5}
      ]
    },
    {
      "question": "What is a tech gadget that people buy but rarely use?",
      "options": [
        {"answer": "Phone stand", "points": 40},
        {"answer": "Smartwatch/fitness tracker", "points": 30},
        {"answer": "Tablet", "points": 20},
        {"answer": "Smart speaker", "points": 10},
        {"answer": "Powerbank", "points": 5},
        {"answer": "Printer", "points": 5}
      ]
    },
    {
      "question": "What do people usually do while their computer updates?",
      "options": [
        {"answer": "Check their phone", "points": 40},
        {"answer": "Eat", "points": 30},
        {"answer": "Complain about how long it’s taking", "points": 20},
        {"answer": "Walk away", "points": 10},
        {"answer": "Watch TV", "points": 5},
        {"answer": "Sleep", "points": 5}
      ]
    },
    {
      "question": "What should you not do at a college library?",
      "options": [
        {"answer": "Make noise", "points": 40},
        {"answer": "Make out", "points": 30},
        {"answer": "Steal books", "points": 20},
        {"answer": "Burn down the library", "points": 10},
        {"answer": "Misplace books", "points": 5},
        {"answer": "Snore", "points": 5}
      ]
    },
    {
      "question":
          "Name something people often forget to back up on their devices.",
      "options": [
        {"answer": "Photos", "points": 40},
        {"answer": "Chats", "points": 30},
        {"answer": "Contacts", "points": 20},
        {"answer": "Documents", "points": 10},
        {"answer": "Passwords", "points": 5},
        {"answer": "Music", "points": 5}
      ]
    },
    {
      "question": "What are the qualities of an ISTE member?",
      "options": [
        {"answer": "Leadership", "points": 40},
        {"answer": "Honesty", "points": 30},
        {"answer": "Sincerity", "points": 20},
        {"answer": "Responsibility", "points": 10},
        {"answer": "Hardworking", "points": 5},
        {"answer": "Unique ideas", "points": 5}
      ]
    },
  ];

  List<bool> visibilityFlags = [];
  int currentQuestionIndex = 0;

  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    initializeVisibilityFlags();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void initializeVisibilityFlags() {
    visibilityFlags = List.generate(
        questions[currentQuestionIndex]['options'].length, (index) => false);
  }

  void showAnswer(int index) async {
    setState(() {
      visibilityFlags[index] = true;
    });
    // Play right.mp3 sound
    await audioPlayer.play(AssetSource('right.mp3'));
  }

  void showWrongAlert() async {
    // Play wrong.mp3 sound
    await audioPlayer.play(AssetSource('wrong.mp3'));

    // Show the wrong alert dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return FadeOutImageAlert();
      },
    );
  }

  void handleKeyPress(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      final logicalKey = event.logicalKey;

      // Check for keys 1–5
      if (logicalKey.keyId >= LogicalKeyboardKey.digit1.keyId &&
          logicalKey.keyId <= LogicalKeyboardKey.digit5.keyId) {
        final index = logicalKey.keyId - LogicalKeyboardKey.digit1.keyId;
        if (index < visibilityFlags.length) {
          showAnswer(index);
        }
      }

      // Check for key 0 to show wrong alert
      if (logicalKey == LogicalKeyboardKey.digit0) {
        showWrongAlert();
      }

      // Check for "r" key to reveal all answers
      if (logicalKey == LogicalKeyboardKey.keyR) {
        revealAllAnswers();
      }
    }
  }

  void revealAllAnswers() {
    setState(() {
      visibilityFlags = List.generate(visibilityFlags.length, (index) => true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionData = questions[currentQuestionIndex];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 46, 2, 241).withOpacity(0.5),
                    blurRadius: 50.0,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: Image.asset(
                'assets/logo.png',
                width: 150, // Adjust size as needed
              ),
            ),
          ),
          RawKeyboardListener(
            focusNode: FocusNode()..requestFocus(),
            autofocus: true,
            onKey: handleKeyPress,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      padding:
                          EdgeInsets.symmetric(vertical: 22, horizontal: 56),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade500,
                            const Color.fromARGB(255, 142, 204, 255),
                            Colors.blue.shade500,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color.fromARGB(255, 235, 255, 51),
                            width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 4),
                            blurRadius: 10,
                            spreadRadius: 15,
                          ),
                        ],
                      ),
                      child: Text(
                        '${currentQuestionIndex + 1}',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Gilroy'),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      questionData['question'],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(0.0, 0.0),
                            blurRadius: 8.0,
                            color: Color.fromARGB(125, 0, 0, 255),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 0),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 0, 0, 0),
                            const Color.fromARGB(255, 63, 63, 63),
                            const Color.fromARGB(255, 0, 0, 0),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color.fromARGB(255, 235, 255, 51),
                            width: 3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0, 4),
                            blurRadius: 10,
                            spreadRadius: 15,
                          ),
                        ],
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final column1 = List.generate(3, (i) => i)
                              .where((i) => i < questionData['options'].length)
                              .toList();
                          final column2 = List.generate(3, (i) => i + 3)
                              .where((i) => i < questionData['options'].length)
                              .toList();

                          return Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: column1.map((index) {
                                    return buildAnswerTile(index, questionData);
                                  }).toList(),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  children: column2.map((index) {
                                    return buildAnswerTile(index, questionData);
                                  }).toList(),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Set button background to blue
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                        onPressed: currentQuestionIndex > 0
                            ? () {
                                setState(() {
                                  currentQuestionIndex--;
                                  initializeVisibilityFlags();
                                });
                              }
                            : null,
                        child: Text(
                          'Previous',
                          style: TextStyle(
                            color: Colors.white, // Set text color to white
                            fontFamily: 'Gilroy', // Apply Gilroy font
                            fontWeight: FontWeight.bold, // Set text to bold
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Set button background to blue
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                        onPressed: currentQuestionIndex < questions.length - 1
                            ? () {
                                setState(() {
                                  currentQuestionIndex++;
                                  initializeVisibilityFlags();
                                });
                              }
                            : null,
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white, // Set text color to white
                            fontFamily: 'Gilroy', // Apply Gilroy font
                            fontWeight: FontWeight.bold, // Set text to bold
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAnswerTile(int index, Map<String, dynamic> questionData) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade500,
            const Color.fromARGB(255, 142, 204, 255),
            Colors.blue.shade500,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: const Color.fromARGB(255, 235, 255, 51), width: 4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              visibilityFlags[index]
                  ? questionData['options'][index]['answer']
                  : '',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            visibilityFlags[index]
                ? '${questionData['options'][index]['points']} pts'
                : '',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
