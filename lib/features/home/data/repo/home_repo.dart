import 'package:dartz/dartz.dart';
import 'package:store_task/core/errors/failure.dart';
import 'package:store_task/features/home/data/model/Product_model.dart';

abstract class HomeRepo{
  Future<Either<Failures, List<ProductModel>>> fetchProduct();
}