import 'package:flutter/material.dart';
import 'package:image_rain/presentation/home.dart';
import 'package:intersperse/intersperse.dart';

class ImageSelector extends StatefulWidget {
  const ImageSelector({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AnimationController controller;

  @override
  State<ImageSelector> createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                color: Colors.amber,
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  "assets/pink_flower.png",
                  "assets/snowflake.png",
                  "assets/one_petal.png",
                ]
                    .map<Widget>(
                      (fileName) => ElevatedButton(
                        onPressed: () async {
                          await getImageInfo(context, fileName: fileName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(fileName),
                        ),
                      ),
                    )
                    .followedBy([
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      )
                    ])
                    .intersperse(
                      const SizedBox(width: 10),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (widget.controller.isAnimating) {
                    widget.controller.stop();
                  } else {
                    widget.controller.repeat();
                  }
                });
              },
              child: Icon(widget.controller.isAnimating
                  ? Icons.pause
                  : Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}
