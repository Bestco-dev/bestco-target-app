import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../view_models/auth/auth_password_view_model.dart';

class ForgetPasswordPageMobilePage extends ConsumerStatefulWidget {
  const ForgetPasswordPageMobilePage({super.key});

  @override
  ConsumerState createState() => _ForgetPasswordPageMobilePageState();
}

class _ForgetPasswordPageMobilePageState
    extends ConsumerState<ForgetPasswordPageMobilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _urlController = TextEditingController();
  late final TextEditingController _usernameController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              margin: const EdgeInsets.only(top: 54),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32)),
                color: Colors.white,
              ),
              child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                  children: <Widget>[
                    ResVerticalGap.gap06,
                    Text(Localization.of(context).forgetPassword,
                        style: textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    ResVerticalGap.gap05,
                    Text(Localization.of(context).resetPasswordHint,
                        style: textTheme.bodyMedium?.copyWith()),
                    // ResVerticalGap.gap08,
                    ResVerticalGap.gap06,
                    Text(Localization.of(context).username,
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    ResVerticalGap.gap03,
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          hintText: "user32@gmail.com"),
                      validator: MultiValidator(
                        [
                          RequiredValidator(
                            errorText: Localization.of(context).required,
                          ),
                        ],
                      ),
                    ),
                    ResVerticalGap.gap05,
                    MaterialButton(
                      onPressed: () async {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (_formKey.currentState!.validate()) {
                          final url = _urlController.text;
                          final username = _usernameController.text;
                          ref
                              .read(passwordViewModelProvider.notifier)
                              .forget(email: username);
                        }
                      },
                      color: ResColors.primary,
                      height: 50,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(Localization.of(context).submit,
                          style: context.textTheme.labelLarge
                              ?.copyWith(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.directional(
              top: 0,
              textDirection: context.textDirection,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    }
                  },
                  elevation: 0,
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
