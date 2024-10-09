import 'package:ezyshop/data/auth/repository/auth_repository_impl.dart';
import 'package:ezyshop/data/auth/source/auth_firebase_service.dart';
import 'package:ezyshop/data/data/category/repository/category.dart';
import 'package:ezyshop/data/data/order/repository/order.dart';
import 'package:ezyshop/data/data/order/source/order_firebase_service.dart';
import 'package:ezyshop/data/data/product/repository/product.dart';
import 'package:ezyshop/data/data/product/source/product_firebase_service.dart';
import 'package:ezyshop/domain/auth/repository/auth.dart';
import 'package:ezyshop/domain/auth/usecase/signin.dart';
import 'package:ezyshop/domain/category/repository/category.dart';
import 'package:ezyshop/domain/order/repository/order.dart';
import 'package:ezyshop/domain/order/usecases/add_to_cart.dart';
import 'package:ezyshop/domain/order/usecases/get_cart_products.dart';
import 'package:ezyshop/domain/order/usecases/get_orders.dart';
import 'package:ezyshop/domain/order/usecases/order_registration.dart';
import 'package:ezyshop/domain/order/usecases/remove_cart_product.dart';
import 'package:ezyshop/domain/product/repository/product.dart';
import 'package:ezyshop/domain/product/usecases/add_or_remove_favorite_product.dart';
import 'package:ezyshop/domain/product/usecases/get_favorties_products.dart';
import 'package:ezyshop/domain/product/usecases/get_products_by_title.dart';
import 'package:ezyshop/domain/product/usecases/is_favorite.dart';
import 'package:get_it/get_it.dart';

import 'data/data/category/source/category_firebase_service.dart';
import 'domain/auth/usecase/get_ages.dart';
import 'domain/auth/usecase/get_user.dart';
import 'domain/auth/usecase/is_logged_in.dart';
import 'domain/auth/usecase/send_password_reset_email.dart';
import 'domain/auth/usecase/signup.dart';
import 'domain/category/usecases/get_categories.dart';
import 'domain/product/usecases/get_new_in.dart';
import 'domain/product/usecases/get_products_by_category_id.dart';
import 'domain/product/usecases/get_top_selling.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services

  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<CategoryFirebaseService>(CategoryFirebaseServiceImpl());

  sl.registerSingleton<ProductFirebaseService>(ProductFirebaseServiceImpl());

  sl.registerSingleton<OrderFirebaseService>(OrderFirebaseServiceImpl());

  // Repositories

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());

  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl());

  sl.registerSingleton<OrderRepository>(OrderRepositoryImpl());

  // Usecases

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<SendPasswordResetEmailUseCase>(
      SendPasswordResetEmailUseCase());

  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());

  sl.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase());

  sl.registerSingleton<GetTopSellingUseCase>(GetTopSellingUseCase());

  sl.registerSingleton<GetNewInUseCase>(GetNewInUseCase());

  sl.registerSingleton<GetProductsByCategoryIdUseCase>(
      GetProductsByCategoryIdUseCase());

  sl.registerSingleton<GetProductsByTitleUseCase>(GetProductsByTitleUseCase());

  sl.registerSingleton<AddToCartUseCase>(AddToCartUseCase());

  sl.registerSingleton<GetCartProductsUseCase>(GetCartProductsUseCase());

  sl.registerSingleton<RemoveCartProductUseCase>(RemoveCartProductUseCase());

  sl.registerSingleton<OrderRegistrationUseCase>(OrderRegistrationUseCase());

  sl.registerSingleton<AddOrRemoveFavoriteProductUseCase>(
      AddOrRemoveFavoriteProductUseCase());

  sl.registerSingleton<IsFavoriteUseCase>(IsFavoriteUseCase());

  sl.registerSingleton<GetFavortiesProductsUseCase>(
      GetFavortiesProductsUseCase());

  sl.registerSingleton<GetOrdersUseCase>(GetOrdersUseCase());
}
