import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/domain/product/repository/product.dart';
import 'package:ezyshop/service_locator.dart';

class GetFavortiesProductsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getFavoritesProducts();
  }
}
