// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssetsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AssetsState()';
}


}

/// @nodoc
class $AssetsStateCopyWith<$Res>  {
$AssetsStateCopyWith(AssetsState _, $Res Function(AssetsState) __);
}


/// Adds pattern-matching-related methods to [AssetsState].
extension AssetsStatePatterns on AssetsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AssetsInitial value)?  initial,TResult Function( _AssetsLoading value)?  loading,TResult Function( _AssetsLoaded value)?  loaded,TResult Function( _AssetsLoadingMore value)?  loadingMore,TResult Function( _AssetsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetsInitial() when initial != null:
return initial(_that);case _AssetsLoading() when loading != null:
return loading(_that);case _AssetsLoaded() when loaded != null:
return loaded(_that);case _AssetsLoadingMore() when loadingMore != null:
return loadingMore(_that);case _AssetsError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AssetsInitial value)  initial,required TResult Function( _AssetsLoading value)  loading,required TResult Function( _AssetsLoaded value)  loaded,required TResult Function( _AssetsLoadingMore value)  loadingMore,required TResult Function( _AssetsError value)  error,}){
final _that = this;
switch (_that) {
case _AssetsInitial():
return initial(_that);case _AssetsLoading():
return loading(_that);case _AssetsLoaded():
return loaded(_that);case _AssetsLoadingMore():
return loadingMore(_that);case _AssetsError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AssetsInitial value)?  initial,TResult? Function( _AssetsLoading value)?  loading,TResult? Function( _AssetsLoaded value)?  loaded,TResult? Function( _AssetsLoadingMore value)?  loadingMore,TResult? Function( _AssetsError value)?  error,}){
final _that = this;
switch (_that) {
case _AssetsInitial() when initial != null:
return initial(_that);case _AssetsLoading() when loading != null:
return loading(_that);case _AssetsLoaded() when loaded != null:
return loaded(_that);case _AssetsLoadingMore() when loadingMore != null:
return loadingMore(_that);case _AssetsError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Asset> assets)?  loaded,TResult Function( List<Asset> assets)?  loadingMore,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetsInitial() when initial != null:
return initial();case _AssetsLoading() when loading != null:
return loading();case _AssetsLoaded() when loaded != null:
return loaded(_that.assets);case _AssetsLoadingMore() when loadingMore != null:
return loadingMore(_that.assets);case _AssetsError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Asset> assets)  loaded,required TResult Function( List<Asset> assets)  loadingMore,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _AssetsInitial():
return initial();case _AssetsLoading():
return loading();case _AssetsLoaded():
return loaded(_that.assets);case _AssetsLoadingMore():
return loadingMore(_that.assets);case _AssetsError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Asset> assets)?  loaded,TResult? Function( List<Asset> assets)?  loadingMore,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _AssetsInitial() when initial != null:
return initial();case _AssetsLoading() when loading != null:
return loading();case _AssetsLoaded() when loaded != null:
return loaded(_that.assets);case _AssetsLoadingMore() when loadingMore != null:
return loadingMore(_that.assets);case _AssetsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AssetsInitial implements AssetsState {
  const _AssetsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AssetsState.initial()';
}


}




/// @nodoc


class _AssetsLoading implements AssetsState {
  const _AssetsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AssetsState.loading()';
}


}




/// @nodoc


class _AssetsLoaded implements AssetsState {
  const _AssetsLoaded(final  List<Asset> assets): _assets = assets;
  

 final  List<Asset> _assets;
 List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsLoadedCopyWith<_AssetsLoaded> get copyWith => __$AssetsLoadedCopyWithImpl<_AssetsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsLoaded&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'AssetsState.loaded(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$AssetsLoadedCopyWith<$Res> implements $AssetsStateCopyWith<$Res> {
  factory _$AssetsLoadedCopyWith(_AssetsLoaded value, $Res Function(_AssetsLoaded) _then) = __$AssetsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Asset> assets
});




}
/// @nodoc
class __$AssetsLoadedCopyWithImpl<$Res>
    implements _$AssetsLoadedCopyWith<$Res> {
  __$AssetsLoadedCopyWithImpl(this._self, this._then);

  final _AssetsLoaded _self;
  final $Res Function(_AssetsLoaded) _then;

/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_AssetsLoaded(
null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}


}

/// @nodoc


class _AssetsLoadingMore implements AssetsState {
  const _AssetsLoadingMore(final  List<Asset> assets): _assets = assets;
  

 final  List<Asset> _assets;
 List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsLoadingMoreCopyWith<_AssetsLoadingMore> get copyWith => __$AssetsLoadingMoreCopyWithImpl<_AssetsLoadingMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsLoadingMore&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'AssetsState.loadingMore(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$AssetsLoadingMoreCopyWith<$Res> implements $AssetsStateCopyWith<$Res> {
  factory _$AssetsLoadingMoreCopyWith(_AssetsLoadingMore value, $Res Function(_AssetsLoadingMore) _then) = __$AssetsLoadingMoreCopyWithImpl;
@useResult
$Res call({
 List<Asset> assets
});




}
/// @nodoc
class __$AssetsLoadingMoreCopyWithImpl<$Res>
    implements _$AssetsLoadingMoreCopyWith<$Res> {
  __$AssetsLoadingMoreCopyWithImpl(this._self, this._then);

  final _AssetsLoadingMore _self;
  final $Res Function(_AssetsLoadingMore) _then;

/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_AssetsLoadingMore(
null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}


}

/// @nodoc


class _AssetsError implements AssetsState {
  const _AssetsError(this.message);
  

 final  String message;

/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsErrorCopyWith<_AssetsError> get copyWith => __$AssetsErrorCopyWithImpl<_AssetsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AssetsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AssetsErrorCopyWith<$Res> implements $AssetsStateCopyWith<$Res> {
  factory _$AssetsErrorCopyWith(_AssetsError value, $Res Function(_AssetsError) _then) = __$AssetsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AssetsErrorCopyWithImpl<$Res>
    implements _$AssetsErrorCopyWith<$Res> {
  __$AssetsErrorCopyWithImpl(this._self, this._then);

  final _AssetsError _self;
  final $Res Function(_AssetsError) _then;

/// Create a copy of AssetsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AssetsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
