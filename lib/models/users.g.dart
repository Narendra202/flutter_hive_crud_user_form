// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsersModelAdapter extends TypeAdapter<UsersModel> {
  @override
  final int typeId = 0;

  @override
  UsersModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UsersModel(
      firstName: fields[0] as String,
      middleName: fields[2] as String,
      lastName: fields[1] as String,
      dob: fields[3] as DateTime,
      address: fields[4] as String,
      gender: fields[5] as String,
      hobbies: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UsersModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.middleName)
      ..writeByte(3)
      ..write(obj.dob)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.hobbies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
