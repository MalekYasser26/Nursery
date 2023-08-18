
import 'package:flutter/material.dart';
import 'package:nursery/constants/constants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CircularProgressBar extends StatefulWidget {
    CircularProgressBar({Key? key,required this.pointerValue,}) : super(key: key);
  final double pointerValue ;

   @override
  State<CircularProgressBar> createState() => _CircularProgressBarState();
}

class _CircularProgressBarState extends State<CircularProgressBar> {

  String gradeTXT = '50 %';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                    showLabels: false,
                    showTicks: false,
                    startAngle: 270,
                    endAngle: 270,
                    minimum: 0,
                    maximum: 100,
                    radiusFactor: 1,
                    axisLineStyle: AxisLineStyle(
                        color: Color.fromRGBO(106, 110, 246, 0.2),
                        thicknessUnit: GaugeSizeUnit.factor,
                        thickness: 0.1),

                    pointers: <GaugePointer>[
                      RangePointer(
                          value: widget.pointerValue,
                          cornerStyle: CornerStyle.bothCurve,
                          sizeUnit: GaugeSizeUnit.factor,
                          color: (() {
                            if (widget.pointerValue >= 80) {
                              return AppColors.greenCol;
                            } else if (widget.pointerValue >= 70) {
                              return AppColors.orangeCol;
                            } else if (widget.pointerValue>=50) {
                              return AppColors.yellowCol;
                            }else {
                              return AppColors.darkRedCol ;
                            }
                          })(),
                          width: 0.1),
                    ]),
              ],
            )));
  }
}

