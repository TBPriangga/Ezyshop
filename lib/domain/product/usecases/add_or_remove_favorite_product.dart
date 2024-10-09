import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/domain/product/repository/product.dart';
import 'package:ezyshop/service_locator.dart';

import '../entities/product.dart';

class AddOrRemoveFavoriteProductUseCase
    implements UseCase<Either, ProductEntity> {
  @override
  Future<Either> call({ProductEntity? params}) async {
    return await sl<ProductRepository>().addOrRemoveFavoriteProduct(params!);
  }
}
