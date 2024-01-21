import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';
import '../../../domain/use_cases/systems/customers_view_model.dart';
import '../../custom_widgets/common/buttons.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../orders/orders_mobile.dart';
import '../saleperson_curd/saleperson_curd.dart';

class SalePersonDetailsMobilePage extends ConsumerStatefulWidget {
  const SalePersonDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<SalePersonDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<SalePersonDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(systemsPaginationViewModelProvider);
    final stateRead = ref.read(systemsPaginationViewModelProvider.notifier);

    return CustomAppScaffold(
      isScroll: true,
      hasPadding: false,
      // floatingActionButton: const Padding(
      //   padding: EdgeInsets.all(10),
      //   child: AppBtn(
      //     text: "اضافة طلب",
      //     icon: Icons.add,
      //   ),
      // ),
      appBar: CustomAppBar(
        title: "تفاصيل المندوب",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: const OrdersListWidget(canAddNew: false),
    );
  }

  Widget _customerWidget() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
              border: Border.all(
                width: 1,
                color: const Color(0xffe8e8e8),
              ),
            ),
            child: ClipOval(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: FakeImages.randomImage(isUser: true),
              ),
            ),
          ),
          title: const Text(
            'خالد محمد',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTag(
                info: "نشط",
                color: Color(0xFF50B663),
              ),
            ],
          ),
          trailing: SizedBox(
            width: 40,
            height: 40,
            child: OutlinedIconButton(
              icon: const Icon(Icons.call, color: Colors.white),
              onPressed: () {},
              borderColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _targetInfo(amount: 1000, title: "المستهدف الشهري"),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _targetInfo(amount: 200, title: "المستهدف المحقق"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: AppBtn(
                isPlane: true,
                borderColor: Colors.white,
                textColor: Colors.white,
                text: "معلومات المندوب",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "ملعومات المندوب",
                    child: _salePersonInfo(),
                    height: context.height * .7,
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: AppBtn(
                isPlane: true,
                borderColor: Colors.white,
                textColor: Colors.white,
                text: "تفاصيل المستهدف",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "تفاصيل المستهدف",
                    child: _targetsInfo(),
                    height: context.height * .4,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _targetInfo({required double amount, required String title}) {
    return Container(
      // width: context.width / 2,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xff0885D1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text.rich(
            TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              children: [
                TextSpan(
                  text: "$amount",
                ),
                const TextSpan(text: ' '),
                const TextSpan(
                  text: 'ر.س',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _targetsInfo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoIWidgetItem(
            title: "المستهدف المحقق",
            info: CustomTag(
              info: "20000 ر.س",
              color: Color(0xFF50B663),
              fontSize: 14,
            ),
          ),

          CustomInfoIWidgetItem(
            title: "المستهدف الشهري",
            info: CustomTag(
              info: "1000 ر.س",
              color: Colors.blue,
              fontSize: 14,
            ),
          ),

          CustomInfoIWidgetItem(
            title: "العمولة",
            info: CustomTag(
              info: "1000 ر.س",
              color: Colors.red,
              fontSize: 14,
            ),
          ),
          // CustomInfoItem(title: "الدولة", info: "السعودية", isBold: true),
          // CustomInfoItem(title: "المنطقة", info: "الشرقية", isBold: true),
          // CustomInfoItem(title: "المدينة", info: "الخبر", isBold: true),
          // CustomInfoItem(title: "الشارع", info: "شارع الامير مشعل", isBold: true),
          // CustomInfoItem(
          //     title: "تفاصيل",
          //     info: "تقاطع الامير مشعل مع الشارع الاول",
          //     isBold: true),
          // const SizedBox(height: 20),
          // TextButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //     CustomModalSheet.showModalSheet(
          //       context,
          //       title: "تعديل العنوان",
          //       child: const _AddressCurd(),
          //       height: context.height * .7,
          //     );
          //   },
          //   child: const Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Icon(Icons.edit_outlined, color: Colors.green),
          //       SizedBox(width: 10),
          //       Text(
          //         "تعديل البيانات",
          //         style: TextStyle(
          //           fontSize: 15,
          //           color: Colors.green,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _salePersonInfo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(title: "إسم المندوب", info: "خالد محمد"),
          CustomInfoItem(title: "البريد الإلكتروني", info: "mail@mail.com"),
          CustomInfoItem(title: "الموقع الإلكتروني", info: "www.website.com"),
          CustomInfoItem(
              title: "رقم الجوال", info: "0 123 456 7891", isBold: true),
          CustomInfoItem(
              title: "رقم الهوية", info: "231-6545-61521", isBold: true),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              CustomModalSheet.showModalSheet(
                context,
                title: "ملعومات المندوب",
                child: const SalePersonCurdPage(),
                height: context.height * .9,
              );
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.edit_outlined, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  "تعديل البيانات",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  //
  // Widget _item(
  //     {IconData? icon,
  //     required String title,
  //     bool isBold = false,
  //     required String info}) {
  //   return Container(
  //     margin: const EdgeInsets.only(bottom: 10),
  //     child: CustomCard(
  //       vp: 1,
  //       // vm: 10,
  //       child: ListTile(
  //         contentPadding: EdgeInsets.zero,
  //         title: Text(
  //           title,
  //           style: const TextStyle(
  //             color: Color(0xFF555B6A),
  //             fontSize: 14,
  //             fontWeight: FontWeight.w400,
  //           ),
  //         ),
  //         trailing: Text(
  //           info,
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: const Color(0xFF555B6A),
  //             fontSize: 13,
  //             fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class _AddressCurd extends StatelessWidget {
  const _AddressCurd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff7f7f7),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          TitledTextField(
            title: "اسم العنوان",
            isRequired: true,
            child: TextFormField(
              decoration: const InputDecoration(hintText: "اسم العنوان"),
              validator: MultiValidator([
                RequiredValidator(
                  errorText: 'اسم العنوان مطلوب',
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
