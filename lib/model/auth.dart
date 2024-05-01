import 'dart:convert';

Auth authFromJson(String str) => Auth.fromJson(json.decode(str));

String authToJson(Auth data) => json.encode(data.toJson());

class Auth {
    String accessToken;
    int expiresIn;
    String tokenType;

    Auth({
        required this.accessToken,
        required this.expiresIn,
        required this.tokenType,
    });

    factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        accessToken: json["access_token"],
        expiresIn: json["expires_in"],
        tokenType: json["token_type"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "expires_in": expiresIn,
        "token_type": tokenType,
    };
}