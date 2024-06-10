import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Step2Form extends StatefulWidget {
  const Step2Form({super.key});

  @override
  State<Step2Form> createState() => _Step2FormState();
}

class _Step2FormState extends State<Step2Form> {

  late String departmentValue = 'Select Department';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Education Details',style: TextStyle(fontSize: 25),),
        SizedBox(height: 15,),
        TextFormField(
           decoration: InputDecoration(
             hintText: 'School Name',
             labelText: 'School Name',
             border: OutlineInputBorder()
           ),
         ),
        SizedBox(height: 15,),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'College Name',
            labelText: 'Collage Name',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 15,),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Skills',
            labelText: 'Skills',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white
             ),
          child: DropdownButton(
            isExpanded: true,
            iconSize: 30,
            hint: departmentValue == null ? Text('Select Department') : Text(departmentValue,style: TextStyle(fontSize: 16),),
            items: ['BSC', 'BCA', 'BCOM','BTECH'].map((depValue){
              return DropdownMenuItem<String>(
                  value: depValue,
                  child: Text(depValue,style: TextStyle(fontSize: 16),)
              );
            }).toList(),

            onChanged: (depValue){
                setState(() {
                  departmentValue = depValue!;
                });
            },
          ),
        ),
        SizedBox(height: 15,),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Percentage',
            labelText: 'Percentage',
            border: OutlineInputBorder()
          ),
        )
      ],
    );
  }
}
