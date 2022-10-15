part of country_list_with_dial_code_and_flag;

class Country {
  String name;
  String dialCode;
  String code;
  String flag;

  Country(
      {required this.name,
      required this.dialCode,
      required this.code,
      required this.flag});

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json['name'] as String,
        dialCode: json['dial_code'] as String,
        code: json['code'] as String,
        flag: json['flag'] as String,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'dial_code': dialCode,
        'code': code,
        'flag': flag,
      };
}
