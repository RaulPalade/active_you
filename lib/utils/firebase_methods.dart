import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseMethods {
  Future<bool> addNewDocument(
      String collectionPath, String? id, Object data) async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionPath);
      collection.doc(id).set(data);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> addDocToSubCollection(
    String collectionPath,
    String idCollection,
    String subCollection,
    String subDocumentId,
    Object data,
  ) async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionPath);
      DocumentReference documentReference = collection.doc(idCollection);

      CollectionReference subCollectionRef =
          documentReference.collection(subCollection);

      // Utilizza set invece di add per specificare l'ID del subdocumento
      await subCollectionRef.doc(subDocumentId).set(data);
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> updateSubDocument(
      String collectionPath,
      String mainDocumentId,
      String subCollection,
      String subDocumentId,
      Map<Object, Object?> data) async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionPath);
      CollectionReference subCollectionRef =
          collection.doc(mainDocumentId).collection(subCollection);
      await subCollectionRef.doc(subDocumentId).update(data);

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> addAllSubcollections(DocumentReference docRef,
      String collectionName, List<dynamic>? dataList) async {
    try {
      if (dataList != null && dataList.isNotEmpty) {
        final subCollectionRef = docRef.collection(collectionName);

        await subCollectionRef.get().then((snapshot) {
          for (QueryDocumentSnapshot doc in snapshot.docs) {
            doc.reference.delete();
          }
        });

        // Aggiungi tutti gli elementi della lista come documenti nella sottocollezione
        for (var i = 0; i < dataList.length; i++) {
          await subCollectionRef.add({'item': dataList[i]});
        }
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> removeDocumentById(
      String collectionPath, String documentId) async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionPath);
      await collection.doc(documentId).delete();

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> updateMainDocument(String collectionPath, String documentId,
      Map<Object, Object?> data) async {
    try {
      CollectionReference collection =
          FirebaseFirestore.instance.collection(collectionPath);
      await collection.doc(documentId).update(data);

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<DocumentSnapshot> getDocumentById(
      String collectionPath, String documentId) async {
    try {
      return await FirebaseFirestore.instance
          .collection(collectionPath)
          .doc(documentId)
          .get();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<QuerySnapshot> getSubCollection(
      String collectionPath, String documentId, String subCollection) async {
    try {
      return await FirebaseFirestore.instance
          .collection(collectionPath)
          .doc(documentId)
          .collection(subCollection)
          .get();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<DocumentSnapshot>> getAllDocuments(String collectionPath) async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(collectionPath).get();
      return querySnapshot.docs;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<List<DocumentSnapshot>> getDocumentsWithQuery(
      String collectionPath, String field, dynamic value) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection(collectionPath)
          .where(field, isEqualTo: value)
          .get();
      return querySnapshot.docs;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Stream<QuerySnapshot> listenToCollection(String collectionPath) {
    return FirebaseFirestore.instance.collection(collectionPath).snapshots();
  }
}
