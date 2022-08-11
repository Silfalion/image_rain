import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_rain/presentation/widgets/particles.dart';

late ImageInfo imageInfo;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getImageInfo(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Particles(
              numberOfParticles: 60,
              windowSize: MediaQuery.of(context).size,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

Future<bool> getImageInfo(BuildContext context,
    {String fileName = "assets/snowflake.png"}) async {
  AssetImage assetImage = AssetImage(fileName);
  ImageStream stream =
      assetImage.resolve(createLocalImageConfiguration(context));
  Completer<ImageInfo> completer = Completer();
  stream.addListener(ImageStreamListener((ImageInfo imageInfo, _) {
    return completer.complete(imageInfo);
  }));
  imageInfo = await completer.future;
  return true;
}
