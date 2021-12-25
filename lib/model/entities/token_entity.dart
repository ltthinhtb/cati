class TokenEntity {
  String? userMsg;
  Token? data;

  TokenEntity({this.userMsg, this.data});

  TokenEntity.fromJson(Map<String, dynamic> json) {
    userMsg = json['userMsg'];
    data = json['data'] != null ? Token.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userMsg'] = userMsg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Token {
  String? token;
  String? refreshToken;

  Token({this.token, this.refreshToken});

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
