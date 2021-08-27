import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';
class ThumbTime extends StatefulWidget {
  ThumbTime({Key? key}) : super(key: key);

  @override
  _ThumbTimeState createState() => _ThumbTimeState();
}

class _ThumbTimeState extends State<ThumbTime> {
  SfRangeValues degerler=SfRangeValues(DateTime(2021,01,01,01,00,00),DateTime(2021,01,01,24,00,00));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child:SfRangeSliderTheme(
            data: SfRangeSliderThemeData(
                    thumbColor: Colors.white,
                    thumbRadius: 15,
                    thumbStrokeWidth: 1,
                    thumbStrokeColor: Colors.red
                ),
            child: SfRangeSlider(
            activeColor: Colors.red,
           inactiveColor: Colors.red.shade100,
            values: degerler,
            min:DateTime(2021,01,01,01,00,00),
            max: DateTime(2021,01,01,24,00,00),
            interval: 1,
            dateIntervalType: DateIntervalType.hours,
            dateFormat:DateFormat('h a'),
            minorTicksPerInterval: 5,
            showTicks: true,
            showDividers: true,
          // showLabels: true,
            startThumbIcon: Icon(
             Icons.arrow_drop_down,
             color:Colors.black,
            ),
            endThumbIcon: Icon(
              Icons.arrow_drop_down,
             color:Colors.black,
            ),
          enableTooltip: true,
          onChanged: (dynamic yeniDegerler){
            setState(() {
              degerler=yeniDegerler;
            });
          },
        ), )
      
        )
      
      ),
      );
  }
}