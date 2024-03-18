import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownWidget extends StatefulWidget {
  final List<String> options;
  const CustomDropDownWidget({super.key,required this.options});

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    dropdownValue = dropdownValue.isEmpty ? widget.options[0] : dropdownValue;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40.h,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.green
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              padding: const EdgeInsets.all(0),
              isExpanded: true,
              value: dropdownValue,
              menuMaxHeight: 100.h,
              autofocus: true,
              onChanged: (value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: widget.options.map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
              ).toList(),
            ),
          )
        ),
      ],
    );
  }
}
