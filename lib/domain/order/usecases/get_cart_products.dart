import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/domain/order/repository/order.dart';
import 'package:ezyshop/service_locator.dart';

class GetCartProductsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return sl<OrderRepository>().getCartProducts();
  }
}
