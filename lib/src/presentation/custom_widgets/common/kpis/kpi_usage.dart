import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/kpi_usage/kpi_usage.dart';
import '../pdf_viewer.dart';

class KpiUsage extends StatelessWidget {
  final KpiUsageModel usage;

  const KpiUsage({required this.usage, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      // width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                Localization.current.howToUse,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: FloatingActionButton(
                  elevation: 0,
                  // backgroundColor: Colors.blue[400],
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            usage.description,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 20),
          if (usage.hasPdf)
            ListTile(
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 0,
              leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
              title:  Text(Localization.current.howToUseDoc),
              trailing: TextButton(
                onPressed: () {
                  // ResLauncher.instance.openLink(usage.pdfLink!);
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        insetPadding: const EdgeInsets.symmetric(horizontal: 0),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),

                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        content: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: CustomPdfViewer(
                            title: Localization.current.howToUse,
                            pdfLink: usage.link!,
                          ),
                        ),
                      );
                    },
                  );
                },
                child:  Text(Localization.current.open),
              ),
            ),
        ],
      ),
    );
  }
}
