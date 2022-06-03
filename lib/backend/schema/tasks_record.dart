import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tasks_record.g.dart';

abstract class TasksRecord implements Built<TasksRecord, TasksRecordBuilder> {
  static Serializer<TasksRecord> get serializer => _$tasksRecordSerializer;

  @nullable
  String get title;

  @nullable
  String get description;

  @nullable
  DateTime get deadline;

  @nullable
  String get validity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(TasksRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..validity = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('tasks')
          : FirebaseFirestore.instance.collectionGroup('tasks');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('tasks').doc();

  static Stream<TasksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TasksRecord._();
  factory TasksRecord([void Function(TasksRecordBuilder) updates]) =
      _$TasksRecord;

  static TasksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTasksRecordData({
  String title,
  String description,
  DateTime deadline,
  String validity,
}) =>
    serializers.toFirestore(
        TasksRecord.serializer,
        TasksRecord((t) => t
          ..title = title
          ..description = description
          ..deadline = deadline
          ..validity = validity));
