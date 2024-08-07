import 'package:dio/dio.dart';
import 'package:final_project/models/model.dart';
import 'dart:core';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {
  ProductModel? productModel;
  Future<ProductModel?> getProducts() async {
    try {
      Response response =
          await Dio().get("https://dummyjson.com/products", queryParameters: {
        "select": "id,title,price,description,category,thumbnail",
        "limit": 30,
      });
      productModel = ProductModel.fromJson(response.data);
      print(productModel?.products![0].title);
      return productModel;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future userLogin({required String userName, required String password}) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    try {
      FormData userData =
          FormData.fromMap({"username": userName, "password": password});

      Response response =
          await Dio().post("https://dummyjson.com/auth/login", data: userData);
      await pref.setString("userToken", response.data["token"]);
      String? userToken = pref.getString("userToken");

      return "Login Success";
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data["message"]);
        return e.response?.data["message"];
      }
    }
  }
}
