// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calss.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddDataAdapter extends TypeAdapter<AddData> {
  @override
  final int typeId = 1;

  @override
  AddData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddData(
      fields[1] as String?,
      fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AddData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.keyid1)
      ..writeByte(1)
      ..write(obj.textdata);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
