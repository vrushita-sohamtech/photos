import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Images extends StatefulWidget {

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  final ImagePicker picker = ImagePicker();
  List imageList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('MY PHOTOS'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
            children:[ OutlinedButton(onPressed: () {
              imageSelect();
            },
              child: Text('Add Image')),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3
                  ),
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.file(
                          File(imageList[index].path),
                          fit: BoxFit.cover,
                        ),
                    ]
                      ),
                    );
                  },
                ),
              ),
      ]
          ),

      ),
    );
  }

  void imageSelect() async{
    final XFile? selectedImage = await picker.pickImage(source: ImageSource.gallery);
    if(selectedImage!.path.isNotEmpty) {
      imageList.add(selectedImage);
    }
    setState(() {

    });
  }
}
