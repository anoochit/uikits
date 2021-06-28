import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DashboardScreen02 extends StatefulWidget {
  DashboardScreen02({Key? key}) : super(key: key);

  @override
  _DashboardScreen02State createState() => _DashboardScreen02State();
}

class _DashboardScreen02State extends State<DashboardScreen02> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        systemNavigationBarColor: Colors.black, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Dashboard", style: TextStyle(color: Colors.black)),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              RadialGauge(width: 2, height: 2, offset: 0, gaugeTitle: 'Gauge 1', gaugeMin: 0, gaugeMax: 100, gaugeValue: 90),
              RadialGauge(width: 2, height: 2, offset: 0, gaugeTitle: 'Gauge 2', gaugeMin: 0, gaugeMax: 100, gaugeValue: 50),
              RadialGauge(width: 1, height: 1, offset: 0, gaugeTitle: 'Gauge 3', gaugeMin: 0, gaugeMax: 100, gaugeValue: 40),
              RadialGauge(width: 1, height: 1, offset: 0, gaugeTitle: 'Gauge 4', gaugeMin: 0, gaugeMax: 100, gaugeValue: 70),
              RadialGauge(width: 1, height: 1, offset: 0, gaugeTitle: 'Gauge 5', gaugeMin: 0, gaugeMax: 100, gaugeValue: 55),
              RadialGauge(width: 1, height: 1, offset: 0, gaugeTitle: 'Gauge 6', gaugeMin: 0, gaugeMax: 100, gaugeValue: 22),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.width,
    required this.height,
    required this.offset,
  }) : super(key: key);

  final int width;
  final int height;
  final double offset;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width - offset;
    var _height = MediaQuery.of(context).size.height;
    var _constrainWidth = width;

    // if mobile overide width to 4 grid
    if ((MediaQuery.of(context).size.width < 412)) {
      _constrainWidth = 4;
    }

    // Put something in this container
    return Container(
      width: ((_width * (0.25 * _constrainWidth))),
      height: ((_height * (0.25 * height))),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Text("Put widget here"),
    );
  }
}

// sample gauge

class RadialGauge extends StatelessWidget {
  const RadialGauge({
    Key? key,
    required this.width,
    required this.height,
    required this.offset,
    required this.gaugeMin,
    required this.gaugeMax,
    required this.gaugeValue,
    required this.gaugeTitle,
  }) : super(key: key);

  final int width;
  final int height;
  final int offset;

  final double gaugeMin;
  final double gaugeMax;
  final double gaugeValue;
  final String gaugeTitle;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width - offset;
    var _height = MediaQuery.of(context).size.height;
    var _constrainWidth = width;

    // if mobile overide width to 4 grid
    if ((MediaQuery.of(context).size.width < 412)) {
      _constrainWidth = 4;
    }

    return Container(
      width: ((_width * (0.25 * _constrainWidth))),
      height: ((_height * (0.25 * height))),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        title: GaugeTitle(text: gaugeTitle, textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        axes: <RadialAxis>[
          RadialAxis(
            minimum: gaugeMin,
            maximum: gaugeMax,
            pointers: <GaugePointer>[
              NeedlePointer(needleLength: 0.7, needleEndWidth: 4, needleStartWidth: 1, value: gaugeValue),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Container(child: Text('$gaugeValue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
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
