// To parse this JSON data, do
//
//     final modelKosakata = modelKosakataFromJson(jsonString);

import 'dart:convert';

ModelKosakata modelKosakataFromJson(String str) => ModelKosakata.fromJson(json.decode(str));

String modelKosakataToJson(ModelKosakata data) => json.encode(data.toJson());

class ModelKosakata {
    bool isSuccess;
    String message;
    List<Datum> data;

    ModelKosakata({
        required this.isSuccess,
        required this.message,
        required this.data,
    });

    factory ModelKosakata.fromJson(Map<String, dynamic> json) => ModelKosakata(
        isSuccess: json["is_success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "is_success": isSuccess,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String id;
    String kosakata;
    String arti;
    String detail;

    Datum({
        required this.id,
        required this.kosakata,
        required this.arti,
        required this.detail,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        kosakata: json["kosakata"],
        arti: json["arti"],
        detail: json["detail"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "kosakata": kosakata,
        "arti": arti,
        "detail": detail,
    };
}
