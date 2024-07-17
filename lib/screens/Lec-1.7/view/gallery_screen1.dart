import 'package:flutter/material.dart';

class GalleryScreen1 extends StatelessWidget {
  const GalleryScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.1,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text('Gallery'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: width * 0.06,
                ),
                DropdownButton(
                  items: const [
                    DropdownMenuItem(
                      child: Text('Album'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: width * 0.6,
                ),
                const Icon(Icons.search),
                PopupMenuButton(
                  initialValue: popUpMenuItems,
                  itemBuilder: (context) => popUpMenuItems,
                  onSelected: (value) {
                    if(value == 1){

                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text('Settings'),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text('Show Hidden Folder'),
  ),
];
