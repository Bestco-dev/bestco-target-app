import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../custom_widgets/common/buttons.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/key_value_selection.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/cities_view_model.dart';
import '../../view_models/countries_view_model.dart';
import '../../view_models/customers/adress_view_model.dart';
import '../../view_models/customers/details_view_model.dart';
import '../../view_models/states_view_model.dart';
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
  @override
  void initState() {
    Future.microtask(() {
      ref.read(customerDetailsProvider.notifier).state =
          UiState.data(data: widget.customer);
      ref.read(addressDetailsProvider.notifier).state =
          UiState.data(data: widget.customer.address);
      // ref.read(addressDe)
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(customerDetailsProvider);
    return CustomAppScaffold(
      isScroll: true,
      hasPadding: false,
      appBar: CustomAppBar(
        title: "تفاصيل العميل",
        subTitle: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          data: (data) => _customerWidget(data),
        ),
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

  Widget _customerWidget(CustomerEntity customer) {
    // final customer = ref.watch(customerDetailsProvider(widget.customer));
    // final customer = ref.watch(customerDetails02Provider);
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
                image: customer.imgUrl ?? '',
                // image: customer.imageUrl ?? '',
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
                    child: _customerInfo(customer),
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
                text: "تفاصيل العنوان",
                fontSize: 14,
                onPressed: () {
                  CustomModalSheet.showModalSheet(
                    context,
                    title: "تفاصيل العنوان",
                    child: _addressInfo(customer.address,customer.id),
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

  Widget _addressInfo(AddressModel address,int id) {
    // final customer = ref.watch(customerProvider(widget.customer));
    // final state = ref.watch(addressDetailsProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(
              title: "الدولة", info: address.country?.value, isBold: true),
          CustomInfoItem(
              title: "المنطقة", info: address.state?.value, isBold: true),
          CustomInfoItem(
              title: "المدينة", info: address.city, isBold: true),
          CustomInfoItem(
              title: "الشارع", info: address.street ?? '', isBold: true),
          CustomInfoItem(
              title: "تفاصيل", info: address.description, isBold: true),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              CustomModalSheet.showModalSheet(
                context,
                title: "تعديل العنوان",
                child: AddressCurd(address: address,customerId: id),
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

  Widget _customerInfo(CustomerEntity customer) {
    // final customer = ref.watch(customerDetailsProvider(widget.customer));
    // final customer = ref.watch(customerDetails02Provider);
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomInfoItem(title: "إسم العميل", info: customer.name),
          CustomInfoItem(
              title: "نوع العميل", info: customer.type.name, isBold: true),
          CustomInfoItem(title: "البريد الإلكتروني", info: customer.email),
          // CustomInfoItem(title: "الموقع الإلكتروني", info: customer.website),
          CustomInfoItem(
              title: "رقم الجوال", info: customer.phone, isBold: true),
          // CustomInfoItem(
          //     title: "رقم الهاتف", info: "0 123 456 7891", isBold: true),
          // if (customer.type.isIndividual)
          //   CustomInfoItem(
          //       title: "رقم الهوية", info: customer.nationalId, isBold: true),

          if (customer.type.isCompany)
            if (customer.type.isIndividual)
              CustomInfoItem(
                  title: "الرقم الضريبي", info: customer.vat, isBold: true),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              CustomModalSheet.showModalSheet(
                context,
                title: "ملعومات العميل",
                child: CustomerCurdPage(customer: customer),
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

class AddressCurd extends ConsumerWidget {
  final AddressModel address;
  final int customerId;
  final bool isCustomer;
  const AddressCurd({super.key, required this.address,required this.customerId,this.isCustomer=true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressCurdProvider(address));
    final stateRead = ref.watch(addressCurdProvider(address).notifier);

    // return state.
    return Scaffold(
      body: Container(
        color: const Color(0xfff7f7f7),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitledTextField(
                title: "الدولة",
                child: KeyValueSelection(
                  stateProvider: ref.watch(countriesProvider),
                  onRefresh: () => ref.read(countriesProvider.notifier).load(),
                  title: "الدولة",
                  onSelect: stateRead.updateCountry,
                  selectedItem: state.country,
                  // selectedItem: ,
                ),
              ),
              TitledTextField(
                title: "المنظقة",
                child: KeyValueSelection(
                  stateProvider: ref.watch(statesProvider),

                  onRefresh: () => ref.read(statesProvider.notifier).load(),
                  title: "المنظقة",

                  onSelect: stateRead.updateState,
                  selectedItem: state.state,
                  // selectedItem: ,
                ),
              ),
              TitledTextField(
                title: "المدينة",
                isRequired: true,
                child: TextFormField(
                  initialValue: state.city,
                  onChanged: stateRead.updateCity,
                  decoration: const InputDecoration(hintText: "المدينة"),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'المدينة',
                    ),
                  ]),
                ),
              ),
              // TitledTextField(
              //   title: "المدينة",
              //   child: KeyValueSelection(
              //     stateProvider: ref.watch(citiesProvider),
              //     onRefresh: () => ref.read(citiesProvider.notifier).load(),
              //     title: "المدينة",
              //     onSelect: stateRead.updateCity,
              //     selectedItem: state.city,
              //     // selectedItem: ,
              //   ),
              // ),
              TitledTextField(
                title: "الشارع",
                isRequired: true,
                child: TextFormField(
                  initialValue: state.street,
                  onChanged: stateRead.updateStreet,
                  decoration: const InputDecoration(hintText: "الشارع"),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'الشارع',
                    ),
                  ]),
                ),
              ),
              TitledTextField(
                title: "التفاصيل",
                isRequired: true,
                child: TextFormField(
                  initialValue: state.description,
                  maxLines: 4,
                  decoration: const InputDecoration(hintText: "التفاصيل"),
                  validator: MultiValidator([
                    RequiredValidator(
                      errorText: 'التفاصيل',
                    ),
                  ]),
                  onChanged: stateRead.updateDescription,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: AppBtn(
                  text: "حفظ",
                  onPressed: () async {
                    final bool = await stateRead.update(customerId,isCustomer: isCustomer);
                    if (bool && context.mounted) Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
