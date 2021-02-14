import 'package:Fitness_app_demo/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

// ignore: must_be_immutable
class ProductListData extends StatelessWidget {
  ProductListData({
    Key key,
    @required this.productModel,
    @required this.category,
  }) : super(key: key);

  var productModel;
  String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detailScreen');
      },
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productModel.length,
          itemBuilder: (constext, index) {
            var data = productModel[index];
            return Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      data.thumbnailUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: category == 'Mini Course' ? 95 : 115,
                  child: Text(
                    data.title,
                    style: getRegularTextStyle(
                      category == 'Mini Course' ? 16 : 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                category == 'Mini Course'
                    ? Positioned(
                        left: 12,
                        top: 115,
                        child: Text(
                          data.category,
                          style: getRegularTextStyle(
                            12,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(),
                category == 'Mini Course'
                    ? Container()
                    : Positioned(
                        right: 10,
                        top: 115,
                        child: Text(
                          data.publishTime,
                          style: getRegularTextStyle(
                            12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                category == 'Blogs' || category == 'Mini Course'
                    ? Container()
                    : Positioned(
                        top: 50,
                        left: 80,
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                category == 'Mini Course'
                    ? Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                          child: Icon(
                            Icons.attach_money_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      )
                    : Container(),
              ],
            );
          },
        ),
      ),
    );
  }
}
