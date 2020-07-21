import 'package:chopper/chopper.dart';
import 'package:chopper_trial/services/get_schools_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => GetSchoolsService.create(),
      dispose: (context, GetSchoolsService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'chopper_trial',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Chopper Trial'),
          ),
          body: GetSchoolsFuture(),
        ),
      ),
    );
  }
}

class GetSchoolsFuture extends StatelessWidget {
  const GetSchoolsFuture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response>(
      future: Provider.of<GetSchoolsService>(context).loginUser(
        {"email": "student@creare00.in", "password": "creare"},
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final String response = snapshot.data.body;
          return ListTile(
            title: Text(response),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

class PopulateSchoolsWidget extends StatelessWidget {
  const PopulateSchoolsWidget({
    Key key,
    @required this.schools,
  }) : super(key: key);

  final List<dynamic> schools;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(schools[index]['name']),
          );
        },
        itemCount: schools.length,
      ),
    );
  }
}
