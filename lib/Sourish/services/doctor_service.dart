// lib/services/doctor_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screens/doctor_model.dart';

class DoctorService {
  final String apiUrl = "http://127.0.0.1:8000/doctors/";
  // final String apiUrl = "http://10.0.2.2:8000/doctors/";

  Future<List<Doctor>> fetchDoctors() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      List<Doctor> doctors = body.map((dynamic item) => Doctor.fromJson(item)).toList();
      return doctors;
    } else {
      throw "Failed to load doctors";
    }
  }

  Future<List<Review>> fetchReviews(String doctorId) async {
    final response = await http.get(Uri.parse('${apiUrl}doctor_reviews/$doctorId/'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Review.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load reviews');
    }
  }

  Future<bool> submitReview(String doctorId, String patientId, String reviewText, int rating) async {
    final response = await http.post(
      Uri.parse("http://127.0.0.1:8000/submit_review/"),
      // Uri.parse("http://10.0.2.2:8000/submit_review/"),
      headers: {"Content-Type": "application/json"},

      body: json.encode({
        'doctor': doctorId,
        'patient': patientId,
        'review_comment': reviewText,
        'rating_stars': rating,
        // 'image': imageId,
      }),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed to submit review');
    }
  }
}

class Review {
  final String staticId;
  final String patient;
  final String comment;
  final int rating;

  Review({
    required this.staticId,
    required this.patient,
    required this.comment,
    required this.rating,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      staticId: json['static_id'],
      patient: json['patient_name'],
      comment: json['review_comment'],
      rating: json['rating_stars'],
    );
  }
}

// class DoctorService {
//   final String apiUrl = "http://127.0.0.1:8000/doctors/";
//   // final String apiUrl = "http://10.0.2.2:8000/doctors/";
  // Future<List<Doctor>> fetchDoctors() async {
  //   final response = await http.get(Uri.parse(apiUrl));
  //   if (response.statusCode == 200) {
  //     List<dynamic> body = json.decode(response.body);
  //     List<Doctor> doctors = body.map((dynamic item) => Doctor.fromJson(item)).toList();
  //     return doctors;
  //   } else {
  //     throw "Failed to load doctors";
  //   }
  // }
// }

// class DoctorService {
//   final String apiUrl = "http://127.0.0.1:8000/doctors/";
//   // final String apiUrl = "http://10.0.2.2:8000/doctors/";
//   // ... other methods ...
//   Future<List<Doctor>> fetchDoctors() async {
//     final response = await http.get(Uri.parse(apiUrl));
//     if (response.statusCode == 200) {
//       List<dynamic> body = json.decode(response.body);
//       List<Doctor> doctors = body.map((dynamic item) => Doctor.fromJson(item)).toList();
//       return doctors;
//     } else {
//       throw "Failed to load doctors";
//     }
//   }

//   Future<List<Review>> fetchReviews(String doctorId) async {
//     final response = await http.get(Uri.parse('${apiUrl}doctor_reviews/$doctorId/'));
//     if (response.statusCode == 200) {
//       List<dynamic> body = json.decode(response.body);
//       return body.map((dynamic item) => Review.fromJson(item)).toList();
//     } else {
//       throw Exception('Failed to load reviews');
//     }
//   }
// }
// Future<bool> submitReview(String doctorId, String patientId, String reviewText, int rating) async {
//   final response = await http.post(
//     Uri.parse("http://127.0.0.1:8000/submit_review/"),
//     headers: {"Content-Type": "application/json"},
//     body: json.encode({
//       'doctor_id': doctorId,
//       'patient_id': patientId,
//       'review_text': reviewText,
//       'rating': rating,
//     }),
//   );

//   if (response.statusCode == 201) {
//     return true;
//   } else {
//     throw Exception('Failed to submit review');
//   }
// }

