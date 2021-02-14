import 'package:Fitness_app_demo/models/detail_screen_modal.dart';
import 'package:Fitness_app_demo/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    apiCall();
  }

  Future<void> apiCall() async {
    // This api call is not working due to some syntax error so its commented.
    // await ProductScrvices.getDetailPage().then((r) {
    //   print(r);
    //   setState(() {
    //     _isLoading = false;
    //   });
    // });
    print(data);
  }

  Widget container(
      {String title, double size, Color color, FontWeight weight}) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        top: 10,
      ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      data['blog_detail']['media']['url'],
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  container(
                    title: data['blog_detail']['title'],
                    size: 16,
                    color: Colors.black,
                    weight: medium,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.share_outlined,
                        size: 30,
                      ),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              container(
                title: '${data['blog_detail']['category']}' +
                    ' ' +
                    '. ' +
                    '${data['blog_detail']['publish_date']}' +
                    ',' +
                    '${data['blog_detail']['publish_time']}' +
                    '  ' +
                    'EST',
                size: 14,
                color: Colors.grey,
              ),
              container(
                title: data['blog_detail']['blog_content'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
