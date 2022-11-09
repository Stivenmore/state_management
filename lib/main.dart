import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanager/statemanager_bloc/cubit/manager_cubit.dart';
import 'package:statemanager/statemanager_bloc/view_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ManagerCubit())
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: ViewCubit()),
    );
  }
}


  /*
      // Native State with Inheretedwidget and SetState
      return ManagerInheritedWidget(
        count: 0,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: ViewNative()
          ),
      );

      // Provider State is bussined logic
      return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ManagerProvider())
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: ViewProvider()),
    );
      
      */