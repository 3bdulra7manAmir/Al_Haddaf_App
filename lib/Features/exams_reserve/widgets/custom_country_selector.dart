import 'package:flutter/material.dart';

class CountrySelector extends StatefulWidget
{
  const CountrySelector({super.key});

  @override
  CountrySelectorState createState() => CountrySelectorState();
}

class CountrySelectorState extends State<CountrySelector>
{
  final List<Map<String, String>> countries =
  [
    {'name': ' المملكة العربية السعودية', 'code': 'SA', 'flag': '🇸🇦'},
    {'name': 'الامارات العربية المتحدة', 'code': 'UAE', 'flag': '🇦🇪'},
    {'name': 'جمهورية مصر العربية', 'code': 'EG', 'flag': '🇪🇬'},
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context)
  {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(border: OutlineInputBorder(),),
      value: selectedCountry,
      isExpanded: true,
      items: countries.map((country)
      {
        return DropdownMenuItem<String>(
          value: country['code'],
          child: Row(
            children:
            [
              Text(country['flag']!, style: TextStyle(fontSize: 20),),

              SizedBox(width: 90),

              Text(country['name']!, textAlign: TextAlign.end,),
            ],
          ),
        );
      }).toList(),

      onChanged: (value)
      {
        setState(()
        {
          selectedCountry = value;
        });
        print('Selected Country: $value');
      },

      validator: (value)
      {
        if (value == null || value.isEmpty)
        {
          return 'Please select a country';
        }
        return null;
      },
    );
  }
}
