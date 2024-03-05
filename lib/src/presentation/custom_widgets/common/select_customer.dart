import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../pages/customers/customers.dart';
import 'app_nav.dart';
import 'custom_round_image.dart';

class SelectingCustomerWidget extends StatefulWidget {
  CustomerEntity? customer;
  bool isEditable;
  Function(CustomerEntity)? onSelected;
  SelectingCustomerWidget({
    this.customer,
    this.onSelected,
    this.isEditable = true,
  });

  @override
  _SelectingCustomerWidgetState createState() =>
      _SelectingCustomerWidgetState();
}

class _SelectingCustomerWidgetState extends State<SelectingCustomerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffffffff),
          border: Border.all(width: 1.0, color: const Color(0xffeef1f7)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                appNavPush(
                  context,
                  page: CustomersPage(
                    selectedCustomer: widget.customer,
                    onSelected: widget.onSelected,
                  ),
                );
                // context
                //     .goNamed(CustomersPage.selectionPageName, queryParameters: {
                //   "isSelected": false,
                // });
                // context.goNamed(CustomersPage.selectionPageName,extra: false);
                // context.goNamed(CustomersPage.selectionPageName, extra: true);
                // CustomModalSheet.showModalSheet(
                //   context,
                //   title: "اختيار العميل",
                //   child: const CustomersPage(isSelection: true),
                //   height: context.height * .9,
                // );
                //
                // appNavPush(
                //   context,
                //   page: CustomersHome(
                //     isSelection: true,
                //     selecetedCustomer: widget.customer,
                //     onSelect: widget.onSelected,
                //     // invoiceType: widget.invoiceType,
                //   ),
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "العميل",
                    style: TextStyle(
                      // fontFamily: 'Droid Arabic Kufi',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      // color: const Color(0xffb1bac9),
                    ),
                    // textAlign: TextAlign.right,
                  ),
                  widget.isEditable
                      ? const Icon(
                          Icons.edit,
                          color: ResColors.primary,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            widget.customer == null
                ? const Text(
                    "غير محدد",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      // fontFamily: 'Droid Arabic Kufi',
                      fontSize: 15,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                : ListTile(
                    // onTap: () => showCustomerDialog(context, widget.customer!),
                    leading: CustomRoundImage(
                      size: 40,
                      url: "${widget.customer?.imgUrl}",
                    ),
                    title: Text(
                      "${widget.customer?.name}",
                      // maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        // fontFamily: 'Droid Arabic Kufi',
                        fontSize: 15,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
          ],
        ));
  }

  // void _showDialog() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Container(
  //           // margin: EdgeInsets.only(
  //           //     bottom: Get.height * .21),
  //           child: AlertDialog(
  //             contentPadding: EdgeInsets.all(10),
  //             insetPadding: EdgeInsets.all(10),
  //             clipBehavior: Clip.antiAliasWithSaveLayer,
  //             scrollable: true,
  //             // title: Text('Login'),
  //             content: Container(
  //               width: MediaQuery.of(context).size.width,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(0.0),
  //                 child: CustomerWidget(
  //                   CustomerEntity: widget.customer!,
  //                   isSelected: true,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       });
  // }
}
