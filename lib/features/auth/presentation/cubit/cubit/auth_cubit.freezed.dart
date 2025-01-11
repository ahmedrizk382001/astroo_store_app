// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
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
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<$Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl value,
          $Res Function(_$LoginLoadingStateImpl) then) =
      __$$LoginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingStateImpl>
    implements _$$LoginLoadingStateImplCopyWith<$Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl _value,
      $Res Function(_$LoginLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingStateImpl implements LoginLoadingState {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState implements AuthState {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel loginResponseModel});
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponseModel = null,
  }) {
    return _then(_$LoginSuccessStateImpl(
      loginResponseModel: null == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }
}

/// @nodoc

class _$LoginSuccessStateImpl implements LoginSuccessState {
  const _$LoginSuccessStateImpl({required this.loginResponseModel});

  @override
  final LoginResponseModel loginResponseModel;

  @override
  String toString() {
    return 'AuthState.loginSuccess(loginResponseModel: $loginResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessStateImpl &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponseModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      __$$LoginSuccessStateImplCopyWithImpl<_$LoginSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return loginSuccess(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return loginSuccess?.call(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements AuthState {
  const factory LoginSuccessState(
          {required final LoginResponseModel loginResponseModel}) =
      _$LoginSuccessStateImpl;

  LoginResponseModel get loginResponseModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorStateImplCopyWith<$Res> {
  factory _$$LoginErrorStateImplCopyWith(_$LoginErrorStateImpl value,
          $Res Function(_$LoginErrorStateImpl) then) =
      __$$LoginErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginErrorStateImpl>
    implements _$$LoginErrorStateImplCopyWith<$Res> {
  __$$LoginErrorStateImplCopyWithImpl(
      _$LoginErrorStateImpl _value, $Res Function(_$LoginErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorStateImpl implements LoginErrorState {
  const _$LoginErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.loginError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      __$$LoginErrorStateImplCopyWithImpl<_$LoginErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginErrorState implements AuthState {
  const factory LoginErrorState({required final String error}) =
      _$LoginErrorStateImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataLoadingStateImplCopyWith<$Res> {
  factory _$$GetUserDataLoadingStateImplCopyWith(
          _$GetUserDataLoadingStateImpl value,
          $Res Function(_$GetUserDataLoadingStateImpl) then) =
      __$$GetUserDataLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataLoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetUserDataLoadingStateImpl>
    implements _$$GetUserDataLoadingStateImplCopyWith<$Res> {
  __$$GetUserDataLoadingStateImplCopyWithImpl(
      _$GetUserDataLoadingStateImpl _value,
      $Res Function(_$GetUserDataLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataLoadingStateImpl implements GetUserDataLoadingState {
  const _$GetUserDataLoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.getUserDataLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return getUserDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return getUserDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataLoading != null) {
      return getUserDataLoading(this);
    }
    return orElse();
  }
}

abstract class GetUserDataLoadingState implements AuthState {
  const factory GetUserDataLoadingState() = _$GetUserDataLoadingStateImpl;
}

/// @nodoc
abstract class _$$GetUserDataSuccessStateImplCopyWith<$Res> {
  factory _$$GetUserDataSuccessStateImplCopyWith(
          _$GetUserDataSuccessStateImpl value,
          $Res Function(_$GetUserDataSuccessStateImpl) then) =
      __$$GetUserDataSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileModel userProfileModel});
}

/// @nodoc
class __$$GetUserDataSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetUserDataSuccessStateImpl>
    implements _$$GetUserDataSuccessStateImplCopyWith<$Res> {
  __$$GetUserDataSuccessStateImplCopyWithImpl(
      _$GetUserDataSuccessStateImpl _value,
      $Res Function(_$GetUserDataSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileModel = null,
  }) {
    return _then(_$GetUserDataSuccessStateImpl(
      userProfileModel: null == userProfileModel
          ? _value.userProfileModel
          : userProfileModel // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
    ));
  }
}

/// @nodoc

class _$GetUserDataSuccessStateImpl implements GetUserDataSuccessState {
  const _$GetUserDataSuccessStateImpl({required this.userProfileModel});

  @override
  final UserProfileModel userProfileModel;

  @override
  String toString() {
    return 'AuthState.getUserDataSuccess(userProfileModel: $userProfileModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataSuccessStateImpl &&
            (identical(other.userProfileModel, userProfileModel) ||
                other.userProfileModel == userProfileModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfileModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataSuccessStateImplCopyWith<_$GetUserDataSuccessStateImpl>
      get copyWith => __$$GetUserDataSuccessStateImplCopyWithImpl<
          _$GetUserDataSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserDataSuccess(userProfileModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserDataSuccess?.call(userProfileModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataSuccess != null) {
      return getUserDataSuccess(userProfileModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return getUserDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return getUserDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataSuccess != null) {
      return getUserDataSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserDataSuccessState implements AuthState {
  const factory GetUserDataSuccessState(
          {required final UserProfileModel userProfileModel}) =
      _$GetUserDataSuccessStateImpl;

  UserProfileModel get userProfileModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDataSuccessStateImplCopyWith<_$GetUserDataSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataErrorStateImplCopyWith<$Res> {
  factory _$$GetUserDataErrorStateImplCopyWith(
          _$GetUserDataErrorStateImpl value,
          $Res Function(_$GetUserDataErrorStateImpl) then) =
      __$$GetUserDataErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetUserDataErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetUserDataErrorStateImpl>
    implements _$$GetUserDataErrorStateImplCopyWith<$Res> {
  __$$GetUserDataErrorStateImplCopyWithImpl(_$GetUserDataErrorStateImpl _value,
      $Res Function(_$GetUserDataErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetUserDataErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserDataErrorStateImpl implements GetUserDataErrorState {
  const _$GetUserDataErrorStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.getUserDataError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataErrorStateImplCopyWith<_$GetUserDataErrorStateImpl>
      get copyWith => __$$GetUserDataErrorStateImplCopyWithImpl<
          _$GetUserDataErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function() getUserDataLoading,
    required TResult Function(UserProfileModel userProfileModel)
        getUserDataSuccess,
    required TResult Function(String error) getUserDataError,
  }) {
    return getUserDataError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function()? getUserDataLoading,
    TResult? Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult? Function(String error)? getUserDataError,
  }) {
    return getUserDataError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function()? getUserDataLoading,
    TResult Function(UserProfileModel userProfileModel)? getUserDataSuccess,
    TResult Function(String error)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataError != null) {
      return getUserDataError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoadingState value) loginLoading,
    required TResult Function(LoginSuccessState value) loginSuccess,
    required TResult Function(LoginErrorState value) loginError,
    required TResult Function(GetUserDataLoadingState value) getUserDataLoading,
    required TResult Function(GetUserDataSuccessState value) getUserDataSuccess,
    required TResult Function(GetUserDataErrorState value) getUserDataError,
  }) {
    return getUserDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoadingState value)? loginLoading,
    TResult? Function(LoginSuccessState value)? loginSuccess,
    TResult? Function(LoginErrorState value)? loginError,
    TResult? Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult? Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult? Function(GetUserDataErrorState value)? getUserDataError,
  }) {
    return getUserDataError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoadingState value)? loginLoading,
    TResult Function(LoginSuccessState value)? loginSuccess,
    TResult Function(LoginErrorState value)? loginError,
    TResult Function(GetUserDataLoadingState value)? getUserDataLoading,
    TResult Function(GetUserDataSuccessState value)? getUserDataSuccess,
    TResult Function(GetUserDataErrorState value)? getUserDataError,
    required TResult orElse(),
  }) {
    if (getUserDataError != null) {
      return getUserDataError(this);
    }
    return orElse();
  }
}

abstract class GetUserDataErrorState implements AuthState {
  const factory GetUserDataErrorState({required final String error}) =
      _$GetUserDataErrorStateImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDataErrorStateImplCopyWith<_$GetUserDataErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
