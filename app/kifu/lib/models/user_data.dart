import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
    required this.userId,
    required this.createdOn,
    required this.identifier,
    required this.identifierType,
    required this.verificationToken,
    required this.customFieldInputValues,
  });

  String userId;
  DateTime createdOn;
  String identifier;
  String identifierType;
  String verificationToken;
  CustomFieldInputValues customFieldInputValues;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["user_id"],
        createdOn: DateTime.parse(json["created_on"]),
        identifier: json["identifier"],
        identifierType: json["identifier_type"],
        verificationToken: json["verification_token"],
        customFieldInputValues:
            CustomFieldInputValues.fromJson(json["customFieldInputValues"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "created_on": createdOn.toIso8601String(),
        "identifier": identifier,
        "identifier_type": identifierType,
        "verification_token": verificationToken,
        "customFieldInputValues": customFieldInputValues.toJson(),
      };
}

class CustomFieldInputValues {
  CustomFieldInputValues();

  factory CustomFieldInputValues.fromJson(Map<String, dynamic> json) =>
      CustomFieldInputValues();

  Map<String, dynamic> toJson() => {};
}
