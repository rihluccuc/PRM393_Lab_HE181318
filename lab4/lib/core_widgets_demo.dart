import 'package:flutter/material.dart';

//Exercise 1
class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        //tittle
        title: Text('Exercise 1 - Core Widgets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Welcome To Flutter UI",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            //Icon
            Center(child: Icon(Icons.movie, size: 200, color: Colors.blue)),
            //ảnh
            Image.network(
              'https://static-images.vnncdn.net/vps_images_publish/000001/000003/2026/1/24/video-ban-thang-u23-viet-nam-2-2-u23-han-quoc-pen-7-6-507.jpg?width=0&s=Cd3rXf7fdR7gpaTDBi3k0w',
              height: 250,
            ),
            //Cai card
            Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('U23 Việt Nam', style: TextStyle(fontSize: 20)),
                subtitle: Text(
                  'Huy chương đòng U23 Châu Á mang về danh vọng',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

