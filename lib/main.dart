

import 'package:dailynotes/core/navigation/router_generation_config.dart';
import 'package:dailynotes/cubits/addnotecubit/addnotecubit.dart';
import 'package:dailynotes/models/addnotemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';


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
      return MultiBlocProvider(
        providers: [
          BlocProvider<AddnoteCubit>(
            create: (context) => AddnoteCubit(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: RouterGenerationConfig.goRouter,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black
          ),
          debugShowCheckedModeBanner: false,
        
        ),
      );}
    );
  }
}

