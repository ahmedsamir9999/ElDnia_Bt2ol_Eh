import 'dart:io';

import 'package:eldnia_bt2ol_eh/const/style.dart';
import 'package:eldnia_bt2ol_eh/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemModule extends StatelessWidget {
  String? title;
  String? description;
  String? imageUrl;
  String? link;

  ItemModule({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.link,
  });

  final ser = Services() ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Container(
            padding: EdgeInsets.all(20.sp),
            height: 350.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(
                color: K.whiteColor,
                width: 2.sp,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title',
                        style: TextStyle(
                          color: K.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Expanded(
                        child: Text(
                          '$description',
                          style: TextStyle(
                            color: K.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () async
                          {
                             await ser.getLink(link: '$link') ;
                          },
                          child: Text(
                            'Go to report',
                            style: TextStyle(
                              color: K.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),)
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 250.h,
                    //  width: double.infinity,
                    child: Image.network('$imageUrl'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  }
}
