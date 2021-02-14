import 'package:Fitness_app_demo/models/product_modal.dart';
import 'package:dio/dio.dart';

import '../utils/constants.dart';

class ProductScrvices {
  static Future<ProductModel> getProduct() async {
    // List<ProductModel> productList = [];
    ProductModel productModel;
    try {
      final Dio dio = Dio();
      final String url = '${baseUrl}content_home';

      print('Url: is $url');

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        print('Products List Response is : ${response.data}');

        productModel =
            ProductModel.fromJson(response.data as Map<String, dynamic>);
      }
    } catch (error) {
      print(error);
    }
    return productModel;
  }

// this content page has error its not giving 200 response in it.
  static Future<Map<String, dynamic>> getDetailPage() async {
    Map<String, dynamic> responseData = {};
    try {
      final Dio dio = Dio();
      final String url = '${baseUrl}content_detail';

      print('Url: is $url');

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        print('Products List Response is : ${response.data}');
        responseData = response.data;
      }
    } catch (error) {
      print(error);
    }
    return responseData;
  }
}
