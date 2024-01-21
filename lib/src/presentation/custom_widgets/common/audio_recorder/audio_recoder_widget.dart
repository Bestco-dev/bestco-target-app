import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../common/utils/extensions/context.dart';
import '../audio/player_widget.dart';

class AudioRecorderWidget extends StatefulWidget {
  const AudioRecorderWidget({super.key});

  @override
  State<AudioRecorderWidget> createState() => _AudioRecorderWidgetState();
}

class _AudioRecorderWidgetState extends State<AudioRecorderWidget> {
  late final RecorderController recorderController;
  String? path;

  // bool isRecording = false;
  bool isRecordingCompleted = false;
  bool isLoading = true;
  late Directory appDirectory;
  File? reRecordedFile;

  Duration currentDuration = const Duration(seconds: 0);

  @override
  void initState() {
    super.initState();
    _getDir();
    _initialiseControllers();
  }

  void _getDir() async {
    appDirectory = await getApplicationDocumentsDirectory();
    path = "${appDirectory.path}/recording.m";
    isLoading = false;
    setState(() {});
  }

  void _initialiseControllers() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100;

    recorderController.onRecorderStateChanged.listen((event) {
      if (mounted) {
        setState(() {});
      }
    });

    recorderController.onCurrentDuration.listen((event) {
      currentDuration = event;
      if (mounted) {
        currentDuration = event;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    recorderController.dispose();
    super.dispose();
  }

  bool get isRecording =>
      recorderController.recorderState == RecorderState.recording;
  bool get isPaused => recorderController.recorderState == RecorderState.paused;

  bool get showRecorder => isRecording || isPaused;

  format(Duration d) => d.toString().substring(2, 7);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: showRecorder ? Colors.black : Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.ease,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: showRecorder
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF1E1B26),
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return RotatedBox(
                                      quarterTurns: context.isRtl ? 2 : 0,
                                      child: AudioWaveforms(
                                        enableGesture: true,
                                        size: Size(constraints.maxWidth, 50),
                                        recorderController: recorderController,
                                        waveStyle: const WaveStyle(
                                          waveColor: Colors.white,
                                          backgroundColor: Colors.transparent,
                                          extendWaveform: true,
                                          showMiddleLine: false,
                                          waveThickness: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          // color: const Color(0xFF1E1B26),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                format(currentDuration),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => _removeRecord(),
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              // color: Colors.white,
                              iconSize: 28,
                            ),
                            Material(
                              type: MaterialType.transparency,
                              child: IconButton(
                                splashColor: Colors.white,
                                color: Colors.white,
                                onPressed: () => _pauseRecord(),
                                icon: Icon(
                                  isRecording ? Icons.pause : Icons.mic,
                                  color: Colors.white,
                                ),
                                // color: Colors.white,
                                iconSize: 28,
                              ),
                            ),
                            IconButton(
                              onPressed: () => _startOrStopRecording(),
                              icon: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              // color: Colors.white,
                              iconSize: 28,
                            ),
                          ],
                        ),
                      ],
                    )
                  : isRecordingCompleted
                      ? Player(file: File(path!), height: 50)
                      : const SizedBox(),
            ),
          ),
        ),
        if (!isRecordingCompleted && !showRecorder)
          IconButton(
            onPressed: () => _startOrStopRecording(),
            icon: Icon(isRecording ? Icons.stop : Icons.mic),
            color: Colors.black,
            iconSize: 28,
          ),
        if (isRecordingCompleted)
          IconButton(
            onPressed: () => _removeRecord(),
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            color: Colors.black,
            iconSize: 28,
          ),
      ],
    );
  }

  void _startOrStopRecording() async {
    try {
      if (isRecording) {
        recorderController.reset();
        final path = await recorderController.stop(false);

        if (path != null) {
          isRecordingCompleted = true;
          debugPrint(path);
          debugPrint("Recorded file size: ${File(path).lengthSync()}");
        }
      } else {
        await recorderController.record(path: path!);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      // setState(() {
      //   isRecording = !isRecording;
      // });
    }
  }

  void _removeRecord() {
    print("on remove");
    // if (isRecordingCompleted) {
    setState(() {
      // isRecording = false;
      isRecordingCompleted = false;
    });
    // }
    recorderController.reset();
    recorderController.stop(false);
  }

  void _pauseRecord() async {
    if (recorderController.recorderState != RecorderState.paused) {
      recorderController.pause();
    } else {
      await recorderController.record();
    }
  }

  void _refreshWave() {
    if (isRecording) recorderController.refresh();
  }
}
