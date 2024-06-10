import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive_crud_narendra/models/users.dart';
import 'package:hive/hive.dart';

class UserForm extends StatefulWidget {
  const UserForm( {super.key, this.userModel,this.index});
  final UsersModel? userModel;
  final int? index;
  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final middleName = TextEditingController();
  final dateOfBirth = TextEditingController();
  final address = TextEditingController();

  // final value = TextEditingController();
  // final school = TextEditingController();
  // final college = TextEditingController();
  // final skills = TextEditingController();
  // final department = TextEditingController();
  // final percentage = TextEditingController();

  String? dropDownValue;

  String genderGroupValue = '';
  late DateTime _showDateTime;
  _showDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        initialDate: _showDateTime != null ? _showDateTime : DateTime.now(),
        context: context,
        firstDate: DateTime(1970),
        lastDate: DateTime(2025));


        if(pickedDate != null){
          _showDateTime = pickedDate!;
          dateOfBirth..text = _showDateTime.toString()
          ..selection = TextSelection.fromPosition(TextPosition(
            offset:  dateOfBirth.text.length,
            affinity: TextAffinity.upstream
          )
          );
        }
  }

  late  Box box;
  @override
  void initState() {
    // TODO: implement initState
    box = Hive.box('users');

    if(widget.userModel != null ){
      firstName.text = widget.userModel!.firstName;
      middleName.text = widget.userModel!.middleName;
      lastName.text = widget.userModel!.middleName;
      address.text = widget.userModel!.address;
      genderGroupValue = widget.userModel!.gender;
      dropDownValue = widget.userModel!.hobbies;

    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: InkWell(child: Text('back'),onTap: (){
          Navigator.pop(context);
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  'Personal Information',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: firstName,
                  decoration: InputDecoration(
                      hintText: 'First Name',
                      labelText: 'First Name',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: middleName,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Middle Name',
                      labelText: 'Middle Name'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: lastName,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Last Name',
                      labelText: 'Last Name'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: dateOfBirth,
                  readOnly: true,
                  onTap: (){
                    _showDate(context);
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Date of Birth',
                      labelText: 'Date of Birth',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.white),
                              shadowColor: Colors.transparent),
                          onPressed: () {
                            // _showDate(context);
                          },
                          child: Icon(Icons.date_range),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Address',
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    RadioListTile(
                      selected: false,
                      title: Text('Male'),
                      value: 'male',
                      groupValue: genderGroupValue,
                      onChanged: (value) {
                        setState(() {
                          genderGroupValue = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      selected: false,
                      title: Text('Female'),
                      value: 'female',
                      groupValue: genderGroupValue,
                      onChanged: (value) {
                        setState(() {
                          genderGroupValue = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      selected: false,
                        title: Text('Other'),
                        value: 'other',
                        groupValue: genderGroupValue,
                        onChanged: (value) {
                          setState(() {
                            genderGroupValue = value!;
                          });
                        })
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: DropdownButton(
                    value: dropDownValue,
                    hint: dropDownValue == null
                        ? Text('Select Hobbies')
                        : Text(
                      dropDownValue!,
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                    isExpanded: true,
                    iconSize: 30,
                    items: ['Cricket', 'Football', 'Singing', 'Dance'].map(
                          (String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      },
                    ).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropDownValue = newValue!;
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                      onPressed: ()  {

                       if(widget.userModel == null){
                         final data = UsersModel(firstName: firstName.text, middleName: middleName.text, lastName: lastName.text, dob: DateTime.now(), address: address.text, gender: genderGroupValue, hobbies:dropDownValue.toString());
                         box.add(data);
                       }else{
                         final data = UsersModel(firstName: firstName.text, middleName: middleName.text, lastName: lastName.text, dob: DateTime.now(), address: address.text, gender: genderGroupValue, hobbies:dropDownValue.toString());
                         box.putAt(widget.index ?? 0, data);
                       }
                        // print(box.get(firstName));
                      },
                      child: Text('Save',style: TextStyle(fontSize: 30),)),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }


}
