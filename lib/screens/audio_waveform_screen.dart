import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';

class Waveform extends StatefulWidget {
  const Waveform({super.key});

  @override
  State<Waveform> createState() => _WaveformState();
}

class _WaveformState extends State<Waveform> {
  List<double> samples = [];

  @override
  void initState() {
    super.initState();
    _generateSamples();
  }

  void _generateSamples() {
    for (int i = 0; i < 1000; i++) {
      samples.add(sin(i * 0.01) * 5000);
    }
    setState(() {}); // Trigger a rebuild after updating samples
  }

  @override
  Widget build(BuildContext context) {
    print(samples);
    return Scaffold(
      appBar: AppBar(title: const Text("Waveform")),
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.amberAccent,
            child: PolygonWaveform(
                showActiveWaveform: true,
                activeColor: Colors.red,
                absolute: true,
                inactiveColor: Colors.blue,
                style: PaintingStyle.fill,
                samples: samples,
                height: 300,
                width: double.infinity,
                elapsedDuration: Duration(seconds: 4),
                maxDuration: Duration(seconds: 10)),
          ),
        ],
      ),
    );
  }
}
