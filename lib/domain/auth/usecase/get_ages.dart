import 'package:dartz/dartz.dart';
import 'package:ezyshop/domain/auth/repository/auth.dart';
import 'package:ezyshop/service_locator.dart';
import '../../../core/usecase/usecase.dart';

class GetAgesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}
