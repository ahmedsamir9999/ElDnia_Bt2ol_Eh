import 'dart:convert';

import 'package:eldnia_bt2ol_eh/model/newsModel.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class Services {
  String baseUrl =
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=e1461e55921948169edaf4cdb31b3305&category=sports';
  String apiKey = 'e1461e55921948169edaf4cdb31b3305';
  String country = 'eg';
  String category = 'sports';

  Future getNews({required String category}) async {
    Uri url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=e1461e55921948169edaf4cdb31b3305&category=$category');
    http.Response response = await http.get(url);

    NewsModel news = NewsModel.fromJson(jsonDecode(response.body));

    // print(news.status.toString());

    return news;
  }

  Future getLink({required String link}) async {
     Uri url = Uri.parse(link);

    // Uri url = Uri(
    //   scheme: 'https',
    //   host: link,
    // );

    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );


  }
}
