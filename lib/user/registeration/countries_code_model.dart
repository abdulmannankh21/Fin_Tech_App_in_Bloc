class CountriesCode {
  String? name;
  String? dialCode;
  String? code;

  CountriesCode(this.name, this.dialCode, this.code);

  static CountriesCode fromMap(Map<String, dynamic> map) {


    return CountriesCode(
        map['name'],
        map['dial_code'],
        map['code'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name":            this.name,
      "dial_code":    this.dialCode,
      "code":      this.code,
    };
  }
}