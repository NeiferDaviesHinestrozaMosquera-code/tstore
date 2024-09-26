// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:tstore/utils/formatters/formatter.dart';

// class UserModel {
//   final String id;
//   final String userName;
//   final String email;
//   String firstName;
//   String lastName;
//   String phoneNumber;
//   String profilePicture;

//   UserModel(Map map, {
//     required this.id,
//     required this.userName,
//     required this.email,
//     required this.firstName,
//     required this.lastName,
//     required this.phoneNumber,
//     required this.profilePicture,
//   });
//    String get fullName => '$firstName $lastName';

//   String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

//   static List<String> nameParts(fullName) => fullName.split(" ");

//   static String generateUsername(fullName) {
//     List<String> nameParts = fullName.split(" ");
//     String firstName = nameParts[0].toLowerCase();
//     String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

//     String camelCaseUsername = "$firstName$lastName"; // Combine first and last name
//     String usernameWithPrefix = "cwt_$camelCaseUsername"; // Add "cwt_" prefix
//     return usernameWithPrefix;
//   }

//   // Static function to create an empty user model.
//   static UserModel empty() => UserModel(
//       id: "",
//       firstName: "",
//       lastName: "",
//       userName: "",
//       email: "",
//       phoneNumber: "",
//       profilePicture: "");

//   // Convert model to JSON structure for storing data in Firebase.
//   Map<String, dynamic> toJson() {
//     return {
//       'FirstName': firstName,
//       'LastName': lastName,
//       'Username': userName,
//       'Email': email,
//       'PhoneNumber': phoneNumber,
//       'ProfilePicture': profilePicture,
//     };
//   }

//   // Factory method to create a UserModel from a Firebase document snapshot.
//   factory UserModel.fromSnapshot(
//       DocumentSnapshot<Map<String, dynamic>> document) {
//     final data = document.data()!;
//     return UserModel(
//       id: document.id,
//       firstName: data['FirstName'] ?? "",
//       lastName: data['LastName'] ?? "",
//       userName: data['Username'] ?? "",
//       email: data['Email'] ?? "",
//       phoneNumber: data['PhoneNumber'] ?? "",
//       profilePicture: data['ProfilePicture'] ?? "",
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tstore/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String userName;
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String profilePicture;

  UserModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(String fullName) => fullName.split(" ");
  static String generateUsername(String fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
    id: "",
    firstName: "",
    lastName: "",
    userName: "",
    email: "",
    phoneNumber: "",
    profilePicture: "",
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      userName: data['userName'] ?? "",
      email: data['email'] ?? "",
      firstName: data['firstName'] ?? "",
      lastName: data['lastName'] ?? "",
      phoneNumber: data['phoneNumber'] ?? "",
      profilePicture: data['profilePicture'] ?? "",
    );
  }
}
