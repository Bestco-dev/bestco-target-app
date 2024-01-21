import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/strings.dart';
import '../../../common/utils/luncher.dart';
import '../../../data/demo/app.dart';
import '../../custom_widgets/common/buttons.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/logo.dart';

class AboutAppMobilePage extends ConsumerStatefulWidget {
  const AboutAppMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<AboutAppMobilePage> createState() => _AccountMobilePageState();
}

class _AccountMobilePageState extends ConsumerState<AboutAppMobilePage> {
  @override
  void initState() {
    super.initState();
  }

  final String customerServicePhoneNumber = "+966566133949";
  final String whatsAppPhoneNumber = "+966566133949";

  final i18n = Localization.current;
  @override
  Widget build(BuildContext context) {
    final rtl = context.isRtl;
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.about),
      ),
      body: CustomBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.only(top: 1, left: 2, right: 2, bottom: 2),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: const Size(40.0, 40.0),
                // preferredSize: Size.fromHeight(kToolbarHeight),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          height: 40,
                          color: const Color(0xfffff9f6),
                          child: TabBar(
                            labelStyle: const TextStyle(
                              fontSize: 15,
                            ),
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            indicatorColor: Colors.blue,
                            indicator: const BoxDecoration(
                              color: Colors.blue,
                            ),
                            tabs: [
                              Text(
                                i18n.about,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                i18n.contact_us,
                                // maxLines: 1,
                                style: const TextStyle(),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: _about(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: _contactUs(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(
      children: [
        const LogoSlogan(size: 100),
        Text(
          i18n.version('1.0.0'),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _poweredBy() {
    return SafeArea(
      child: Column(
        children: [
          Text(
            i18n.poweredBy,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 5),
          const Text(
            "مؤسسة القطب البارد",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _about() {
    return Column(
      children: [
        _logo(),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: ListTile(
              // leading: Icon(Icons.inf),
              // contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 0,
              // title: Text("Information"),
              subtitle: Text(
                getAppAboutTextInfo().capitalize,
                style: const TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        _poweredBy(),
      ],
    );
  }

  Widget _contactUs() {
    return Column(
      children: [
        _logo(),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  horizontalTitleGap: 0,
                  leading: const Icon(Iconsax.people,color: Colors.white,),
                  title: Text(i18n.callCustomerService,style: const TextStyle(color: Colors.white)),
                  subtitle: Text(customerServicePhoneNumber,style: const TextStyle(color: Colors.white)),
                  trailing: OutlinedIconButton(
                    color: Colors.grey[100],
                    borderColor: ResColors.secondary,
                    icon: const Icon(
                      Iconsax.call,
                      color: ResColors.secondary,
                    ),
                    onPressed: () => ResLauncher.instance
                        .openPhone(customerServicePhoneNumber),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  leading: const Icon(Iconsax.message,color: Colors.white),
                  title: Text(i18n.whatsappMessage,style: const TextStyle(color: Colors.white),),
                  subtitle: Text(whatsAppPhoneNumber,style: const TextStyle(color: Colors.white)),
                  trailing: OutlinedIconButton(
                    color: Colors.grey[100],
                    borderColor: ResColors.secondary,
                    icon: const Icon(
                      Iconsax.message,
                      color: ResColors.secondary,
                    ),
                    onPressed: () =>
                        ResLauncher.instance.openWhatsApp(whatsAppPhoneNumber),
                  ),
                ),
              ],
            ),
          ),
        ),
        _poweredBy(),
      ],
    );
  }
}
