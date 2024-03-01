import 'dart:convert';

GetAllTranslationsModel getAllTranslationsModelFromJson(String str) =>
    GetAllTranslationsModel.fromJson(json.decode(str));

String getAllTranslationsModelToJson(GetAllTranslationsModel data) =>
    json.encode(data.toJson());

class GetAllTranslationsModel {
  final int status;
  final String message;
  final List<GetAllTranslationsData> data;

  GetAllTranslationsModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory GetAllTranslationsModel.fromJson(Map<String, dynamic> json) =>
      GetAllTranslationsModel(
        status: json["status"],
        message: json["message"],
        data: List<GetAllTranslationsData>.from(
            json["data"].map((x) => GetAllTranslationsData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class GetAllTranslationsData {
  final int id;
  final String key;
  final String english;
  final String german;
  final String hindi;
  final String spanish;
  final String french;

  GetAllTranslationsData({
    required this.id,
    required this.key,
    required this.english,
    required this.german,
    required this.hindi,
    required this.spanish,
    required this.french,
  });

  factory GetAllTranslationsData.fromJson(Map<String, dynamic> json) =>
      GetAllTranslationsData(
        id: json["id"],
        key: json["key"],
        english: json["English"],
        german: json["German"],
        hindi: json["Hindi"],
        spanish: json["Spanish"],
        french: json["French"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "English": english,
        "German": german,
        "Hindi": hindi,
        "Spanish": spanish,
        "French": french,
      };
}
