import 'package:final_project_sanbercode/models/article.dart';
import 'package:final_project_sanbercode/view_model/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends GetWidget<NewsViewModel> {
  NewsPage({ Key? key,}) : super(key: key);

  final controller = Get.put(NewsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.getData(),
        builder: (context, AsyncSnapshot snapshot) {
          NewModel? data = snapshot.data;
          if(snapshot.hasData) {
          return ListView.builder(
            itemCount: data!.articles!.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Image.network(data.articles![index].urlToImage.toString(),
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  ),
                  Text(data.articles![index].title.toString(),
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              );
            },
          );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}