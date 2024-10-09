import 'package:dartz/dartz.dart';
import 'package:ezyshop/domain/order/repository/order.dart';
import 'package:ezyshop/service_locator.dart';

import '../../../core/usecase/usecase.dart';

class RemoveCartProductUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return sl<OrderRepository>().removeCartProduct(params!);
  }
}
