import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashboardScreen02 extends StatefulWidget {
  const DashboardScreen02({super.key});

  @override
  State<DashboardScreen02> createState() => _DashboardScreen02State();
}

class _DashboardScreen02State extends State<DashboardScreen02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: const [
            RadialGauge(
              width: 2,
              height: 2,
              gaugeTitle: 'Gauge 1',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 90,
            ),
            RadialGauge(
              width: 2,
              height: 2,
              gaugeTitle: 'Gauge 2',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 50,
            ),
            RadialGauge(
              width: 1,
              height: 1,
              gaugeTitle: 'Gauge 3',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 40,
            ),
            RadialGauge(
              width: 1,
              height: 1,
              gaugeTitle: 'Gauge 4',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 70,
            ),
            RadialGauge(
              width: 1,
              height: 1,
              gaugeTitle: 'Gauge 3',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 40,
            ),
            RadialGauge(
              width: 1,
              height: 1,
              gaugeTitle: 'Gauge 4',
              gaugeMin: 0,
              gaugeMax: 100,
              gaugeValue: 70,
            ),
          ],
        ),
      ),
    );
  }
}

// sample gauge
class RadialGauge extends StatelessWidget {
  const RadialGauge({
    Key? key,
    required this.width,
    required this.height,
    required this.gaugeMin,
    required this.gaugeMax,
    required this.gaugeValue,
    required this.gaugeTitle,
  }) : super(key: key);

  final int width;
  final int height;

  final double gaugeMin;
  final double gaugeMax;
  final double gaugeValue;
  final String gaugeTitle;

  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;
    double scHeight = MediaQuery.of(context).size.height;

    return Container(
      width: (context.isPhone) ? (scWidth / 1) : ((scWidth / 4) * width),
      height: (context.isPhone) ? (scWidth / 1) : ((scHeight / 4) * height),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(16.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        title: GaugeTitle(
            text: gaugeTitle,
            textStyle:
                const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        axes: <RadialAxis>[
          RadialAxis(
            minimum: gaugeMin,
            maximum: gaugeMax,
            pointers: <GaugePointer>[
              NeedlePointer(
                  needleLength: 0.7,
                  needleEndWidth: 4,
                  needleStartWidth: 1,
                  value: gaugeValue),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Text('$gaugeValue',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                angle: 90,
                positionFactor: 0.75,
              )
            ],
          )
        ],
      ),
    );
  }
}
