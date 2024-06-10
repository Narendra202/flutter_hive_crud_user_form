import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hive_crud_narendra/models/users.dart';
import 'package:flutter_hive_crud_narendra/screens/user_form.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {

  late Box databox;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    databox = Hive.box('users');
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: databox.listenable(),
        builder: (context, databox , _){
          var data = databox.values.toList().cast<UsersModel>();
          return ListView.builder(
              itemCount: databox.length,
              itemBuilder: (context, index){
                return Card(
                 child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(data[index].firstName.toString()),
                                  Text(data[index].middleName.toString()),

                                ],
                              ),
                              Row(
                                children: [
                                  Text(data[index].lastName.toString()),
                                  Text(data[index].dob.toString()),

                                ],
                              ),
                              Row(
                                children: [
                                  Text(data[index].address.toString()),
                                  Text(data[index].gender.toString()),
                                  Text(data[index].hobbies.toString()),

                                ],
                              )
                              // Row(
                              //   children: [
                              //     Text(data[index].hobbies.toString()),
                              //     Text(data[index].school.toString()),
                              //     Text(data[index].college.toString()),
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Text(data[index].skills.toString()),
                              //     Text(data[index].department.toString()),
                              //     Text(data[index].percentage.toString()),
                              //   ],
                              // )
                            ],
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                                _deleteUser(data[index]);
                            },
                            child: Icon(Icons.delete,color: Colors.red,),
                          ),
                          SizedBox(width: 15,),
                          InkWell(
                            onTap: (){
                              _editUser(data[index],index);
                            },
                            child: Icon(Icons.edit),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
              }
          );
        }

    );
  }
  _deleteUser(UsersModel usersModel) async{
        await usersModel.delete();
  }

  _editUser(UsersModel usersModel, int index){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserForm(userModel:usersModel)
      ),
    );

  }
}


