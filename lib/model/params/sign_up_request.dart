class SignUpRequest {
  String? userName;
  String? phoneNumber;
  String? email;
  String? password;
  String? repeatPass;

  SignUpRequest({this.userName, this.phoneNumber, this.email, this.password, this.repeatPass});

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    password = json['password'];
    repeatPass = json[''];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userName'] = userName;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['password'] = password;
    data['password'] = repeatPass;
    return data;
  }
}
