/*"status": 1,
    "message": "Successful",
    convert this json to map
     */

class McfDashboardScreen {
  int status = 0;
  String message = "";
  // convert string to map
  McfDashboardScreen.fromJson(Map<String, dynamic> json) {
    /*In the fromJson method, the variables status and
     message were being assigned the values of the strings "status" and "message", respectively, instead of the values in the JSON map. To fix this, we need to use the correct keys to extract the values from the JSON map. So,
     I replaced ['staus'] with json['status'] and ['message'] with json['message']*/
    status = json['status'];
    message = json['message'];
  } //convert map to string
  Map<String, dynamic> toJosn() {
    final Map<String, dynamic> data = <String, dynamic>{};
    /*The values were being assigned to arrays instead of to the keys in the data map */
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}
