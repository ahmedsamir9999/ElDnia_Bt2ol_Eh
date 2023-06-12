import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/style.dart';
import '../../model/newsModel.dart';
import '../../module/module.dart';
import '../../services/services.dart';

class HealthScreen extends StatelessWidget {
   HealthScreen({Key? key}) : super(key: key);

  final ser = Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ser.getNews(category: 'health') ,
          builder: (context , AsyncSnapshot snapshot) {
            if(snapshot.hasData) {
              NewsModel data = snapshot.data;
              return ListView.builder(
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.articles!.length,
                  itemBuilder: (BuildContext context, i) {
                    return ItemModule(
                        title: data.articles![i].author,
                        description: data.articles![i].title,
                        imageUrl:data.articles![i].urlToImage,
                        link: data.articles![i].url,
                    );
                  });
            }else
            {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}