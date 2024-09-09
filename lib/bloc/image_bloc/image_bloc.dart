import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'image_bloc.freezed.dart';

// Events
@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.storeImage(File image) = StoreImage;
  const factory ImageEvent.loadImages() = LoadImages;
  const factory ImageEvent.uploadPendingImages() = UploadPendingImages;
  const factory ImageEvent.connectivityChanged(ConnectivityResult result) = ConnectivityChanged;
}

// States
@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial() = _Initial;
  const factory ImageState.loading() = _Loading;
  const factory ImageState.loaded(List<String> images) = _Loaded;
  const factory ImageState.error(String message) = _Error;
  const factory ImageState.connectivity(bool isConnected) = _Connectivity;
}
