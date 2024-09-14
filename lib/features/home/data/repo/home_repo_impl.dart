import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_task/core/errors/failure.dart';
import 'package:store_task/core/network/api_service.dart';
import 'package:store_task/features/home/data/model/Product_model.dart';
import 'package:store_task/features/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<ProductModel>>> fetchProduct() async {
    try {
      List<dynamic> data = await apiService.getRequest();
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return Right(productList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServiceFailure.fromDioError(e));
      }
      return Left(ServiceFailure(e.toString()));
    }
  }
}
