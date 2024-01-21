import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../generated/assets.dart';
import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_curve_edgets.dart';
import '../../custom_widgets/common/custom_round_image.dart';
import '../../view_models/auth/profile_info_view_model.dart';
import '../../view_models/auth/profile_updater_view_model.dart';
import '../../view_models/auth/user_view_model.dart';

class ProfileMobilePage extends ConsumerStatefulWidget {
  const ProfileMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileMobilePage> createState() => _ProfileMobilePageState();
}

class _ProfileMobilePageState extends ConsumerState<ProfileMobilePage> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _image = File(image.path);
    });
    if (_image != null) {
      ref.read(profileUpdaterModelProvider.notifier).profilePicture(_image!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userViewModelProvider);
    const double fullHeight = 220;
    if (user == null) return const SizedBox();
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: fullHeight,
                // margin: const EdgeInsets.only(bottom: 10),
                // color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipPath(
                        clipper: CustomCurvedEdges(),
                        child: Container(
                          height: fullHeight / 1.19,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: ResColors.linearGard(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CustomRoundImage(
                              size: 100,
                              url: user.avatarUrl ?? '',
                              borderWidth: 2,
                              borderColor: Colors.blueGrey,
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.bottomLeft,
                          //   child: Container(
                          //     margin:
                          //         const EdgeInsets.symmetric(horizontal: 30),
                          //     child: OutlinedIconButton(
                          //       color: ResColors.primary50,
                          //       borderColor: ResColors.secondary,
                          //       onPressed: () => _pickImage(),
                          //       icon: const Icon(
                          //         Icons.camera_alt_outlined,
                          //         color: ResColors.secondary,
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              Localization.of(context).profile,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () => ref
                                  .read(profileViewModelProvider.notifier)
                                  .refreshData(showLoading: true),
                              icon: const Icon(
                                Icons.refresh_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ResVerticalGap.gap08,
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: ListTile.divideTiles(context: context, tiles: [
                    ResVerticalGap.gap04,
                    const Text(
                      'محمد حكيم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF555B6A),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'مندوب',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF50B663),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.edit_outlined),
                          const SizedBox(width: 5),
                          Text(
                            'تعديل البيانات الشخصية',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF555B6A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    _wallet(),
                    const SizedBox(height: 20),
                    _item(title: "رقم الجوال", info: "0566133949"),
                    _item(title: "البريد الالكتروني", info: "muller@gmail.com"),
                    _item(title: "الحالة الاجتماعية", info: "متزوج"),
                    const SizedBox(height: 20),
                    const AppBtn(
                      text: "تسحيل خروج",
                      isPlane: true,
                      borderColor: Colors.red,
                    ),
                    // const AppBtn(text: "تعديل البيانات الشخصية",isPlane: true,icon: Icons.edit,),
                    // _item(
                    //   icon: Icons.person,
                    //   title: Localization.of(context).name,
                    //   info: user.name,
                    // ),
                    // _item(
                    //   icon: Icons.work,
                    //   title: Localization.current.jobTitle,
                    //   info: user.jobTitle,
                    // ),
                    // _item(
                    //   icon: Icons.email,
                    //   title: Localization.current.email,
                    //   info: user.email ?? "your@mail.com",
                    // ),
                    // _item(
                    //   icon: Icons.phone,
                    //   title: Localization.current.phone,
                    //   info: user.phone ?? "9665066133949",
                    // ),
                    ResVerticalGap.gap04,
                    // _company(user.company),
                  ]).toList(),
                ),
              ),
              ResVerticalGap.gap12,
            ],
          ),
        )
      ],
    );
  }

  Widget _wallet() {
    return Container(
      // width: 367,
      // height: 79,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.97, 0.26),
          end: Alignment(-0.97, -0.26),
          colors: [Color(0xFF2CAC70), Color(0xFF66BB59)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        leading: Image.asset(Assets.iconsWallet),
        title: const Text(
          'المحفظة',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: const Text(
          '51,000 .00',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 35, color: Colors.white),
        // leading: ,
      ),
    );
  }

  Widget _item({IconData? icon, required String title, required String info}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF555B6A),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        info,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF555B6A),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  // Widget _company(CompanyEntity company) {
  //   final textTheme = context.textTheme;
  //   return CustomCard(
  //     radius: 10,
  //     hp: 0,
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         ListTile(
  //           leading: CustomSysIcon(
  //             icon: Icons.settings_input_svideo_rounded,
  //             border: Colors.green[800],
  //           ),
  //           title: Text(Localization.current.yourCompany,
  //               style: textTheme.headlineSmall
  //                   ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
  //         ),
  //         EngineerWidget(
  //           engineer: PartnerModel(
  //               phone: company.phone ?? '+9665066133949',
  //               name: company.name,
  //               id: company.id,
  //               address: company.address,
  //               avatarUrl: company.logo ?? ''),
  //           isDetails: true,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
