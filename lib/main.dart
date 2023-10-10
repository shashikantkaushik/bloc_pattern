import 'package:bloc_pattern/blocs/internet_bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>InternetBloc(),
      child:MaterialApp(
          home:  HomeScreen()
      )
    );

  }
}
