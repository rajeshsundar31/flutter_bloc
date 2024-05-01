// To parse this JSON data, do
//
//     final globalconfig = globalconfigFromJson(jsonString);

import 'dart:convert';

Globalconfig globalconfigFromJson(String str) => Globalconfig.fromJson(json.decode(str));

String globalconfigToJson(Globalconfig data) => json.encode(data.toJson());

class Globalconfig {
    GlobalconfigClass globalconfig;

    Globalconfig({
        required this.globalconfig,
    });

    factory Globalconfig.fromJson(Map<String, dynamic> json) => Globalconfig(
        globalconfig: GlobalconfigClass.fromJson(json["globalconfig"]),
    );

    Map<String, dynamic> toJson() => {
        "globalconfig": globalconfig.toJson(),
    };
}

class GlobalconfigClass {
    String addressstructure;
    String countrycode;
    String countrycurrency;
    String countrymobilecode;
    String currencysymbol;
    String kyctypeid;
    List<String> languagelist;
    String mobilenumberlength;
    String mobilenumberregex;
    List<String> postalcodeandlocationlist;
    String postalcoderegex;

    GlobalconfigClass({
        required this.addressstructure,
        required this.countrycode,
        required this.countrycurrency,
        required this.countrymobilecode,
        required this.currencysymbol,
        required this.kyctypeid,
        required this.languagelist,
        required this.mobilenumberlength,
        required this.mobilenumberregex,
        required this.postalcodeandlocationlist,
        required this.postalcoderegex,
    });

    factory GlobalconfigClass.fromJson(Map<String, dynamic> json) => GlobalconfigClass(
        addressstructure: json["addressstructure"],
        countrycode: json["countrycode"],
        countrycurrency: json["countrycurrency"],
        countrymobilecode: json["countrymobilecode"],
        currencysymbol: json["currencysymbol"],
        kyctypeid: json["kyctypeid"],
        languagelist: List<String>.from(json["languagelist"].map((x) => x)),
        mobilenumberlength: json["mobilenumberlength"],
        mobilenumberregex: json["mobilenumberregex"],
        postalcodeandlocationlist: List<String>.from(json["postalcodeandlocationlist"].map((x) => x)),
        postalcoderegex: json["postalcoderegex"],
    );

    Map<String, dynamic> toJson() => {
        "addressstructure": addressstructure,
        "countrycode": countrycode,
        "countrycurrency": countrycurrency,
        "countrymobilecode": countrymobilecode,
        "currencysymbol": currencysymbol,
        "kyctypeid": kyctypeid,
        "languagelist": List<dynamic>.from(languagelist.map((x) => x)),
        "mobilenumberlength": mobilenumberlength,
        "mobilenumberregex": mobilenumberregex,
        "postalcodeandlocationlist": List<dynamic>.from(postalcodeandlocationlist.map((x) => x)),
        "postalcoderegex": postalcoderegex,
    };
}
