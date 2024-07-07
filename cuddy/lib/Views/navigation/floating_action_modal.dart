import 'package:flutter/material.dart';

class FloatingActionModal {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Choose an action',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Photo'),
              onTap: () {
                // Ajoutez l'action pour l'option Photo
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.music_note),
              title: const Text('Music'),
              onTap: () {
                // Ajoutez l'action pour l'option Music
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.videocam),
              title: const Text('Video'),
              onTap: () {
                // Ajoutez l'action pour l'option Video
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                // Ajoutez l'action pour l'option Share
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete'),
              onTap: () {
                // Ajoutez l'action pour l'option Delete
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
