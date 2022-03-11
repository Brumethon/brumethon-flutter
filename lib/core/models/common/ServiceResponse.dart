import 'package:burmethon_app/shared/toast/Toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceResponse<ResponseType> {
  ResponseType? data;
  String? error;

  bool hasError;
  bool hasData;


  factory ServiceResponse.success(ResponseType data) {
    return ServiceResponse(data, null, false, true);
  }

  factory ServiceResponse.error(String error) {
    return ServiceResponse(null, error, true, false);
  }

  ServiceResponse(this.data, this.error, this.hasError, this.hasData);

  @override
  String toString() {
    return 'ServiceResponse{data: $data, error: $error, hasError: $hasError, hasData: $hasData}';
  }

  Future<void > displayToastIfError(BuildContext context) async {
    if (this.hasError || !this.hasData ) {
      Toast.show(this.error!, context, duration: 5,  backgroundColor: Colors.red);
    }

  }

}