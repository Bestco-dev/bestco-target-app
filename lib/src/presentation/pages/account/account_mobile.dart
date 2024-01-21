import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../custom_widgets/common/account/info.dart';
import '../../custom_widgets/common/account/stats_row.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/language_tile.dart';
import '../../view_models/auth/auth_view_model.dart';
import '../../view_models/auth/profile_updater_view_model.dart';
import '../about_app/about_app.dart';
import '../change_password/change_password.dart';

class AccountMobilePage extends ConsumerStatefulWidget {
  const AccountMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<AccountMobilePage> createState() => _AccountMobilePageState();
}

class _AccountMobilePageState extends ConsumerState<AccountMobilePage> {
  @override
  void initState() {
    // Future.microtask(
    //     () => ref.read(profileViewModelProvider.notifier).loadInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final rtl = context.isRtl;
    // final user = ref.watch(userViewModelProvider.notifier);
    return CustomBackgroundWidget(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ResVerticalGap.gap08,
               const Align(
                  alignment: Alignment.topCenter,
                  child: AccountInfo(),
                ),
                ResVerticalGap.gap08,
              const  StatsRow(),
                ResVerticalGap.gap08,
                Column(
                  children: ListTile.divideTiles(context: context, tiles: [
                    // _listTail(
                    //   Localization.current.systems,
                    //   Icons.settings,
                    //   onPress: () => context.pushNamed(SystemsPage.pageName),
                    // ),
                    // _listTail(
                    //   "Contracts",
                    //   Iconsax.document,
                    //   onPress: () => context.pushNamed(ProfilePage.pageName),
                    // ),
                    // _listTail(
                    //   "Payments",
                    //   Iconsax.money,
                    //   onPress: () => context.pushNamed(ProfilePage.pageName),
                    // ),
                    _listTail(
                      Localization.current.changePassword,
                      Iconsax.lock,
                      onPress: () =>
                          context.pushNamed(ChangePasswordPage.pageName),
                    ),
                    _listTail(
                      Localization.current.language,
                      Iconsax.language_circle,
                      onPress: () => _showDialog(),
                    ),
                    _listTail(
                      Localization.current.about,
                      Iconsax.info_circle,
                      onPress: () => context.pushNamed(AccountPage.pageName),
                    ),
                    _listTail(
                      Localization.current.logout,
                      Iconsax.logout,
                      onPress: () => AppCustomDialogs.areYouSureDialog(
                        message: Localization.current.logout_msg,
                        icon: const Icon(Iconsax.logout, color: Colors.red),
                        onOK: () =>
                            ref.read(authViewModelProvider.notifier).logout(),
                      ),
                    ),
                  ]).toList(),
                ),
                ResVerticalGap.gap12,
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _listTail(String title, IconData icon, {Function()? onPress}) {
    final rtl = context.isRtl;
    return CustomCard(
      hp: 20,
      vp: 0,
      hm: 10,
      vm: 4,
      radius: 100,
      background: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(rtl ? Iconsax.arrow_left_2 : Iconsax.arrow_right_3),
        onTap: onPress,
      ),
    );
  }

  void _changeLocal(String langCode) async {
    context.pop();

    bool check = await ref
        .read(profileUpdaterModelProvider.notifier)
        .updateLang(langCode: langCode);
  }

  void _showDialog() {
    // context.go('/splashscreen');

    final code = context.locale.languageCode;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(Localization.of(context).selectLanguage),
              actions: <Widget>[
                SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        LanguageTile(
                          title: Localization.of(context).arabic,
                          value: 'ar',
                          selected: code == 'ar',
                          onSelected: (String value) async {
                            if (code != value) {
                              _changeLocal(value);
                            }
                          },
                        ),
                        const Divider(height: 1, thickness: 1),
                        LanguageTile(
                          title: Localization.of(context).english,
                          value: 'en',
                          selected: code == 'en',
                          onSelected: (String value) {
                            if (code != value) {
                              if (code != value) {
                                _changeLocal(value);
                              }
                            }
                          },
                        ),
                      ],
                    ))
              ],
            );
          },
        );
      },
    );
  }
}
