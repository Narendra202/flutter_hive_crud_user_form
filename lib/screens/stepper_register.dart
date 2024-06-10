// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hive_crud_narendra/models/users.dart';
// import 'package:flutter_hive_crud_narendra/screens/step1form.dart';
// import 'package:flutter_hive_crud_narendra/screens/step2form.dart';
// import 'package:flutter_hive_crud_narendra/screens/user_form.dart';
// import 'package:hive/hive.dart';
//
// class StepperScreen extends StatefulWidget {
//   const StepperScreen({super.key});
//
//   @override
//   State<StepperScreen> createState() => _StepperScreenState();
// }
//
// class _StepperScreenState extends State<StepperScreen> {
//   @override
//   Widget build(BuildContext context) {
//
//     final firstName = TextEditingController();
//     final lastName = TextEditingController();
//     final middleName = TextEditingController();
//     // final dateOfBirth = TextEditingController();
//     final address = TextEditingController();
//     // final value = TextEditingController();
//     final school = TextEditingController();
//     final college = TextEditingController();
//     final skills = TextEditingController();
//     final department = TextEditingController();
//     final percentage = TextEditingController();
//     String? dropDownValue;
//
//     String genderGroupValue = 'male';
//
//     _showDate(BuildContext context) async{
//       DateTime? pickedDate = await showDatePicker(
//           initialDate: DateTime.now(),
//           context: context,
//           firstDate: DateTime(1970),
//           lastDate: DateTime(2025)
//       );
//
//
//
//
//       return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         // title: Text('User Registration',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(
//         child: Container(
//           child: Column(
//             children: [
//               Text('Personal Information',style: TextStyle(fontSize: 25),),
//               SizedBox(height: 15,),
//               TextFormField(
//                 controller: firstName,
//                 decoration: InputDecoration(
//                     hintText: 'First Name',
//                     labelText: 'First Name',
//                     border: OutlineInputBorder()
//                 ),
//               ),
//               SizedBox(height: 15,),
//               TextFormField(
//                 controller: middleName,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Middle Name',
//                     labelText: 'Middle Name'
//                 ),
//               ),
//               SizedBox(height: 15,),
//               TextFormField(
//                 controller: lastName,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Last Name',
//                     labelText: 'Last Name'
//                 ),
//               ),
//               SizedBox(height: 15,),
//               TextFormField(
//                 // controller: dateOfBirth,
//                 readOnly: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Date of Birth',
//                     labelText: 'Date of Birth',
//                     suffixIcon: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.all(10),
//                             backgroundColor: Colors.white,
//                             side: BorderSide(color: Colors.white),
//                             shadowColor: Colors.transparent
//                         ),
//                         onPressed: (){
//                           _showDate(context);
//                         },
//                         child: Icon(Icons.date_range),
//                       ),
//                     )
//                 ),
//               ),
//               SizedBox(height: 15,),
//               TextFormField(
//                 controller: address,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Address',
//                   labelText: 'Address',
//                 ),
//
//               ),
//               SizedBox(height: 15,),
//               Column(
//                 children: [
//                   RadioListTile(
//                     title: Text('Male'),
//                     value: 'male',
//                     groupValue: genderGroupValue,
//                     onChanged: (value){
//                       setState(() {
//                         genderGroupValue = value!;
//                       });
//                     },
//                   ),
//
//                   RadioListTile(
//                     title: Text('Female'),
//                     value: 'female',
//                     groupValue: genderGroupValue,
//                     onChanged: (value){
//                       setState(() {
//                         genderGroupValue = value!;
//                       });
//                     },
//                   ),
//                   RadioListTile(
//                       title: Text('Other'),
//                       value: 'other',
//                       groupValue: genderGroupValue,
//                       onChanged: (value){
//                         setState(() {
//                           genderGroupValue = value!;
//                         });
//                       }
//                   )
//                 ],
//               ),
//               SizedBox(height: 15,),
//               Container(
//                 padding: EdgeInsets.only(left: 10,right: 10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                 ),
//                 child:  DropdownButton(
//                   value: dropDownValue,
//                   hint: dropDownValue == null ? Text('Select Hobbies') : Text(dropDownValue!,style: TextStyle(color: Colors.black87,fontSize: 16),),
//                   isExpanded: true,
//                   iconSize: 30,
//                   items: ['Cricket','Football','Singing','Dance'].map((String value){
//                     return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value)
//                     );
//                   },
//                   ).toList(),
//
//                   onChanged: (newValue){
//                     setState(() {
//                       dropDownValue = newValue!;
//                     });
//                   },
//
//                 ),
//               )
//
//             ],
//           ),
//         ),
//       );
//     );
//   }
// }
//
//
// // class StepperExample extends StatefulWidget {
// //
// //   const StepperExample({super.key});
// //
// //   @override
// //   State<StepperExample> createState() => _StepperExampleState();
// // }
// //
// // class _StepperExampleState extends State<StepperExample> {
// //
// //   // Box<UsersModel> getUsersBox(){
// //   //   return Hive.box<UsersModel>('users');
// //   // }
// //
// //   late final Box databox;
// //
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     databox = Hive.box('users');
// //   }
// //
// //   int currentIndex = 0;
// //   // final firstName = TextEditingController();
// //   // final lastName = TextEditingController();
// //   // final middleName = TextEditingController();
// //   // // final dateOfBirth = TextEditingController();
// //   // final address = TextEditingController();
// //   // // final value = TextEditingController();
// //   // final school = TextEditingController();
// //   // final college = TextEditingController();
// //   // final skills = TextEditingController();
// //   // final department = TextEditingController();
// //   // final percentage = TextEditingController();
// //
// //   // DateTime selectedDate = ;
// //   String? departmentValue;
// //   String genderGroupValue = 'male';
// //   String? dropDownValue;
// //   _showDate(BuildContext context) async{
// //     DateTime? pickedDate = await showDatePicker(
// //         initialDate: DateTime.now(),
// //         context: context,
// //         firstDate: DateTime(1970),
// //         lastDate: DateTime(2025)
// //     );
// //
// //     if(pickedDate != null){
// //       setState(() {
// //         // dateOfBirth = pickedDate.toLocal().toString().split(' ')[0];
// //       });
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return UserForm();
// //
// //     //   Stepper(
// //     //     currentStep: currentIndex,
// //     //     onStepCancel: currentIndex == 0 ? null : () => setState(() => currentIndex = currentIndex - 1),
// //     //
// //     //   onStepContinue: (){
// //     //         if(currentIndex == 2){
// //     //            UsersModel data =  UsersModel(firstName: firstName.text, middleName: middleName.text, lastName: lastName.text, dob: DateTime.now(), address: address.text, gender: genderGroupValue, hobbies: dropDownValue.toString(), school:school.text, college: college.text, skills: skills.text, department: departmentValue.toString(), percentage: percentage.text);
// //     //            databox.add(data);
// //     //            print('hello world');
// //     //            print(data);
// //     //         }
// //     //         if(currentIndex < 2){
// //     //           setState(() {
// //     //             currentIndex = currentIndex + 1;
// //     //           }
// //     //           );
// //     //         }
// //     //   },
// //     //
// //     //   onStepTapped: (int index){
// //     //       setState(() {
// //     //         currentIndex = index;
// //     //       });
// //     //   },
// //     //   steps: UserForm();
// //     //   // [
// //     //   //   Step(
// //     //   //       state : currentIndex > 0 ? StepState.complete : StepState.indexed,
// //     //   //       isActive : currentIndex >= 0,
// //     //   //       title: Text('Step 1'),
// //     //   //       content: Center(
// //     //   //         child: Container(
// //     //   //           child: Column(
// //     //   //             children: [
// //     //   //               Text('Personal Information',style: TextStyle(fontSize: 25),),
// //     //   //               SizedBox(height: 15,),
// //     //   //               TextFormField(
// //     //   //                 controller: firstName,
// //     //   //                 decoration: InputDecoration(
// //     //   //                     hintText: 'First Name',
// //     //   //                     labelText: 'First Name',
// //     //   //                     border: OutlineInputBorder()
// //     //   //                 ),
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               TextFormField(
// //     //   //                 controller: middleName,
// //     //   //                 decoration: InputDecoration(
// //     //   //                     border: OutlineInputBorder(),
// //     //   //                     hintText: 'Middle Name',
// //     //   //                     labelText: 'Middle Name'
// //     //   //                 ),
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               TextFormField(
// //     //   //                 controller: lastName,
// //     //   //                 decoration: InputDecoration(
// //     //   //                     border: OutlineInputBorder(),
// //     //   //                     hintText: 'Last Name',
// //     //   //                     labelText: 'Last Name'
// //     //   //                 ),
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               TextFormField(
// //     //   //                 // controller: dateOfBirth,
// //     //   //                 readOnly: true,
// //     //   //                 decoration: InputDecoration(
// //     //   //                     border: OutlineInputBorder(),
// //     //   //                     hintText: 'Date of Birth',
// //     //   //                     labelText: 'Date of Birth',
// //     //   //                     suffixIcon: Padding(
// //     //   //                       padding: const EdgeInsets.all(8.0),
// //     //   //                       child: ElevatedButton(
// //     //   //                         style: ElevatedButton.styleFrom(
// //     //   //                             padding: EdgeInsets.all(10),
// //     //   //                             backgroundColor: Colors.white,
// //     //   //                             side: BorderSide(color: Colors.white),
// //     //   //                             shadowColor: Colors.transparent
// //     //   //                         ),
// //     //   //                         onPressed: (){
// //     //   //                           _showDate(context);
// //     //   //                         },
// //     //   //                         child: Icon(Icons.date_range),
// //     //   //                       ),
// //     //   //                     )
// //     //   //                 ),
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               TextFormField(
// //     //   //                 controller: address,
// //     //   //                 decoration: InputDecoration(
// //     //   //                   border: OutlineInputBorder(),
// //     //   //                   hintText: 'Address',
// //     //   //                   labelText: 'Address',
// //     //   //                 ),
// //     //   //
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               Column(
// //     //   //                 children: [
// //     //   //                   RadioListTile(
// //     //   //                     title: Text('Male'),
// //     //   //                     value: 'male',
// //     //   //                     groupValue: genderGroupValue,
// //     //   //                     onChanged: (value){
// //     //   //                       setState(() {
// //     //   //                         genderGroupValue = value!;
// //     //   //                       });
// //     //   //                     },
// //     //   //                   ),
// //     //   //
// //     //   //                   RadioListTile(
// //     //   //                     title: Text('Female'),
// //     //   //                     value: 'female',
// //     //   //                     groupValue: genderGroupValue,
// //     //   //                     onChanged: (value){
// //     //   //                       setState(() {
// //     //   //                         genderGroupValue = value!;
// //     //   //                       });
// //     //   //                     },
// //     //   //                   ),
// //     //   //                   RadioListTile(
// //     //   //                       title: Text('Other'),
// //     //   //                       value: 'other',
// //     //   //                       groupValue: genderGroupValue,
// //     //   //                       onChanged: (value){
// //     //   //                         setState(() {
// //     //   //                           genderGroupValue = value!;
// //     //   //                         });
// //     //   //                        }
// //     //   //                   )
// //     //   //                 ],
// //     //   //               ),
// //     //   //               SizedBox(height: 15,),
// //     //   //               Container(
// //     //   //                 padding: EdgeInsets.only(left: 10,right: 10),
// //     //   //                 decoration: BoxDecoration(
// //     //   //                   color: Colors.white,
// //     //   //                 ),
// //     //   //                 child:  DropdownButton(
// //     //   //                   value: dropDownValue,
// //     //   //                   hint: dropDownValue == null ? Text('Select Hobbies') : Text(dropDownValue!,style: TextStyle(color: Colors.black87,fontSize: 16),),
// //     //   //                   isExpanded: true,
// //     //   //                   iconSize: 30,
// //     //   //                   items: ['Cricket','Football','Singing','Dance'].map((String value){
// //     //   //                     return DropdownMenuItem<String>(
// //     //   //                         value: value,
// //     //   //                         child: Text(value)
// //     //   //                     );
// //     //   //                   },
// //     //   //                   ).toList(),
// //     //   //
// //     //   //                   onChanged: (newValue){
// //     //   //                     setState(() {
// //     //   //                       dropDownValue = newValue!;
// //     //   //                     });
// //     //   //                   },
// //     //   //
// //     //   //                 ),
// //     //   //               )
// //     //   //
// //     //   //             ],
// //     //   //           ),
// //     //   //         ),
// //     //   //       )
// //     //   //   ),
// //     //   //   Step(
// //     //   //       state : currentIndex > 0 ? StepState.complete : StepState.indexed,
// //     //   //       isActive : currentIndex >= 0,
// //     //   //       title: Text('Step 2'),
// //     //   //       content: Column(
// //     //   //         children: [
// //     //   //           Text('Education Details',style: TextStyle(fontSize: 25),),
// //     //   //           SizedBox(height: 15,),
// //     //   //           TextFormField(
// //     //   //             controller: school,
// //     //   //             decoration: InputDecoration(
// //     //   //                 hintText: 'School Name',
// //     //   //                 labelText: 'School Name',
// //     //   //                 border: OutlineInputBorder()
// //     //   //             ),
// //     //   //           ),
// //     //   //           SizedBox(height: 15,),
// //     //   //           TextFormField(
// //     //   //             controller: college,
// //     //   //             decoration: InputDecoration(
// //     //   //                 hintText: 'College Name',
// //     //   //                 labelText: 'Collage Name',
// //     //   //                 border: OutlineInputBorder()
// //     //   //             ),
// //     //   //           ),
// //     //   //           SizedBox(height: 15,),
// //     //   //           TextFormField(
// //     //   //             controller: skills,
// //     //   //             decoration: InputDecoration(
// //     //   //                 hintText: 'Skills',
// //     //   //                 labelText: 'Skills',
// //     //   //                 border: OutlineInputBorder()
// //     //   //             ),
// //     //   //           ),
// //     //   //           SizedBox(height: 15,),
// //     //   //           Container(
// //     //   //             padding: EdgeInsets.all(8),
// //     //   //             decoration: BoxDecoration(
// //     //   //                 color: Colors.white
// //     //   //             ),
// //     //   //             child: DropdownButton(
// //     //   //               value: departmentValue,
// //     //   //               isExpanded: true,
// //     //   //               iconSize: 30,
// //     //   //               hint: departmentValue == null ? Text('Select Department') : Text(departmentValue!,style: TextStyle(fontSize: 16),),
// //     //   //               items: ['BSC', 'BCA', 'BCOM','BTECH'].map((depValue){
// //     //   //                 return DropdownMenuItem<String>(
// //     //   //                     value: depValue,
// //     //   //                     child: Text(depValue,style: TextStyle(fontSize: 16),)
// //     //   //                 );
// //     //   //               }).toList(),
// //     //   //
// //     //   //               onChanged: (depValue){
// //     //   //                 setState(() {
// //     //   //                   departmentValue = depValue!;
// //     //   //                 });
// //     //   //               },
// //     //   //             ),
// //     //   //           ),
// //     //   //           SizedBox(height: 15,),
// //     //   //           TextFormField(
// //     //   //             controller: percentage,
// //     //   //             keyboardType: TextInputType.number,
// //     //   //             decoration: InputDecoration(
// //     //   //                 hintText: 'Percentage',
// //     //   //                 labelText: 'Percentage',
// //     //   //                 border: OutlineInputBorder()
// //     //   //             ),
// //     //   //           )
// //     //   //         ],
// //     //   //       )
// //     //   //   ),
// //     //   //   Step(
// //     //   //       state : currentIndex > 0 ? StepState.complete : StepState.indexed,
// //     //   //       isActive : currentIndex >= 0,
// //     //   //       title: Text('Step 3'),
// //     //   //       content: Center(
// //     //   //     child: Text('Complate'),
// //     //   //   ))
// //     //   // ],
// //     // );
// //   }
// //
// //
// //   // List<Step> stepList() => [
// //   //   Step(state : currentIndex > 0 ? StepState.complete : StepState.indexed, isActive : currentIndex >= 0,title: Text('Step 1'),
// //   //       content: Center(
// //   //       child: Container(
// //   //       child: Column(
// //   //         children: [
// //   //           Text('Personal Information',style: TextStyle(fontSize: 25),),
// //   //           SizedBox(height: 15,),
// //   //           TextFormField(
// //   //             controller: firstName,
// //   //             decoration: InputDecoration(
// //   //                 hintText: 'First Name',
// //   //                 labelText: 'First Name',
// //   //                 border: OutlineInputBorder()
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           TextFormField(
// //   //             controller: middleName,
// //   //             decoration: InputDecoration(
// //   //                 border: OutlineInputBorder(),
// //   //                 hintText: 'Middle Name',
// //   //                 labelText: 'Middle Name'
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           TextFormField(
// //   //             controller: lastName,
// //   //             decoration: InputDecoration(
// //   //                 border: OutlineInputBorder(),
// //   //                 hintText: 'Last Name',
// //   //                 labelText: 'Last Name'
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           TextFormField(
// //   //             // controller: dateOfBirth,
// //   //             readOnly: true,
// //   //             decoration: InputDecoration(
// //   //                 border: OutlineInputBorder(),
// //   //                 hintText: 'Date of Birth',
// //   //                 labelText: 'Date of Birth',
// //   //                 suffixIcon: Padding(
// //   //                   padding: const EdgeInsets.all(8.0),
// //   //                   child: ElevatedButton(
// //   //                     style: ElevatedButton.styleFrom(
// //   //                         padding: EdgeInsets.all(10),
// //   //                         backgroundColor: Colors.white,
// //   //                         side: BorderSide(color: Colors.white),
// //   //                         shadowColor: Colors.transparent
// //   //                     ),
// //   //                     onPressed: (){
// //   //                       _showDate(context);
// //   //                     },
// //   //                     child: Icon(Icons.date_range),
// //   //                   ),
// //   //                 )
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           TextFormField(
// //   //             controller: address,
// //   //             decoration: InputDecoration(
// //   //               border: OutlineInputBorder(),
// //   //               hintText: 'Address',
// //   //               labelText: 'Address',
// //   //             ),
// //   //
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           Column(
// //   //             children: [
// //   //               RadioListTile(
// //   //                 title: Text('Male'),
// //   //                 value: 'male',
// //   //                 groupValue: genderGroupValue,
// //   //                 onChanged: (value){
// //   //                   setState(() {
// //   //                     genderGroupValue = value!;
// //   //                   });
// //   //                 },
// //   //               ),
// //   //
// //   //               RadioListTile(
// //   //                 title: Text('Female'),
// //   //                 value: 'female',
// //   //                 groupValue: genderGroupValue,
// //   //                 onChanged: (value){
// //   //                   setState(() {
// //   //                     genderGroupValue = value!;
// //   //                   });
// //   //                 },
// //   //               ),
// //   //               RadioListTile(
// //   //                   title: Text('Other'),
// //   //                   value: 'other',
// //   //                   groupValue: genderGroupValue,
// //   //                   onChanged: (value){
// //   //                     setState(() {
// //   //                       genderGroupValue = value!;
// //   //                     });
// //   //                   }
// //   //               )
// //   //             ],
// //   //           ),
// //   //           SizedBox(height: 15,),
// //   //           Container(
// //   //             padding: EdgeInsets.only(left: 10,right: 10),
// //   //             decoration: BoxDecoration(
// //   //               color: Colors.white,
// //   //             ),
// //   //             child:  DropdownButton(
// //   //               value: dropDownValue,
// //   //               hint: dropDownValue == null ? Text('Select Hobbies') : Text(dropDownValue!,style: TextStyle(color: Colors.black87,fontSize: 16),),
// //   //               isExpanded: true,
// //   //               iconSize: 30,
// //   //               items: ['Cricket','Football','Singing','Dance'].map((String value){
// //   //                 return DropdownMenuItem<String>(
// //   //                     value: value,
// //   //                     child: Text(value)
// //   //                 );
// //   //               },
// //   //               ).toList(),
// //   //
// //   //               onChanged: (newValue){
// //   //                 setState(() {
// //   //                   dropDownValue = newValue!;
// //   //                 });
// //   //               },
// //   //
// //   //             ),
// //   //           )
// //   //
// //   //         ],
// //   //       ),
// //   //     ),
// //   //   )
// //   //   ),
// //   //   Step(state : currentIndex > 1 ? StepState.complete : StepState.indexed, isActive : currentIndex >= 1, title: Text('Step 2'), content: Column(
// //   //     children: [
// //   //       Text('Education Details',style: TextStyle(fontSize: 25),),
// //   //       SizedBox(height: 15,),
// //   //       TextFormField(
// //   //         controller: school,
// //   //         decoration: InputDecoration(
// //   //             hintText: 'School Name',
// //   //             labelText: 'School Name',
// //   //             border: OutlineInputBorder()
// //   //         ),
// //   //       ),
// //   //       SizedBox(height: 15,),
// //   //       TextFormField(
// //   //         controller: college,
// //   //         decoration: InputDecoration(
// //   //             hintText: 'College Name',
// //   //             labelText: 'Collage Name',
// //   //             border: OutlineInputBorder()
// //   //         ),
// //   //       ),
// //   //       SizedBox(height: 15,),
// //   //       TextFormField(
// //   //         controller: skills,
// //   //         decoration: InputDecoration(
// //   //             hintText: 'Skills',
// //   //             labelText: 'Skills',
// //   //             border: OutlineInputBorder()
// //   //         ),
// //   //       ),
// //   //       SizedBox(height: 15,),
// //   //       Container(
// //   //         padding: EdgeInsets.all(8),
// //   //         decoration: BoxDecoration(
// //   //             color: Colors.white
// //   //         ),
// //   //         child: DropdownButton(
// //   //           value: departmentValue,
// //   //           isExpanded: true,
// //   //           iconSize: 30,
// //   //           hint: departmentValue == null ? Text('Select Department') : Text(departmentValue!,style: TextStyle(fontSize: 16),),
// //   //           items: ['BSC', 'BCA', 'BCOM','BTECH'].map((depValue){
// //   //             return DropdownMenuItem<String>(
// //   //                 value: depValue,
// //   //                 child: Text(depValue,style: TextStyle(fontSize: 16),)
// //   //             );
// //   //           }).toList(),
// //   //
// //   //           onChanged: (depValue){
// //   //             setState(() {
// //   //               departmentValue = depValue!;
// //   //             });
// //   //           },
// //   //         ),
// //   //       ),
// //   //       SizedBox(height: 15,),
// //   //       TextFormField(
// //   //         controller: percentage,
// //   //         keyboardType: TextInputType.number,
// //   //         decoration: InputDecoration(
// //   //             hintText: 'Percentage',
// //   //             labelText: 'Percentage',
// //   //             border: OutlineInputBorder()
// //   //         ),
// //   //       )
// //   //     ],
// //   //   )),
// //   //   Step(state : currentIndex > 2 ? StepState.complete : StepState.indexed, isActive : currentIndex >= 2,title: Text('Step 3'), content: Center(child: Text('Complate'),))
// //   //
// //   // ];
// //
// // }
// //
// // // class Step1Form extends StatefulWidget {
// // //   const Step1Form({super.key});
// // //
// // //   @override
// // //   State<Step1Form> createState() => _Step1FormState();
// // // }
// // //
// // // class _Step1FormState extends State<Step1Form> {
// // //
// // //   final lastName = TextEditingController();
// // //   final middleName = TextEditingController();
// // //   final dateOfBirth = TextEditingController();
// // //   final address = TextEditingController();
// // //   final hobbies = TextEditingController();
// // //
// // //
// // //   // DateTime selectedDate = ;
// // //
// // //   String genderGroupValue = 'male';
// // //   String dropDownValue = 'Select Hobbies';
// // //
// // //   _showDate(BuildContext context) async{
// // //     DateTime? pickedDate = await showDatePicker(
// // //         initialDate: DateTime.now(),
// // //         context: context,
// // //         firstDate: DateTime(1970),
// // //         lastDate: DateTime(2025)
// // //     );
// // //
// // //     if(pickedDate != null){
// // //       setState(() {
// // //         dateOfBirth.text = pickedDate.toString().split(' ',)[0];
// // //       });
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Center(
// // //       child: Container(
// // //         child: Column(
// // //           children: [
// // //             Text('Personal Information',style: TextStyle(fontSize: 25),),
// // //             SizedBox(height: 15,),
// // //             TextFormField(
// // //               // controller: firstName,
// // //               decoration: InputDecoration(
// // //                   hintText: 'First Name',
// // //                   labelText: 'First Name',
// // //                   border: OutlineInputBorder()
// // //               ),
// // //             ),
// // //             SizedBox(height: 15,),
// // //             TextFormField(
// // //               controller: middleName,
// // //               decoration: InputDecoration(
// // //                   border: OutlineInputBorder(),
// // //                   hintText: 'Middle Name',
// // //                   labelText: 'Middle Name'
// // //               ),
// // //             ),
// // //             SizedBox(height: 15,),
// // //             TextFormField(
// // //               controller: lastName,
// // //               decoration: InputDecoration(
// // //                   border: OutlineInputBorder(),
// // //                   hintText: 'Last Name',
// // //                   labelText: 'Last Name'
// // //               ),
// // //             ),
// // //             SizedBox(height: 15,),
// // //             TextFormField(
// // //               controller: dateOfBirth,
// // //
// // //               decoration: InputDecoration(
// // //                   border: OutlineInputBorder(),
// // //                   hintText: 'Date of Birth',
// // //                   labelText: 'Date of Birth',
// // //                   suffixIcon: Padding(
// // //                     padding: const EdgeInsets.all(8.0),
// // //                     child: ElevatedButton(
// // //                       style: ElevatedButton.styleFrom(
// // //                           padding: EdgeInsets.all(10),
// // //                           backgroundColor: Colors.white,
// // //                           side: BorderSide(color: Colors.white),
// // //                           shadowColor: Colors.transparent
// // //                       ),
// // //                       onPressed: (){
// // //                         _showDate(context);
// // //                       },
// // //                       child: Icon(Icons.date_range),
// // //                     ),
// // //                   )
// // //               ),
// // //             ),
// // //             SizedBox(height: 15,),
// // //             TextFormField(
// // //               controller: address,
// // //               decoration: InputDecoration(
// // //                 border: OutlineInputBorder(),
// // //                 hintText: 'Address',
// // //                 labelText: 'Address',
// // //               ),
// // //
// // //             ),
// // //             SizedBox(height: 15,),
// // //             Column(
// // //               children: [
// // //                 RadioListTile(
// // //                   title: Text('Male'),
// // //                   value: 'male',
// // //                   groupValue: genderGroupValue,
// // //                   onChanged: (value){
// // //                     setState(() {
// // //                       genderGroupValue = value!;
// // //                     });
// // //                   },
// // //                 ),
// // //
// // //                 RadioListTile(
// // //                   title: Text('Female'),
// // //
// // //                   value: 'female',
// // //                   groupValue: genderGroupValue,
// // //                   onChanged: (value){
// // //                     setState(() {
// // //                       genderGroupValue = value!;
// // //                     });
// // //                   },
// // //                 )
// // //               ],
// // //             ),
// // //             SizedBox(height: 15,),
// // //             Container(
// // //               padding: EdgeInsets.only(left: 10,right: 10),
// // //               decoration: BoxDecoration(
// // //                 color: Colors.white,
// // //               ),
// // //               child:  DropdownButton(
// // //                 hint: dropDownValue == null ? Text('Select Hobbies') : Text(dropDownValue,style: TextStyle(color: Colors.black87,fontSize: 16),),
// // //                 isExpanded: true,
// // //                 iconSize: 30,
// // //                 items: ['Cricket','Football','Singing','Dance'].map((String value){
// // //                   return DropdownMenuItem<String>(
// // //                       value: value,
// // //                       child: Text(value)
// // //                   );
// // //                 },
// // //                 ).toList(),
// // //
// // //                 onChanged: (value){
// // //                   setState(() {
// // //                     dropDownValue = value!;
// // //                   });
// // //                 },
// // //
// // //               ),
// // //             )
// // //
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
//
//
