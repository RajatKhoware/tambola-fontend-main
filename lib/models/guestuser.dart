/// errMessage : " username already used"

class GuestUser {
  GuestUser({
      String? errMessage,}){
    _errMessage = errMessage;
}

  GuestUser.fromJson(dynamic json) {
    _errMessage = json['errMessage'];
  }
  String? _errMessage;

  String? get errMessage => _errMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['errMessage'] = _errMessage;
    return map;
  }

}

class GuestModel {
  late String errMessage;

  GuestModel({required this.errMessage});

   GuestModel.fromJson(Map<String, dynamic> json) {
    errMessage = json['errMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errMessage'] = this.errMessage;
    return data;
  }
}