import 'package:eldnia_bt2ol_eh/model/newsModel.dart';
import 'package:eldnia_bt2ol_eh/providers/news_provider.dart';
import 'package:eldnia_bt2ol_eh/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Screens/business screen/business_screen.dart';
import '../Screens/health screen/health_screen.dart';
import '../Screens/sports screen/sports_screen.dart';

class HomeProvider extends ChangeNotifier {

  final ser = Services() ;

  int currentIndex = 1;

  List<Widget> screens =  [
    BusinessScreen(),
    SportsScreen(),
    HealthScreen(),
  ];

  List<String> titles = const [
    'Business',
    'Sports',
    'Health',
  ];

  onPress (index)
  {
    currentIndex = index ;

    // if(index == 0 )
    // {
    //  Future businessNews = ser.getNews(category: 'Business');
    //   // Provider.of<NewsProvider>(context).news = businessNews ;
    // }else if (index == 1)
    // {
    //   ser.getNews(category: 'Sports');
    // }else
    // {
    //   ser.getNews(category: 'Health');
    // }

    notifyListeners();
  }
}
