import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class UnitMeasure extends StatefulWidget {
  const UnitMeasure(
      {Key? key, required this.unitMeasures, required this.onChange})
      : super(key: key);
  final List<String> unitMeasures;

  final Function onChange;

  @override
  State<UnitMeasure> createState() => _UnitMeasureState();
}

class _UnitMeasureState extends State<UnitMeasure> {
  int _index = 0;

  void _changeUnitMeasure() {
    setState(() {
      _index = (_index + 1) % widget.unitMeasures.length;
      widget.onChange(widget.unitMeasures[_index]);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeUnitMeasure,
      child: SizedBox(
        width: 60,
        height: 60,
        child: Card(
          elevation: 0,
          color: ActiveYouTheme.cardColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                ActiveYouTheme.secondaryLightColor,
                ActiveYouTheme.secondaryDarkColor,
              ]),
            ),
            child: Center(
              child: Text(
                widget.unitMeasures[_index],
                style: const TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: 12,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
