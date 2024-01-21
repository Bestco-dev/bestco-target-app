import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/assets.dart';
import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/language_tile.dart';
import '../../view_models/auth/auth_view_model.dart';
import '../../view_models/language_view_model.dart';

class LoginMobilePage extends ConsumerStatefulWidget {
  const LoginMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginMobilePage> createState() => _LoginMobilePageState();
}

class _LoginMobilePageState extends ConsumerState<LoginMobilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _urlController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    if (kDebugMode) {
      _usernameController.text = '';
      _urlController.text = 'http://odoo.com';
    }
  }

  @override
  void dispose() {
    _urlController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    // final height = MediaQuery.of(context).viewPadding.top + 10;
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: ResColors.primary,
        body: Stack(
          children: [
            Container(
              height: 310,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF070873), Color(0xFF07BBFA)],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  SafeArea(
                    child: Image.asset(Assets.logoLogoNameWhite),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              width: double.infinity,
              // height: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 40),
                            const Text(
                              "تسجيل دخول",
                              style: TextStyle(
                                color: Color(0xFF224D6F),
                                fontSize: 20,

                                fontWeight: FontWeight.w400,
                                height: 0.04,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(Localization.of(context).username,
                                  //     style: textTheme.titleMedium?.copyWith(
                                  //         fontWeight: FontWeight.bold)),
                                  ResVerticalGap.gap03,
                                  TextFormField(
                                    controller: _usernameController,
                                    decoration: const InputDecoration(
                                        // contentPadding: EdgeInsets.symmetric(
                                        //     vertical: 8.0, horizontal: 10.0),
                                        hintText: "اسم المتسخدم"),
                                    validator: MultiValidator([
                                      RequiredValidator(
                                        errorText: 'اسم المتسخدم مطلوب',
                                        // errorText:
                                        //     Localization.of(context).required,
                                      ),
                                    ]),
                                  ),
                                  // ResVerticalGap.gap06,
                                  // Text(Localization.of(context).password,
                                  //     style: textTheme.titleMedium?.copyWith(
                                  //         fontWeight: FontWeight.bold)),
                                  ResVerticalGap.gap06,
                                  TextFormField(
                                    controller: _passwordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      hintText:
                                          Localization.of(context).password,
                                      // contentPadding: const EdgeInsets.only(
                                      //     top: 16, left: 12, right: 12),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
                                        child: Icon(
                                          _obscureText
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined,
                                        ),
                                      ),
                                    ),
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: 'كلمة المرور مطلوبة'
                                          // errorText:
                                          //     Localization.of(context).required,
                                          ),
                                    ]),
                                  ),
                                  ResVerticalGap.gap05,

                                  GestureDetector(
                                    onTap: (){},
                                    child:const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'نسيت كلمة المرور؟',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF224D6F),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ResVerticalGap.gap07,
                                  AppBtn(
                                    text: "تسجيل دخول",
                                    backgroundColor: Colors.green,
                                    onPressed: (){
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      if (_formKey.currentState!.validate()) {
                                        final url = _urlController.text;
                                        final username =
                                            _usernameController.text;
                                        final password =
                                            _passwordController.text;
                                        ref
                                            .read(
                                            authViewModelProvider.notifier)
                                            .login(username, password, url);
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  AppBtn(
                                    text: "انضم إلينا",
                                    isPlane: true,
                                    borderColor: Colors.grey,
                                    onPressed: (){},
                                  ),

                                  // MaterialButton(
                                  //   onPressed: () async {
                                  //     FocusScope.of(context)
                                  //         .requestFocus(FocusNode());
                                  //     if (_formKey.currentState!.validate()) {
                                  //       final url = _urlController.text;
                                  //       final username =
                                  //           _usernameController.text;
                                  //       final password =
                                  //           _passwordController.text;
                                  //       ref
                                  //           .read(
                                  //               authViewModelProvider.notifier)
                                  //           .login(username, password, url);
                                  //     }
                                  //   },
                                  //   color: ResColors.primary,
                                  //   height: 50,
                                  //   elevation: 0,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius:
                                  //           BorderRadius.circular(10)),
                                  //   child: Text(Localization.of(context).login,
                                  //       style: context.textTheme.labelLarge
                                  //           ?.copyWith(color: Colors.white)),
                                  // ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:   Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: FloatingActionButton(
            //       mini: true,
            //       onPressed: () {
            //         _showDialog();
            //       },
            //       elevation: 1,
            //       // backgroundColor: ResColors.primaryLight,
            //       backgroundColor: const Color(0xffEBEBEB),
            //       child: SizedBox(
            //         width: 24,
            //         height: 24,
            //         child: Image.asset(context.isRtl
            //             ? ResAssets.saImage
            //             : ResAssets.usImage),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void _showDialog() {
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
                          onSelected: (String value) {
                            if (code != value) {
                              ref
                                  .read(languageProvider.notifier)
                                  .saveLanguage("ar");
                              context.pop();
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
                              ref
                                  .read(languageProvider.notifier)
                                  .saveLanguage("en");
                              context.pop();
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

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height / 4);
    // path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPath2 extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height / 4);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
