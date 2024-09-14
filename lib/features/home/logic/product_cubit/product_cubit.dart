import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_task/features/home/data/model/Product_model.dart';
import 'package:store_task/features/home/data/repo/home_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());

  final HomeRepo homeRepo;

  Future<void> fetchProducts() async {
    emit(ProductLoading());

    var result = await homeRepo.fetchProduct();
    result.fold((failure) {
      emit(
        ProductFailure(failure.errMessage),
      );
    }, (products) {
      emit(
        ProductSuccess(products),
      );
    });
  }
}
