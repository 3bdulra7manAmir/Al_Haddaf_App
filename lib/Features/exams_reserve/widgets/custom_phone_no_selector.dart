import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberInput extends StatelessWidget
{

  static final TextEditingController phoneNumberController = TextEditingController();

  const PhoneNumberInput({super.key});

  @override
  Widget build(BuildContext context)
  {
    return IntlPhoneField(
      
      decoration: InputDecoration(border: OutlineInputBorder(),),
      textAlign: TextAlign.end,
      keyboardType: TextInputType.number,
      initialCountryCode: 'SA',
      //countries: [],
      controller: phoneNumberController,
      invalidNumberMessage: 'يرجى إدخال رقم هاتف صحيح', // Custom error message in Arabic
      
      onChanged: (phone)
      {
        print('Phone Number: ${phone.completeNumber}');
      },
      
    );
  }
}