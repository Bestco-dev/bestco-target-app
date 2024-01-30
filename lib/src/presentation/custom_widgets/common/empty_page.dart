import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';
import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';
import 'buttons/app_btn.dart';

class EmptyPage extends StatelessWidget {
  final String? message;
  final Function()? onRefresh;
  final bool loading;
  const EmptyPage(
      {Key? key, this.message, this.onRefresh, this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              SvgPicture.asset(
                Assets.svgEmptyPage,
                width: 150 * (context.isPhone ? 1 : 2),
                height: 150 * (context.isPhone ? 1 : 2),
              ),
              const SizedBox(height: 40),
              Text(
                message ?? "No Data",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff959595),
                  fontSize: context.isPhone ? 14 : 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.28,
                ),
              ),
              const SizedBox(height: 40),
              if (onRefresh != null && !loading)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: AppBtn(
                    onPressed: onRefresh,
                    text: Localization.current.refresh,
                    // child: Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: Text(
                    //     Localization.current.refresh,
                    //     style: TextStyle(
                    //       fontSize: context.isPhone ? 16 : 22,
                    //       // color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              if (loading)
                const SpinKitDualRing(
                  color: ResColors.primary,
                  // color: isPlane ? backgroundColor : Colors.white,
                  size: 30.0,
                  lineWidth: 4,
                )
            ],
          ),
        ),
      ),
    );
  }
}
