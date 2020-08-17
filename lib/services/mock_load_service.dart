import 'dart:io';

import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/services/load_service.dart';
import 'mock/page1.dart';
import 'mock/page2.dart';
import 'mock/page3.dart';
import 'mock/page4.dart';
import 'mock/page5.dart';
import 'mock/page6.dart';
import 'mock/page7.dart';
import 'mock/page8.dart';

class MockLoadService extends LoadService {
  
  final _delay = Duration(seconds: 5);

  @override
  Future<String> loadPage(Find find) async {
    await Future.delayed(_delay);
    String page = testPage3;
    if(find.departStation == 'Прибор' && find.arriveStation == 'Гомель')
      page = testPage1;
    else if(find.departStation == 'Гомель' && find.arriveStation == 'Минск')
      page = testPage2;
    else if(find.departStation.length < 3)
      page = testPage7;
    else if(find.arriveStation.length < 3)
      page = testPage8;
    else if(find.departStation != 'Гомель' && find.departStation != 'Прибор' && find.departStation != 'Гомель' && find.departStation != 'Минск')
      page = testPage6;
    else if(find.departStation != 'Гомель' && find.departStation != 'Прибор')
      page = testPage4;
    else if(find.departStation != 'Гомель' && find.departStation != 'Минск')
      page = testPage5;
    return page;
  }
}