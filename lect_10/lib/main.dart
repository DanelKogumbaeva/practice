import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lect_10/bloc/color_bloc.dart';
//import 'package:lect_10/bloc_page.dart';
import 'package:lect_10/cubit_page.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(BlocProvider
  (
    create:(context) => ColorBloc(),
    child: MaterialApp(
      routes:{
        '/': (context)=>CubitPage(),
        '/second': (context)=>CubitPage(),
      }
    ),
  
  ));
}

