import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TwoPaneWidget extends StatelessWidget {
  final Widget pane1;
  final Widget? pane2;

  const TwoPaneWidget({
    Key? key,
    required this.pane1,
    this.pane2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // signle pane
    if (pane2 == null) {
      return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // tablet
          if (sizingInformation.isTablet) {
            // tablet orientation
            return OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.landscape) {
                  // tablet landscape
                  return Center(
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                        // borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      child: pane1,
                    ),
                  );
                } else {
                  // tablet portrait
                  return Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black),
                      // borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: pane1,
                  );
                }
              },
            );
          } else {
            // mobile single pane
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black),
                // borderRadius: BorderRadius.circular(12.0),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: pane1,
            );
          }
        },
      );
    } else {
      // 2 pane
      return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // tablet
          if (sizingInformation.isTablet) {
            // tablet orientation
            return OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.landscape) {
                  // tablet landscape
                  return Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          // borderRadius: BorderRadius.circular(12.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height,
                        child: pane1,
                      ),
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          // borderRadius: BorderRadius.circular(12.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height,
                        child: pane2,
                      )
                    ],
                  );
                } else {
                  // tablet portrait
                  return Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black),
                      // borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: pane1,
                  );
                }
              },
            );
          } else {
            // mobile single pane
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black),
                // borderRadius: BorderRadius.circular(12.0),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: pane1,
            );
          }
        },
      );
    }
  }
}
