class SignUpResponse {
  String? userMsg;
  String? devMsg;
  Data? data;

  SignUpResponse({this.userMsg, this.devMsg, this.data});

  SignUpResponse.fromJson(Map<String, dynamic> json) {
    userMsg = json['userMsg'];
    devMsg = json['devMsg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userMsg'] = userMsg;
    data['devMsg'] = devMsg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Error? error;

  Data({this.error});

  Data.fromJson(Map<String, dynamic> json) {
    error = json['Error'] != null ? Error.fromJson(json['Error']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (error != null) {
      data['Error'] = error!.toJson();
    }
    return data;
  }
}

class Error {
  String? msg;

  // FileNotValid? fileNotValid;

  Error({this.msg});

  Error.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    // fileNotValid = json['fileNotValid'] != null
    //     ? FileNotValid.fromJson(json['fileNotValid'])
    //     : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    // if (fileNotValid != null) {
    //   data['fileNotValid'] = fileNotValid!.toJson();
    // }
    return data;
  }
}

class FileNotValid {
  String? userLoginId;
  String? userId;
  String? userName;
  String? password;
  String? phoneNumber;

  FileNotValid(
      {this.userLoginId,
      this.userId,
      this.userName,
      this.password,
      this.phoneNumber});

  FileNotValid.fromJson(Map<String, dynamic> json) {
    userLoginId = json['userLoginId'];
    userId = json['userId'];
    userName = json['userName'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userLoginId'] = userLoginId;
    data['userId'] = userId;
    data['userName'] = userName;
    data['password'] = password;
    data['phoneNumber'] = phoneNumber;

    return data;
  }
}
