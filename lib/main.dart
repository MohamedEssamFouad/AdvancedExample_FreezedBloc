import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'UploaderPage.dart';
import 'bloc/image_bloc/bloc.dart';
import 'db.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final databaseService = DatabaseService();

    return MaterialApp(
      home: BlocProvider(
        create: (context) => ImageBloc(databaseService),
        child: ImageUploader(),
      ),
    );
  }
}
