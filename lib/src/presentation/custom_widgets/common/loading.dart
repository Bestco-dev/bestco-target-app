import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../common/res/colors.dart';
import 'spinner.dart';

class Loading extends StatelessWidget {
  final bool backgroundTransparent;
  final String? message;
  final Stream<bool> status;
  final Widget child;

  const Loading(
      {Key? key,
        required this.status,
        required this.child,
        this.message,
        this.backgroundTransparent = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: status,
        builder: (context, snapshot) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(!(snapshot.data ?? false));
            },
            child: Stack(
              children: <Widget>[child, _loading(snapshot.data)],
            ),
          );
        });
  }

  Widget _loading(bool? loading) {
    return loading == true
        ? Container(
      alignment: Alignment.center,
      color: backgroundTransparent == true
          ? Colors.white.withOpacity(.9)
          : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spinner(
            color: ResColors.primary,
          ),
          const SizedBox(height: 8),
          if (message != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                message!,
              ),
            ),
        ],
      ),
    )
        : Container();
  }
}

class LoadingStatus extends StatelessWidget {
  final bool backgroundTransparent;
  final String? message;
  final bool status;
  final Widget child;

  const LoadingStatus(
      {Key? key,
        required this.status,
        required this.child,
        this.message,
        this.backgroundTransparent = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(!(status));
      },
      child: Stack(
        children: <Widget>[child, _loading(status)],
      ),
    );
  }

  Widget _loading(bool loading) {
    return loading == true
        ? Container(
      alignment: Alignment.center,
      color: backgroundTransparent == true
          ? Colors.white.withOpacity(.9)
          : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            width: 64,
            height: 64,
            child: LoadingIndicator(
              indicatorType: Indicator.ballPulse,
              colors: [ResColors.error],
              strokeWidth: 2,
              backgroundColor: Colors.transparent,
              pathBackgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 8),
          if (message != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                message!,
              ),
            ),
        ],
      ),
    )
        : Container();
  }
}

class LoadingIndicatorWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final Indicator indicator;
  final List<Color>? colors;

  const LoadingIndicatorWidget(
      {Key? key,
        this.width,
        this.height,
        this.indicator = Indicator.ballPulse,
        this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LoadingIndicator(
        indicatorType: indicator,
        colors: colors ?? [Colors.white],
        strokeWidth: 1,
        backgroundColor: Colors.transparent,
        pathBackgroundColor: Colors.transparent,
      ),
    );
  }
}
