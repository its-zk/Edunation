// import 'package:cloud_firestore/cloud_firestore.dart';

// class Repo {
//   final _firestore = FirebaseFirestore.instance;

//   Future<void> uploadFeeStructure() async {
//     try {
//       String docId = "4wA5XSlcNR2QbzHvz9v0";

//       await _firestore
//           .collection("programs")
//           .doc(docId)
//           .collection("eligibility")
//           .doc()
//           .set({
//         "eligibility": [
//           "FA/FSc or Equivalent qualifications with at least second division, securing 45% marks in aggregate.",
//           "Qualifying the admission test and interview is compulsory. A candidate scoring less than 40% marks in the test and interview will stand disqualified for admission.",
//           "Candidates who have secured at least 40% in the Institute’s own test/NTS-NAT or any other test required by HEC are also eligible to apply.",
//           "The merit of a candidate shall be measured by a 50 % weightage to the marks obtained in HSSC or equivalent, 40 % to the marks obtained in the written test, and 10% to the marks obtained in the interview.",
//           "A candidate shall be given a special credit of thirty marks for admission in each program mentioned above if he/she has studied Economics / Psychology / Computers / English Advance and Home Economics at intermediate level or has done A level.",
//           "A candidate shall be given a special credit of sixty marks for admission in each program mentioned above if he/she has studied Economics/Psychology/Computers/ English Advance in combination with each other or in combination with Statistics at intermediate level or has done A level business studies.",
//           "The Hafiz Quran shall be given a special credit of 20 marks.",
//           "The credit marks shall be added to the marks obtained at HSSC or equivalent, subject to fulfilment of basic eligibility criteria of 45% marks."
//         ],
//       });
//     } catch (e) {}
//   }
// }
