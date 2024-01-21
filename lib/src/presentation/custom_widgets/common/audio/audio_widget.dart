import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../view_models/audio/file_load_view_model.dart';
import '../buttons.dart';
import 'player_widget.dart';


class AudioPlayerWidget extends ConsumerWidget {
  final String link;
  const AudioPlayerWidget({required this.link, super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadState = ref.watch(audioFileLoadingProvider(link));
    return loadState.when(
      data: (file) => Player(file: file),
      error: (error, _) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: OutlinedIconButton(
                color: Colors.grey[300],
                onPressed: () {
                  ref.invalidate(audioFileLoadingProvider(link));
                },
                icon: const Center(
                  child:  Icon(
                    Icons.refresh_outlined,
                    size: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: SvgPicture.asset(
                  "assets/images/audio_ware_frame.svg",
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
      loading: () => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [


            SizedBox(
              width: 40,
              height: 40,
              child: OutlinedIconButton(
                color: Colors.grey[300],
                onPressed: () {
                  ref.invalidate(audioFileLoadingProvider(link));
                },
                icon: const CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: SvgPicture.asset(
                  "assets/images/audio_ware_frame.svg",
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
