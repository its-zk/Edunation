import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edunation/modules/common/models/university_model.dart';
import 'package:edunation/modules/home/models/ambassador_model.dart';
import 'package:edunation/modules/home/models/eligibility_model.dart';
import 'package:edunation/modules/home/models/faculty_model.dart';
import 'package:edunation/modules/home/models/fee_structure_model.dart';

class HomeRepo {
  final _firestore = FirebaseFirestore.instance;

  Future<List<UniversityModel>> getAllUniversities() async {
    try {
      final snapshot = await _firestore.collection("universities").get();

      if (snapshot.docs.isNotEmpty) {
        return snapshot.docs
            .map((e) => UniversityModel.fromJson(e.data()))
            .toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> getProgramDetails(
      {required String uniId, required String programName}) async {
    try {
      final snapshot = await _firestore
          .collection("programs")
          .where("universityId", isEqualTo: uniId)
          .where("name", isEqualTo: programName)
          .get();

      if (snapshot.docs.isNotEmpty) {
        return snapshot.docs.first.id;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<FeeStructureModel> getFeeStructure({required String docId}) async {
    try {
      final snapshot = await _firestore
          .collection("programs")
          .doc(docId)
          .collection("fee-structure")
          .get();

      return FeeStructureModel.fromJson(snapshot.docs.first.data());
    } catch (e) {
      rethrow;
    }
  }

  Future<EligibilityModel> getEligibility({required String docId}) async {
    try {
      final snapshot = await _firestore
          .collection("programs")
          .doc(docId)
          .collection("eligibility")
          .get();

      return EligibilityModel.fromJson(snapshot.docs.first.data());
    } catch (e) {
      rethrow;
    }
  }

  Future<FacultyModel> getFaculty({required String docId}) async {
    try {
      final snapshot = await _firestore
          .collection("programs")
          .doc(docId)
          .collection("faculty")
          .get();

      return FacultyModel.fromJson(snapshot.docs.first.data());
    } catch (e) {
      rethrow;
    }
  }

  Future<AmbassadorModel> getAmbassador(
      {required String programName, required String universityId}) async {
    try {
      final snapshot = await _firestore
          .collection("ambassadors")
          .where("programName", isEqualTo: programName)
          .where("universityId", isEqualTo: universityId)
          .get();

      if (snapshot.docs.isEmpty) {
        throw "An error occured";
      } else {
        return AmbassadorModel.fromJson(snapshot.docs.first.data());
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<UniversityModel>> getUniversities(
      {required String programName}) async {
    try {
      final snapshot = await _firestore
          .collection("universities")
          .where("programs", arrayContainsAny: [programName]).get();

      if (snapshot.docs.isEmpty) {
        throw "An error occured";
      } else {
        return snapshot.docs
            .map((e) => UniversityModel.fromJson(e.data()))
            .toList();
      }
    } catch (e) {
      rethrow;
    }
  }
}
