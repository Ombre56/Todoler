import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task_category_record.g.dart';

abstract class TaskCategoryRecord
    implements Built<TaskCategoryRecord, TaskCategoryRecordBuilder> {
  static Serializer<TaskCategoryRecord> get serializer =>
      _$taskCategoryRecordSerializer;

  @nullable
  String get veryImportant;

  @nullable
  String get important;

  @nullable
  String get notSoImportant;

  @nullable
  DocumentReference get tasks;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TaskCategoryRecordBuilder builder) => builder
    ..veryImportant = ''
    ..important = ''
    ..notSoImportant = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('task_category');

  static Stream<TaskCategoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TaskCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TaskCategoryRecord._();
  factory TaskCategoryRecord(
          [void Function(TaskCategoryRecordBuilder) updates]) =
      _$TaskCategoryRecord;

  static TaskCategoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTaskCategoryRecordData({
  String veryImportant,
  String important,
  String notSoImportant,
  DocumentReference tasks,
}) =>
    serializers.toFirestore(
        TaskCategoryRecord.serializer,
        TaskCategoryRecord((t) => t
          ..veryImportant = veryImportant
          ..important = important
          ..notSoImportant = notSoImportant
          ..tasks = tasks));
