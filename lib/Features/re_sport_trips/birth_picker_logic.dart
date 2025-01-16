import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DatePickerTextField extends StatefulWidget
{
  const DatePickerTextField({super.key});

  @override
  DatePickerTextFieldState createState() => DatePickerTextFieldState();
}

class DatePickerTextFieldState extends State<DatePickerTextField>
{
  TextEditingController dateController = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1960),
    lastDate: DateTime.now(),
    builder: (BuildContext context, Widget? child)
    {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: Color(0xff14654d), // Header background color
          colorScheme: ColorScheme.light(
            primary: Color(0xff14654d), // Selected date color
            onPrimary: Colors.white, // Text color on the selected date
            onSurface: Colors.black, // Text color for dates
          ),
          dialogBackgroundColor: Colors.white, // Background color of the dialog
        ),
        child: child!,
      );
    },
  );

  if (selectedDate != null)
  {
    setState(() {dateController.text = "${selectedDate.toLocal()}".split(' ')[0];});
  }
}

  @override
  void dispose()
  {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return TextField(
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
      cursorColor: Colors.black,
      controller: dateController,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset('assets/images/svg/Calender.svg', height: 10.h,),
        contentPadding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 10.w), // Adjust content padding
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      readOnly: true,
      onTap: () => selectDate(context),
    );
  }
}