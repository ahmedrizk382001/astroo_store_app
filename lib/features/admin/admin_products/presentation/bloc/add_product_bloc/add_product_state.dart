part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.loading() = LoadingState;
  const factory AddProductState.success() = SuccessState;
  const factory AddProductState.error({required String error}) = ErrorState;
}
