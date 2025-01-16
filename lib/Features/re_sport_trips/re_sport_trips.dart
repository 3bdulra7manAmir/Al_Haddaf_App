// ignore_for_file: must_be_immutable

import 'package:al_haddaf/Features/customdropdown.dart';
import 'package:al_haddaf/Core/utils/pricing_config.dart';
import 'package:al_haddaf/Features/re_sport_trips/birth_picker_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class ReSpTripsViewBody extends StatefulWidget
{
  const ReSpTripsViewBody({super.key, this.initialCountryCode = 'SA', this.validator, this.onChanged});

  final String initialCountryCode;
  final String? Function(PhoneNumber?)? validator;
  final ValueChanged<PhoneNumber>? onChanged;
  

  @override
  State<ReSpTripsViewBody> createState() => _ReSpTripsViewBodyState();
}

class _ReSpTripsViewBodyState extends State<ReSpTripsViewBody>
{
  double textFieldWidth = 0.8;
  double textFieldHeight = 0.05;
  String? selectedCountry;
  String? selectedGovernorate;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            [
              // حجز رجلات رياضية
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  right: MediaQuery.of(context).size.width * 0.05
                  ),
          
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("حجز رحلات رياضية", style: TextStyle(fontSize: 14.sp),)
                ),
              ),
              // حجز رجلات رياضية

              SizedBox(height: 15,),

              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    Text("النادي", style: TextStyle(fontSize: 14.sp),),

                    SizedBox(height: 5,),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * textFieldWidth,
                      height: MediaQuery.of(context).size.height * textFieldHeight,
                      child: TextField(
                        controller: TextEditingController(text: "الجبلين"),
                        textAlignVertical: TextAlignVertical.center,
                        enabled: false,
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(color: Color.fromRGBO(13, 77, 58, 1),),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xffEAF1F3),
                          contentPadding: EdgeInsets.only(right: 10.w, top: 0, bottom: 0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.r),),
                        ),
                      ),
                    ),
    
                    SizedBox(height: 15,),
                            
                    // الاسم بالكامل
                    Text("الاسم بالكامل", style: TextStyle(fontSize: 14.sp),),
                    // الاسم بالكامل
                            
                    SizedBox(height: 5,),
                              
                    // الاسم بالكامل كاتب
                    SizedBox(
                      width: MediaQuery.of(context).size.width * textFieldWidth,
                      height: MediaQuery.of(context).size.height * textFieldHeight,
                    
                      child: TextField(
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        textAlignVertical: TextAlignVertical.center,
                        
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.name,
                            
                            
                      decoration: InputDecoration(
                        //contentPadding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 10.w), // Adjust content padding
                        contentPadding: EdgeInsets.only(right: 10.w,top: 0,bottom: 10.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.r),  
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,),
                          ),
                        ),
                      ),
                            
                    ),
                    // الاسم بالكامل كاتب
                              
                              
                    SizedBox(height: 15,),
                              
                              
                    // سنة الميلاد
                    Text("سنة الميلاد", style: TextStyle(fontSize: 14.sp),),
                    // سنة الميلاد
                              
                    SizedBox(height: 5,),
                              
                    // سنة الميلاد كاتب
                    SizedBox(
                      width: MediaQuery.of(context).size.width * textFieldWidth,
                      height: MediaQuery.of(context).size.height * textFieldHeight,
                    
                      child: DatePickerTextField(),
                            
                    ),
                    // سنة الميلاد كاتب
                              
                    SizedBox(height: 15,),
                              
                    // رقم الهاتف
                    Text("رقم الهاتف", style: TextStyle(fontSize: 14.sp),),
                    // رقم الهاتف
                              
                    SizedBox(height: 5,),
                              
                    // رقم الهاتف كاتب
                    SizedBox(
                      height: MediaQuery.of(context).size.height * textFieldHeight, // Adjust height to accommodate error messages.
                      width: MediaQuery.of(context).size.width * textFieldWidth,
                      child: IntlPhoneField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.end, //HERE
                        cursorColor: Colors.black,
                        
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE5E5E5),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE5E5E5),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE5E5E5),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        showDropdownIcon: false,
                        disableLengthCheck: true,
                        showCountryFlag: true,
                        initialCountryCode: widget.initialCountryCode,
                        onChanged: widget.onChanged,
                        validator: widget.validator,
                      ),
                    ),
                    // رقم الهاتف كاتب
                              
                    SizedBox(height: 15,),
                    
                    Text("البلد", style: TextStyle(fontSize: 14.sp),),

                    // البلد كاتب
                    SizedBox(
                      width: MediaQuery.of(context).size.width * textFieldWidth,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: CustomDropdown(
                              items: PricingConfig.countries,
                              initialValue: selectedCountry,
                              onChanged: (value)
                              {setState(() {selectedCountry = value;});},
                              validator: (value)
                              {
                                if (value == null || value.isEmpty)
                                {
                                  return 'يجب اختيار البلد';
                                }
                                return null;
                              },
                            ),
                    ),
                              
                    if (selectedCountry != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:
                      [
                        Text("المحافظة", style: TextStyle(fontSize: 14.sp),),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * textFieldWidth,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: CustomDropdown(
                            items:
                            PricingConfig.countryGovernorates[selectedCountry] ?? [],
                            initialValue: selectedGovernorate,
                            onChanged: (value)
                            {
                              setState(() {selectedGovernorate = value;});
                            },
                            validator: (value)
                            {
                              if (value == null || value.isEmpty)
                              {
                                return 'يجب اختيار المحافظة';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),

            SizedBox(height: 25,),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 150.w,
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff156a50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('ارسال', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w900, fontSize: 14.sp),),
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
