// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/game_page.dart';
import 'package:flutter_application_1/help.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> guessed_cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/gui/bg.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/gui/bg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -0.45),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      'assets/gui/logo.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.75, -0.75),
                  child: IconButton(
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => const HelpDialog()),
                    icon: const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  GameAppPage(guessed_cards)));
                    },
                    child: Image.asset(
                      'assets/gui/play.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
