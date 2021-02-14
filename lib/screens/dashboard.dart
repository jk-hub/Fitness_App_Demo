import 'package:Fitness_app_demo/models/product_modal.dart';
import 'package:Fitness_app_demo/services/product_services.dart';
import 'package:Fitness_app_demo/theme/app_text_style.dart';
import 'package:Fitness_app_demo/widgets/product_data_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _isLoading = true;

  ProductModel productModel;

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  Future<ProductModel> apiCall() async {
    return productModel = await ProductScrvices.getProduct().whenComplete(() {
      // print(r);
      setState(() {
        _isLoading = false;
      });
    });
  }

  Widget titleContainer(
      {String title, double size, Color color, FontWeight weight}) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: getRegularTextStyle(
          size,
          color: color,
          weight: weight,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      titleContainer(
                        title: 'Content',
                        size: 26,
                        weight: semiBold,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      titleContainer(
                        title: 'Videos',
                        size: 16,
                        weight: medium,
                      ),
                      ProductListData(
                        productModel: productModel.videos,
                        category: 'Videos',
                      ),
                      titleContainer(
                        title: 'Blogs',
                        size: 16,
                        weight: medium,
                      ),
                      ProductListData(
                        productModel: productModel.blogs,
                        category: 'Blogs',
                      ),
                      titleContainer(
                        title: 'Podcasts',
                        size: 16,
                        weight: medium,
                      ),
                      ProductListData(
                        productModel: productModel.podcasts,
                        category: 'podcasts',
                      ),
                      titleContainer(
                        title: 'Mini Course',
                        size: 16,
                        weight: medium,
                      ),
                      ProductListData(
                        productModel: productModel.miniCourses,
                        category: "Mini Course",
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
