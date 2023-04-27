import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosList extends StatefulWidget {
  const PhotosList({Key? key}) : super(key: key);

  @override
  State<PhotosList> createState() => _PhotosListState();
}

List<String> imageList = [
  'https://pin.it/79Ndo9D',
  'https://pin.it/5BtaUtp',
  'https://pin.it/5C0UM5I',
  'https://pin.it/2AKQEJn',
  'https://pin.it/5JSDV0z',
  'https://pin.it/3tFQMq1',
  'https://pin.it/2sJXsDe',
  'https://pin.it/2FmUtqa',
  ' https://pin.it/5Hfiom2',
  ' https://pin.it/1yjz31Y',
];

class _PhotosListState extends State<PhotosList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    itemCount: 22,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        height: 100,
                        color: Colors.black,
                      );
                    },
                  ),
              )
            ],
          ),
        )
    );
  }
}
