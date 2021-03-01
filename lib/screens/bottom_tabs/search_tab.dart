import 'package:flutter/material.dart';
import 'package:flutter_demo/constraints/constants.dart';
import 'package:flutter_demo/widgets/text_widget.dart';

class SearchTab extends StatelessWidget {
  var list = [
    'Priyank sukhija',
    'designer xyz',
    'wer artist',
    "abc comedian",
    'dcb comedian',
    'fic artist',
    'Priyank sukhija',
    'designer xyz',
    'wer artist',
    "abc comedian",
    'dcb comedian',
    'fic artist'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  child: FadeInImage.assetNetwork(
                height: 200,
                width: 200,
                image:
                    'https://i.pinimg.com/236x/48/c0/df/48c0dff11072195088bdebfc267649eb--kumar-sanu-hit.jpg',
                placeholder: 'assets/loadingImage.gif',
              )),
            ),
            Positioned.fill(
                bottom: 30,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomTextView(
                    list[index],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                )),
            Positioned.fill(
                bottom: 15,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomTextView(
                    'Beauty',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.tealAccent,
                  ),
                )),
          ],
        );
      },
    );
  }
}
