// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) storeImage,
    required TResult Function() loadImages,
    required TResult Function() uploadPendingImages,
    required TResult Function(ConnectivityResult result) connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? storeImage,
    TResult? Function()? loadImages,
    TResult? Function()? uploadPendingImages,
    TResult? Function(ConnectivityResult result)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? storeImage,
    TResult Function()? loadImages,
    TResult Function()? uploadPendingImages,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreImage value) storeImage,
    required TResult Function(LoadImages value) loadImages,
    required TResult Function(UploadPendingImages value) uploadPendingImages,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreImage value)? storeImage,
    TResult? Function(LoadImages value)? loadImages,
    TResult? Function(UploadPendingImages value)? uploadPendingImages,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreImage value)? storeImage,
    TResult Function(LoadImages value)? loadImages,
    TResult Function(UploadPendingImages value)? uploadPendingImages,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StoreImageImplCopyWith<$Res> {
  factory _$$StoreImageImplCopyWith(
          _$StoreImageImpl value, $Res Function(_$StoreImageImpl) then) =
      __$$StoreImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$StoreImageImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$StoreImageImpl>
    implements _$$StoreImageImplCopyWith<$Res> {
  __$$StoreImageImplCopyWithImpl(
      _$StoreImageImpl _value, $Res Function(_$StoreImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$StoreImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$StoreImageImpl implements StoreImage {
  const _$StoreImageImpl(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'ImageEvent.storeImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImageImplCopyWith<_$StoreImageImpl> get copyWith =>
      __$$StoreImageImplCopyWithImpl<_$StoreImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) storeImage,
    required TResult Function() loadImages,
    required TResult Function() uploadPendingImages,
    required TResult Function(ConnectivityResult result) connectivityChanged,
  }) {
    return storeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? storeImage,
    TResult? Function()? loadImages,
    TResult? Function()? uploadPendingImages,
    TResult? Function(ConnectivityResult result)? connectivityChanged,
  }) {
    return storeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? storeImage,
    TResult Function()? loadImages,
    TResult Function()? uploadPendingImages,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (storeImage != null) {
      return storeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreImage value) storeImage,
    required TResult Function(LoadImages value) loadImages,
    required TResult Function(UploadPendingImages value) uploadPendingImages,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
  }) {
    return storeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreImage value)? storeImage,
    TResult? Function(LoadImages value)? loadImages,
    TResult? Function(UploadPendingImages value)? uploadPendingImages,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
  }) {
    return storeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreImage value)? storeImage,
    TResult Function(LoadImages value)? loadImages,
    TResult Function(UploadPendingImages value)? uploadPendingImages,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (storeImage != null) {
      return storeImage(this);
    }
    return orElse();
  }
}

abstract class StoreImage implements ImageEvent {
  const factory StoreImage(final File image) = _$StoreImageImpl;

  File get image;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreImageImplCopyWith<_$StoreImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImagesImplCopyWith<$Res> {
  factory _$$LoadImagesImplCopyWith(
          _$LoadImagesImpl value, $Res Function(_$LoadImagesImpl) then) =
      __$$LoadImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImagesImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$LoadImagesImpl>
    implements _$$LoadImagesImplCopyWith<$Res> {
  __$$LoadImagesImplCopyWithImpl(
      _$LoadImagesImpl _value, $Res Function(_$LoadImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImagesImpl implements LoadImages {
  const _$LoadImagesImpl();

  @override
  String toString() {
    return 'ImageEvent.loadImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) storeImage,
    required TResult Function() loadImages,
    required TResult Function() uploadPendingImages,
    required TResult Function(ConnectivityResult result) connectivityChanged,
  }) {
    return loadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? storeImage,
    TResult? Function()? loadImages,
    TResult? Function()? uploadPendingImages,
    TResult? Function(ConnectivityResult result)? connectivityChanged,
  }) {
    return loadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? storeImage,
    TResult Function()? loadImages,
    TResult Function()? uploadPendingImages,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (loadImages != null) {
      return loadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreImage value) storeImage,
    required TResult Function(LoadImages value) loadImages,
    required TResult Function(UploadPendingImages value) uploadPendingImages,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
  }) {
    return loadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreImage value)? storeImage,
    TResult? Function(LoadImages value)? loadImages,
    TResult? Function(UploadPendingImages value)? uploadPendingImages,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
  }) {
    return loadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreImage value)? storeImage,
    TResult Function(LoadImages value)? loadImages,
    TResult Function(UploadPendingImages value)? uploadPendingImages,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (loadImages != null) {
      return loadImages(this);
    }
    return orElse();
  }
}

abstract class LoadImages implements ImageEvent {
  const factory LoadImages() = _$LoadImagesImpl;
}

