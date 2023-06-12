import 'package:eldnia_bt2ol_eh/model/newsModel.dart';
import 'package:eldnia_bt2ol_eh/module/module.dart';
import 'package:eldnia_bt2ol_eh/services/services.dart';
import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
   SportsScreen({Key? key}) : super(key: key);
       final ser = Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ser.getNews(category: 'Sports') ,
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
