class ResponseModel {
  String? result;
  int? code;
  String? message;

  ResponseModel({this.result, this.code, this.message});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['result'] = result;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