/// @nodoc
abstract class _$$UploadPendingImagesImplCopyWith<$Res> {
  factory _$$UploadPendingImagesImplCopyWith(_$UploadPendingImagesImpl value,
          $Res Function(_$UploadPendingImagesImpl) then) =
      __$$UploadPendingImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadPendingImagesImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$UploadPendingImagesImpl>
    implements _$$UploadPendingImagesImplCopyWith<$Res> {
  __$$UploadPendingImagesImplCopyWithImpl(_$UploadPendingImagesImpl _value,
      $Res Function(_$UploadPendingImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadPendingImagesImpl implements UploadPendingImages {
  const _$UploadPendingImagesImpl();

  @override
  String toString() {
    return 'ImageEvent.uploadPendingImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPendingImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) storeImage,
    required TResult Function() loadImages,
    required TResult Function() uploadPendingImages,
    required TResult Function(ConnectivityResult result) connectivityChanged,
  }) {
    return uploadPendingImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? storeImage,
    TResult? Function()? loadImages,
    TResult? Function()? uploadPendingImages,
    TResult? Function(ConnectivityResult result)? connectivityChanged,
  }) {
    return uploadPendingImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? storeImage,
    TResult Function()? loadImages,
    TResult Function()? uploadPendingImages,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (uploadPendingImages != null) {
      return uploadPendingImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreImage value) storeImage,
    required TResult Function(LoadImages value) loadImages,
    required TResult Function(UploadPendingImages value) uploadPendingImages,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
  }) {
    return uploadPendingImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreImage value)? storeImage,
    TResult? Function(LoadImages value)? loadImages,
    TResult? Function(UploadPendingImages value)? uploadPendingImages,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
  }) {
    return uploadPendingImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreImage value)? storeImage,
    TResult Function(LoadImages value)? loadImages,
    TResult Function(UploadPendingImages value)? uploadPendingImages,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (uploadPendingImages != null) {
      return uploadPendingImages(this);
    }
    return orElse();
  }
}

abstract class UploadPendingImages implements ImageEvent {
  const factory UploadPendingImages() = _$UploadPendingImagesImpl;
}

/// @nodoc
abstract class _$$ConnectivityChangedImplCopyWith<$Res> {
  factory _$$ConnectivityChangedImplCopyWith(_$ConnectivityChangedImpl value,
          $Res Function(_$ConnectivityChangedImpl) then) =
      __$$ConnectivityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult result});
}

/// @nodoc
class __$$ConnectivityChangedImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ConnectivityChangedImpl>
    implements _$$ConnectivityChangedImplCopyWith<$Res> {
  __$$ConnectivityChangedImplCopyWithImpl(_$ConnectivityChangedImpl _value,
      $Res Function(_$ConnectivityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ConnectivityChangedImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$ConnectivityChangedImpl implements ConnectivityChanged {
  const _$ConnectivityChangedImpl(this.result);

  @override
  final ConnectivityResult result;

  @override
  String toString() {
    return 'ImageEvent.connectivityChanged(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityChangedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      __$$ConnectivityChangedImplCopyWithImpl<_$ConnectivityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) storeImage,
    required TResult Function() loadImages,
    required TResult Function() uploadPendingImages,
    required TResult Function(ConnectivityResult result) connectivityChanged,
  }) {
    return connectivityChanged(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? storeImage,
    TResult? Function()? loadImages,
    TResult? Function()? uploadPendingImages,
    TResult? Function(ConnectivityResult result)? connectivityChanged,
  }) {
    return connectivityChanged?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? storeImage,
    TResult Function()? loadImages,
    TResult Function()? uploadPendingImages,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreImage value) storeImage,
    required TResult Function(LoadImages value) loadImages,
    required TResult Function(UploadPendingImages value) uploadPendingImages,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
  }) {
    return connectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreImage value)? storeImage,
    TResult? Function(LoadImages value)? loadImages,
    TResult? Function(UploadPendingImages value)? uploadPendingImages,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
  }) {
    return connectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreImage value)? storeImage,
    TResult Function(LoadImages value)? loadImages,
    TResult Function(UploadPendingImages value)? uploadPendingImages,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectivityChanged implements ImageEvent {
  const factory ConnectivityChanged(final ConnectivityResult result) =
      _$ConnectivityChangedImpl;

  ConnectivityResult get result;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ImageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ImageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ImageState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> images});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$LoadedImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<String> images) : _images = images;

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImageState.loaded(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) {
    return loaded(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) {
    return loaded?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ImageState {
  const factory _Loaded(final List<String> images) = _$LoadedImpl;

  List<String> get images;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ImageState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ImageState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectivityImplCopyWith<$Res> {
  factory _$$ConnectivityImplCopyWith(
          _$ConnectivityImpl value, $Res Function(_$ConnectivityImpl) then) =
      __$$ConnectivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ConnectivityImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ConnectivityImpl>
    implements _$$ConnectivityImplCopyWith<$Res> {
  __$$ConnectivityImplCopyWithImpl(
      _$ConnectivityImpl _value, $Res Function(_$ConnectivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ConnectivityImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityImpl implements _Connectivity {
  const _$ConnectivityImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ImageState.connectivity(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityImplCopyWith<_$ConnectivityImpl> get copyWith =>
      __$$ConnectivityImplCopyWithImpl<_$ConnectivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> images) loaded,
    required TResult Function(String message) error,
    required TResult Function(bool isConnected) connectivity,
  }) {
    return connectivity(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<String> images)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(bool isConnected)? connectivity,
  }) {
    return connectivity?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> images)? loaded,
    TResult Function(String message)? error,
    TResult Function(bool isConnected)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Connectivity value) connectivity,
  }) {
    return connectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Connectivity value)? connectivity,
  }) {
    return connectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Connectivity value)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(this);
    }
    return orElse();
  }
}

abstract class _Connectivity implements ImageState {
  const factory _Connectivity(final bool isConnected) = _$ConnectivityImpl;

  bool get isConnected;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectivityImplCopyWith<_$ConnectivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
