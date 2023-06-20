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
            return Column(children: [
              const SizedBox(
                height: 100,
              ),
              Expanded(child: makeList(snapshot))
            ]);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        future: toons,
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var toon = snapshot.data![index];
        return Column(
          children: [
            Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
              ),
              child: Image.network(
                toon.thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              toon.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 30);
      },
    );
  }
}
