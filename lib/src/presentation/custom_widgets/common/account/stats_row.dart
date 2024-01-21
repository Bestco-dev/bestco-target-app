import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../pages/customer_details/customer_details.dart';
import '../../../pages/customers/customers.dart';
import '../../../pages/invoicing/invoicing.dart';
import '../buttons/custom_button.dart';

class StatsRow extends ConsumerWidget {
  const StatsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomButton(
                  label: Localization.current.systems,
                  background: Colors.blue[800]!,
                  onPress: () => context.pushNamed(CustomersPage.pageName),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  label: "Contracts",
                  background: Colors.green[800]!,
                  onPress: () => context.pushNamed(CustomerDetailsPage.pageName),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  label: "Invoicing",
                  background: Colors.red[800]!,
                  onPress: () => context.pushNamed(InvoicingPage.pageName),
                ),
              ),
            ],
          ),
          // const SizedBox(height: 10),
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Expanded(
          //       child: CustomButton(
          //         label: "Invoices",
          //         background: Colors.blue[900]!,
          //         onPress: () => context.pushNamed(SystemsPage.pageName),
          //       ),
          //     ),
          //     const SizedBox(width: 10),
          //     Expanded(
          //       child: CustomButton(
          //         label: "payments",
          //         background: Colors.greenAccent,
          //         onPress: () => context.pushNamed(ContractsPage.pageName),
          //       ),
          //     ),
          //     const SizedBox(width: 10),
          //     Expanded(
          //       child: CustomButton(
          //         label: "Quatation",
          //         background: Colors.orange,
          //         onPress: () => context.pushNamed(InvoicesPage.pageName),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
