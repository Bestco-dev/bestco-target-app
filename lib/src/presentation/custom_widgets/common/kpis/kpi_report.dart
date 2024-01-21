import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../../../common/res/constants.dart';
import '../../../../data/types/types.dart';
import '../../../../domain/entities/kpi/kpi.dart';

class KpiReport extends StatelessWidget {
  final KpiModel kpiModel;
  final bool iLocal;
  const KpiReport({required this.kpiModel,this.iLocal=false ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: TimelineTheme(
        data: TimelineThemeData(
          connectorTheme: ConnectorThemeData(
            color: iLocal?Colors.grey: kpiModel.failures?.color ?? Colors.grey,
            indent: 10,
            thickness: 2,
          ),
        ),
        child: TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  kpiModel.name,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: _answers(),
                // child: _counterAnswer(),
              ),
              // const SizedBox(height: 10),
            ],
          ),
          // node: Icon(Icons.add),
          node: TimelineNode(
            position: 100,
            // indicatorPosition: .1,
            indicator: DotIndicator(
              position: .02,
              color: iLocal?Colors.grey: kpiModel.failures?.color ?? Colors.grey,
              size: 15,
            ),
            startConnector: const SizedBox(),
            endConnector: const SolidLineConnector(),
          ),
        ),
      ),
    );
  }

  Widget _answers() {
    if (kpiModel.measuermentType.isSingleChoice) {
      return _singleChoiceAnswer();
    }
    return _numberValues();
  }

  Widget _numberValues() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...kpiModel.options.map(
          (e) => Text(
            "${e.value == ResConstants.notApplicableKey ? '' : e.value}   ${e.label} (${e.unit})",
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _singleChoiceAnswer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...kpiModel.options.map(
          (e) => Text(
            e.label,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
