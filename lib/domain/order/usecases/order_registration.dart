import 'package:dartz/dartz.dart';
import 'package:ezyshop/core/usecase/usecase.dart';
import 'package:ezyshop/data/data/order/models/order_registration_req.dart';
import 'package:ezyshop/domain/order/repository/order.dart';
import 'package:ezyshop/service_locator.dart';

class OrderRegistrationUseCase
    implements UseCase<Either, OrderRegistrationReq> {
  @override
  Future<Either> call({OrderRegistrationReq? params}) async {
    return sl<OrderRepository>().orderRegistration(params!);
  }
}
