import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/invoice/invoice_entity.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_with_title.dart';
import '../../custom_widgets/titel_inof.dart';

class InvoicesDetailsMobilePage extends ConsumerStatefulWidget {
  final InvoiceEntity invoice;
  const InvoicesDetailsMobilePage({Key? key, required this.invoice})
      : super(key: key);
  @override
  ConsumerState<InvoicesDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<InvoicesDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWithTitleWidget(
      title: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        minVerticalPadding: 0,
        title: Text(
          "Quotation",
          style: TextStyle(color: Colors.white),
        ),
        trailing: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Download",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.download,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomTitleInfo(
                    label: "Sale Order number",
                    info: "S0203/12",
                  ),
                  const SizedBox(height: 10),
                  CustomTitleInfo(
                    label: "Date:",
                    info: "2/7/2023",
                  ),
                  const SizedBox(height: 10),
                  CustomTitleInfo(
                    label: "Expiration:",
                    info: "15/8/2023",
                  ),
                  const SizedBox(height: 17),
                  CustomTitleInfo(
                    label: "Pricing",
                    info: "",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            _products(),
            const SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomTitleInfo(
                      label: "Total:",
                      isBold: true,
                      info: "500.00 SAR",
                    ),
                    const SizedBox(height: 10),
                    CustomTitleInfo(
                      label: "Paid:",
                      info: "12.00 SAR",
                    ),
                    const SizedBox(height: 10),
                    CustomTitleInfo(
                      label: "Due Amount:",
                      info: "500.00 SAR",
                    ),
                    const SizedBox(height: 60),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text("Comment:"),
                      subtitle: Text(
                          "Add an additional Water Sprayer just for the future use."),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _products() {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(5),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(3),
      },

      // border: TableBorder(
      //     horizontalInside: BorderSide(color: Colors.cyan, width: 10.0)),
      children: [
        //This table row is for the table header which is static
        TableRow(
          decoration: BoxDecoration(
            color: const Color(0xFF6DB0FF),
            borderRadius: BorderRadius.circular(20),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              child: Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Qtn",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Price",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        // Using the spread operator to add the remaining table rows which have dynamic data
        // Be sure to use .asMap().entries.map if you want to access their indexes and objectName.map() if you have no interest in the items index.
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
              child: Text(
                'Lab top lenovo',
                style: const TextStyle(
                  color: Color(0xFF3F3F3F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "1",
                  style: const TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "40",
                  style: const TextStyle(
                    color: Color(0xFF3F3F3F),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
