import 'package:bloc_pattern/blocs/internet_bloc/internet_bloc.dart';
import 'package:bloc_pattern/blocs/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: BlocConsumer<InternetBloc,InternetState>(
listener: (context,state){
  if(state is InternetGainedState){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('connected'),backgroundColor: Colors.green,));
  }
  else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not connected'),backgroundColor: Colors.red,));
  }
},
          builder: (context, state) {
         if(state is InternetGainedState){
           return Text('Connected');
         }
         else if(state is InternetLostState){
           return Text('Not Connected...');
         }
         else{
              return Text('Loading...');

         }
          }
        )),
      ),
    );
  }
}
