import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/data/data/order/models/add_to_cart_req.dart';
import 'package:ezyshop/domain/order/repository/order.dart';
import 'package:ezyshop/service_locator.dart';

class AddToCartUseCase implements UseCase<Either, AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }
}
