class ErrorException {
  String? userMsg;
  String? devMsg;

  ErrorException({this.userMsg, this.devMsg});

  ErrorException.fromJson(Map<String, dynamic> json) {
    userMsg = json['userMsg'];
    devMsg = json['devMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userMsg'] = userMsg;
    data['devMsg'] = devMsg;
    return data;
  }
}
