import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../common/res/numbers.dart';
// import 'package:riverpod_test/src/service/utils/extensions/number.dart';

final audioFileLoadingProvider = StateNotifierProvider.autoDispose
    .family<_AudioFileLoading, AsyncValue<File>, String>((ref, url) {
  // return _AudioFileLoading("https://server8.mp3quran.net/afs/112.mp3");
  return _AudioFileLoading(url);
});

class _AudioFileLoading extends StateNotifier<AsyncValue<File>> {
  String fileUrl;
  _AudioFileLoading(this.fileUrl) : super(const AsyncValue.loading()) {
    _init();
  }
  void _init() async {
    try {
      state = const AsyncValue.loading();
      // await 4.delay();
      File file = await _downloadFie(url: fileUrl);
      state = AsyncValue.data(file);
    } catch (e) {
      if (mounted) {
        state = AsyncValue.error("File download failed", StackTrace.current);
      }
      log(e.toString());
    }
  }

  Future<File> _downloadFie({
    required String url,
  }) async {
    Completer<File> completer = Completer();

    await 10.delay();

    try {
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      log("File downloaded ...");
      log("${dir.path}/$filename");
      File file = File("${dir.path}/$filename");
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }
    return completer.future;
  }
}
