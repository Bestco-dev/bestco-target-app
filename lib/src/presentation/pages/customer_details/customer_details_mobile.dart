import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/buttons.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/customers/customer_view_model.dart';
import '../customer_curd/customer_curd.dart';
import '../orders/orders_mobile.dart';

class CustomerDetailsMobilePage extends ConsumerStatefulWidget {
  final CustomerEntity customer;
  const CustomerDetailsMobilePage({Key? key, required this.customer})
      : super(key: key);
  @override
  ConsumerState<CustomerDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CustomerDetailsMobilePage> {
  // final customer=widget.customer;

  @override
  Widget build(BuildContext context) {
    final customer = ref.watch(customerProvider(widget.customer));
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
        title: "تفاصيل العميل",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: const OrdersListWidget(),
      // body: const Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [],
      //   ),
      // ),
    );
  }

  Widget _customerWidget() {
    final customer = ref.watch(customerProvider(widget.customer));
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
                image: customer.imageUrl ?? '',
              ),
            ),
          ),
          title: Text(
            customer.name,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text(
                "${customer.rate}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
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
              child: AppBtn(
                isPlane: true,
                borderColor: Colors.white,
                textColor: Colors.white,
                text: "معلومات العميل",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "ملعومات العميل",
                    child: _customerInfo(),
                    height: context.height * .7,
                  );

                  return;
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: const Color(0xfff7f7f7),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (_) {
                      return SizedBox(
                        height: context.height * .7,
                        child: _customerInfo(),
                      );
                    },
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
                text: "تفاصيل العنوان",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "تفاصيل العنوان",
                    child: _addressInfo(customer.address),
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

  Widget _addressInfo(AddressModel address) {
    // final customer = ref.watch(customerProvider(widget.customer));

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
    final customer = ref.watch(customerProvider(widget.customer));
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(title: "إسم العميل", info: customer.name),
          CustomInfoItem(
              title: "نوع العميل", info: customer.type.name, isBold: true),
          CustomInfoItem(title: "البريد الإلكتروني", info: customer.email),
          CustomInfoItem(title: "الموقع الإلكتروني", info: customer.website),
          CustomInfoItem(
              title: "رقم الجوال", info: customer.phone, isBold: true),
          // CustomInfoItem(
          //     title: "رقم الهاتف", info: "0 123 456 7891", isBold: true),
          if (customer.type.isIndividual)
            CustomInfoItem(
                title: "رقم الهوية", info: customer.nationalId, isBold: true),

          if (customer.type.isCompany)
            if (customer.type.isIndividual)
              CustomInfoItem(
                  title: "الرقم الضريبي", info: customer.taxId, isBold: true),
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
