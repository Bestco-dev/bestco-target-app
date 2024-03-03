import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';
import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';


class ErrorPage extends StatelessWidget {
  final String? message;
  final Function()? onReload;
  final bool loading;
  final double size;
  final double paddingTop;
  const ErrorPage({Key? key, this.message, this.onReload,this.size=200, this.paddingTop=.1,this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * paddingTop),
              SvgPicture.asset(
                Assets.svgErrorPage,
                  width: size*(context.isPhone?1:2),
                  height:size*(context.isPhone?1:2)
              ),
              // Image.asset(Assets.gifNoData, width: 150, height: 150),
              const SizedBox(height: 40),
              Text(
                message ?? "Error",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff959595),
                  fontSize: context.isPhone ? 14 : 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.28,
                ),
              ),
              const SizedBox(height: 40),
              if (onReload != null && !loading)
                TextButton(
                  onPressed: onReload,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      Localization.current.refresh,
                      style: TextStyle(
                        fontSize: context.isPhone ? 16 : 22,
                      ),
                    ),
                  ),
                ),
              if (loading)
                const SpinKitDualRing(
                  color: ResColors.primary,
                  size: 30.0,
                  lineWidth: 4,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
