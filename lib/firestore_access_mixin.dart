import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirestoreAccessMixin {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  String get version => '1';

  DocumentReference get root => firestore.collection('versions').doc(version);

  // 実際には Course と Producer は両方とも Top にある
  CollectionReference<Map<String, dynamic>> coursesOf(String areaId, String producerId) =>
      root.collection('areas').doc(areaId).collection('producers').doc(producerId).collection('courses');
}
