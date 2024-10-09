import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/domain/product/repository/product.dart';
import 'package:ezyshop/service_locator.dart';

class GetProductsByCategoryIdUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<ProductRepository>().getProductsByCategoryId(params!);
  }
}
