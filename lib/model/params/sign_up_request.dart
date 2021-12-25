class SignUpRequest {
  String? userName;
  String? phoneNumber;
  String? email;
  String? password;

  SignUpRequest({this.userName, this.phoneNumber, this.email, this.password});

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userName'] = userName;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
