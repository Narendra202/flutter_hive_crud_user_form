import 'package:hive/hive.dart';
part 'users.g.dart';
@HiveType(typeId: 0)
class UsersModel  extends HiveObject{
  
 @HiveField(0) 
 String firstName;
 
 @HiveField(1)
 String lastName;

 @HiveField(2)
 String middleName;

 @HiveField(3)
 DateTime dob;

 @HiveField(4)
 String address;

 @HiveField(5)
 String gender;

 @HiveField(6)
 String hobbies;

 UsersModel({required this.firstName,required this.middleName, required this.lastName, required this.dob, required this.address, required this.gender,required this.hobbies
         }
       );

}