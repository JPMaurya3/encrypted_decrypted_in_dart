/*{
    "status": 1,
    "message": "Successful",
    "mcfDashboardCount": {
        "inProcess": 0,
        "bankLogin": 1,
        "bankSanction": 0,
        "bankDisbursal": 6,
        "total": 7
    }
}*/
class Dashboard {
  int status = 0;
  String message = "";
  // here we have key mcfDashboardCount
  Dashboard mcfDashboardCount = Dashboard();
  Dashboard();
  //convert string to map
  Dashboard.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    mcfDashboardCount = Dashboard.fromJson(json['mcfDashboardCount']);
  }
  //convert map to json
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['mcfDashboardCount'] = mcfDashboardCount.toJson();
    return data;
  }
}

class McfDashboardCountRes {
  int inProcess = 0;
  int bankLogin = 1;
  int bankSanction = 0;
  int bankDisbursal = 6;
  int total = 7;
  McfDashboardCountRes();
  // convert string to map
  McfDashboardCountRes.fromJson(Map<String, dynamic> json) {
    inProcess = json['inProcess'];
    bankLogin = json['bankLogin'];
    bankSanction = json['bankSanction'];
    bankDisbursal = json['bankDisbursal'];
    total = json['total'];
  }
  //convert map to string
  Map<String, dynamic> toJosn() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['inProcess'] = inProcess;
    data['bankLogin'] = bankLogin;
    data['bankSanction'] = bankSanction;
    data['bankDisbursal'] = bankDisbursal;
    data['total'] = total;
    return data;
  }
}
