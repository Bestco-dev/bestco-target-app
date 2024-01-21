import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';

import '../../../../common/res/colors.dart';
import '../../../../common/utils/extensions/context.dart';
import '../buttons.dart';

class Player extends StatefulWidget {
  final File file;
  final double? height;

  const Player({super.key, this.height, required this.file});
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final PlayerController playerController = PlayerController();
  int currentDuration = 0;

  double playerWidth = 100;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    await Future.delayed(const Duration(microseconds: 1));
    playerController.preparePlayer(
      path: widget.file.path,
      noOfSamples: const PlayerWaveStyle().getSamplesForWidth(playerWidth),
    );
    playerController.onPlayerStateChanged.listen((event) {
      if (mounted) {
        setState(() {});
      }
    });
    playerController.onCurrentDurationChanged.listen((event) {
      currentDuration = event;
      if (mounted) {
        currentDuration = event;
        setState(() {});
      }
    });
  }

  format(Duration d) => d.toString().substring(2, 7);
  void playAndPause() async {
    playerController.playerState == PlayerState.playing
        ? await playerController.pausePlayer()
        : await playerController.startPlayer(finishMode: FinishMode.pause);
  }

  bool get isPlaying => playerController.playerState == PlayerState.playing;
  bool get isInitialized =>
      playerController.playerState == PlayerState.initialized;

  int get totalMaxDuration => playerController.maxDuration;
  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: OutlinedIconButton(
                color: Colors.grey[300],
                onPressed: () {
                  playAndPause();
                },
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: ResColors.primary,
                  size: 25,
                ),
              ),
            ),
            // FloatingActionButton(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            //   // splashColor: Colors.transparent,
            //   focusColor: Colors.transparent,
            //   hoverElevation: 0,
            //   splashColor: Colors.white.withOpacity(0.25),
            //   // foregroundColor: Colors.transparent,
            //
            //   child: Container(
            //     padding: const EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //       color: Colors.grey[300],
            //       shape: BoxShape.circle,
            //     ),
            //     child: Icon(
            //       isPlaying ? Icons.pause : Icons.play_arrow,
            //     ),
            //   ),
            //   onPressed: () async {
            //     playAndPause();
            //   },
            // ),
            const SizedBox(width: 4),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  playerWidth = constraints.minWidth;
                  return RotatedBox(
                    quarterTurns: context.isRtl ? 2 : 0,
                    child: AudioFileWaveforms(
                      size: Size(
                        MediaQuery.of(context).size.width * .55,
                        widget.height ?? 70,
                      ),
                      waveformType: WaveformType.fitWidth,
                      backgroundColor: Colors.blue,
                      playerController: playerController,
                      waveformData: playerController.waveformData,
                      enableSeekGesture: true,
                      playerWaveStyle: const PlayerWaveStyle(
                        fixedWaveColor: Colors.grey,
                        liveWaveColor: ResColors.primary,
                        waveThickness: 1.5,
                        waveCap: StrokeCap.butt,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 5),
            Text(
              format(
                Duration(
                    milliseconds:
                        isPlaying ? currentDuration : totalMaxDuration),
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
