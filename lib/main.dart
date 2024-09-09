import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'bloc/image_bloc/bloc.dart';
import 'bloc/image_bloc/image_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ImageBloc(),
        child: ImageUploader(),
      ),
    );
  }
}

class ImageUploader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Uploader')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final picker = ImagePicker();
              final pickedFile = await picker.pickImage(source: ImageSource.gallery);

              if (pickedFile != null) {
                final file = File(pickedFile.path);
                context.read<ImageBloc>().add(ImageEvent.storeImage(file));
              }
            },
            child: const Text('Pick and Store Image Locally'),
          ),
          const SizedBox(height: 20),
          Expanded( // Use Expanded to give ListView a bounded height
            child: BlocBuilder<ImageBloc, ImageState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Pick an image to start.')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (images) => ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Image.file(File(images[index]));
                    },
                  ),
                  error: (message) => Center(child: Text(message, style: const TextStyle(color: Colors.red))),
                  connectivity: (isConnected) => Text(isConnected ? 'Connected' : 'Not Connected'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
