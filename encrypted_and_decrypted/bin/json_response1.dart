/*{"searchKey":"","CountryCode":"91"} */

class CodeReq {
  String searchKey = "";
  String countryCode = "91";
  CodeReq();
  // convert string to map
  CodeReq.fromJson(Map<String, dynamic> json) {
    searchKey = json['searchKey'];
    countryCode = json['countryCode'];
  }
  // convert map to string
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['searchKey'] = searchKey;
    data['countryCode'] = countryCode;
    return data;
  }
}
