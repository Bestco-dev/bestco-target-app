import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../view_models/auth/auth_password_view_model.dart';

class ChangePasswordMobilePage extends ConsumerStatefulWidget {
  const ChangePasswordMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ChangePasswordMobilePage> createState() =>
      _ChangePasswordMobilePageState();
}

class _ChangePasswordMobilePageState
    extends ConsumerState<ChangePasswordMobilePage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _oldPasswordController;
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmPasswordController;
  bool _obscureOldPasswordText = true;
  bool _obscureNewPasswordText = true;
  bool _obscureConfirmPasswordText = true;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _oldPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    if (kDebugMode) {
      _oldPasswordController.text = 'Resting@12';
      _newPasswordController.text = 'Resting@12';
      _confirmPasswordController.text = 'Resting@12';
    }
  }

  @override
  void dispose() {
    super.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    // ref.listen<UiState<bool>>(
    //     passwordViewModelProvider,
    //     (_, next) => next.mapOrNull(
    //
    //           error: (er) {
    //             context.clearSnackBar();
    //             context.showSnackBar(er.error.message, Icons.error);
    //             return null;
    //           },
    //           data: (e) {
    //             context.clearSnackBar();
    //             context.showSnackBar(
    //                 context.i18n.passwordUpdatedMessage, Icons.done);
    //             return null;
    //           },
    //         ));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change passwrod"),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(context.i18n.oldPassword,
                  style: textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              ResVerticalGap.gap04,
              Directionality(
                textDirection: context.textDirection,
                child: TextFormField(
                  controller: _oldPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureOldPasswordText,
                  decoration: InputDecoration(
                    // contentPadding: const EdgeInsets.only(
                    //     top: 16, left: 12, right: 12),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureOldPasswordText =
                          !_obscureOldPasswordText;
                        });
                      },
                      child: Icon(
                        _obscureOldPasswordText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                  // validator: MultiValidator([
                  //   RequiredValidator(
                  //       errorText: context.i18n.validationRequired),
                  // ]),
                ),
              ),
              ResVerticalGap.gap06,
              Text(context.i18n.newPassword,
                  style: textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              ResVerticalGap.gap04,
              Directionality(
                textDirection: context.textDirection,
                child: TextFormField(
                  controller: _newPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureNewPasswordText,
                  decoration: InputDecoration(
                    // contentPadding: const EdgeInsets.only(
                    //     top: 16, left: 12, right: 12),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureNewPasswordText =
                          !_obscureNewPasswordText;
                        });
                      },
                      child: Icon(
                        _obscureNewPasswordText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                  // validator: MultiValidator([
                  //   RequiredValidator(
                  //       errorText: context.i18n.validationRequired),
                  //   PatternValidator(ResPatterns.newPassword,
                  //       errorText: context.i18n.validationPasswordPattern)
                  // ]),
                ),
              ),
              ResVerticalGap.gap06,
              Text(Localization.of(context).confirmPassword,
                  style: textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              ResVerticalGap.gap04,
              Directionality(
                textDirection: context.textDirection,
                child: TextFormField(
                  controller: _confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscureConfirmPasswordText,
                  decoration: InputDecoration(
                    // contentPadding: const EdgeInsets.only(
                    //     top: 16, left: 12, right: 12),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureConfirmPasswordText =
                          !_obscureConfirmPasswordText;
                        });
                      },
                      child: Icon(
                        _obscureConfirmPasswordText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                  // validator: MultiValidator([
                  //   RequiredValidator(
                  //       errorText: context.i18n.validationRequired),
                  //   PatternValidator(ResPatterns.newPassword,
                  //       errorText: context.i18n.validationPasswordPattern)
                  // ]),
                ),
              ),
              ResVerticalGap.gap07,
              Row(
                children: [
                  Expanded(
                    child: AppBtn(text: context.i18n.update,
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (_formKey.currentState!.validate()) {
                          context.clearSnackBar();
                          ref
                              .read(passwordViewModelProvider.notifier)
                              .reset(
                              _oldPasswordController.text,
                              _newPasswordController.text,
                              _confirmPasswordController.text);
                        }
                      },),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
