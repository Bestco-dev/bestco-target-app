import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../customer_curd/customer_curd.dart';

class OrderDetailsMobilePage extends ConsumerStatefulWidget {
  const OrderDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<OrderDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {


    return CustomAppScaffold(
      isScroll: true,
      appBar: CustomAppBar(
        title: "تفاصيل الطلب",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Widget _customerWidget() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            'طلب شراء منتج',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '05-15-2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTag(info: "مؤكدة", color: Colors.blueAccent),
              // SizedBox(width: 5),
              // Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: AppBtn(
                // isPlane: true,
                borderColor: Colors.white,
                backgroundColor: Colors.white,
                // textColor: Colo,
                text: "تأكيد الطلب",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "ملعومات العميل",
                    child: _customerInfo(),
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
                text: "تفاصيل الطلب",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "تفاصيل الطلب",
                    child: _addressInfo(),
                    height: context.height * .7,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _addressInfo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(title: "الدولة", info: "السعودية", isBold: true),
          CustomInfoItem(title: "المنطقة", info: "الشرقية", isBold: true),
          CustomInfoItem(title: "المدينة", info: "الخبر", isBold: true),
          CustomInfoItem(
              title: "الشارع", info: "شارع الامير مشعل", isBold: true),
          CustomInfoItem(
              title: "تفاصيل",
              info: "تقاطع الامير مشعل مع الشارع الاول",
              isBold: true),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              CustomModalSheet.showModalSheet(
                context,
                title: "تعديل العنوان",
                child: const _AddressCurd(),
                height: context.height * .7,
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

  Widget _customerInfo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(title: "إسم العميل", info: "خالد محمد"),
          CustomInfoItem(title: "نوع العميل", info: "فرد", isBold: true),
          CustomInfoItem(title: "البريد الإلكتروني", info: "mail@mail.com"),
          CustomInfoItem(title: "الموقع الإلكتروني", info: "www.website.com"),
          CustomInfoItem(
              title: "رقم الجوال", info: "0 123 456 7891", isBold: true),
          CustomInfoItem(
              title: "رقم الهاتف", info: "0 123 456 7891", isBold: true),
          CustomInfoItem(
              title: "رقم الهوية", info: "231-6545-61521", isBold: true),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              CustomModalSheet.showModalSheet(
                context,
                title: "ملعومات العميل",
                child: const CustomerCurdPage(),
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
          TitledTextField(
            title: "الدولة",
            isRequired: true,
            child: TextFormField(
              decoration: const InputDecoration(hintText: "الدولة"),
              validator: MultiValidator([
                RequiredValidator(
                  errorText: 'الدولة',
                ),
              ]),
            ),
          ),
          TitledTextField(
            title: "المدينة",
            isRequired: true,
            child: TextFormField(
              decoration: const InputDecoration(hintText: "المدينة"),
              validator: MultiValidator([
                RequiredValidator(
                  errorText: 'المدينة',
                ),
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: AppBtn(
              text: "حفظ",
            ),
          )
        ],
      ),
    );
  }
}
