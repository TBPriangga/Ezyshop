import 'package:dartz/dartz.dart';
import 'package:ezyshop/domain/auth/repository/auth.dart';
import 'package:ezyshop/service_locator.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/auth/models/user_creation_req.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
