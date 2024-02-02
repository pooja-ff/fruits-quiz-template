// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:confetti/confetti.dart';
import 'dart:math';

class ConfettiBgWidget extends StatefulWidget {
  const ConfettiBgWidget({
    Key? key,
    this.width,
    this.height,
    required this.loop,
    required this.particleCount,
    required this.gravity,
  }) : super(key: key);

  final double? width;
  final double? height;
  final bool loop;
  final int particleCount;
  final double gravity;

  @override
  _ConfettiBgWidgetState createState() => _ConfettiBgWidgetState();
}

class _ConfettiBgWidgetState extends State<ConfettiBgWidget> {
  late final ConfettiController _controllerCenter;
  final List<Color> defaultColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        confettiController: _controllerCenter,
        blastDirectionality: BlastDirectionality.explosive,
        particleDrag: 0.05,
        emissionFrequency: 0.05,
        numberOfParticles: widget.particleCount > 0 ? widget.particleCount : 30,
        gravity:
            widget.gravity > 1 || widget.gravity < 0 ? 0.5 : widget.gravity,
        shouldLoop: widget.loop,
        colors: defaultColors,
      ),
    );
  }

  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }
}
