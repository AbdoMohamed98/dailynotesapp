

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mahmoud/core/navigation/router_generation_config.dart';
import 'package:mahmoud/models/addnotemodel.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<String>('notesbox');
   Hive.registerAdapter(AddnotemodelAdapter());
  runApp(const Dailynotesapp());
}

class Dailynotesapp extends StatelessWidget {
  const Dailynotesapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(400 , 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
      return MaterialApp.router(
        routerConfig: RouterGenerationConfig.goRouter,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black
        ),
        debugShowCheckedModeBanner: false,
      
      );}
    );
  }
}

