import 'package:flutter/material.dart';
import 'package:webplix/models/webtoon_model.dart';
import 'package:webplix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> toons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'Webflix',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                var toon = snapshot.data![index];
                return Text(toon.title);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 30);
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        future: toons,
      ),
    );
  }
}
