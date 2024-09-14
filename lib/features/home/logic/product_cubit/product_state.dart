part of 'product_cubit.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}
final class ProductLoading extends ProductState {}
final class ProductSuccess extends ProductState {
  final List<ProductModel> products;
  ProductSuccess(this.products);
}
final class ProductFailure extends ProductState {
  final String errMessage;
  ProductFailure(this.errMessage);
}
