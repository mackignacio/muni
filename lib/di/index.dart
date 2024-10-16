import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:muni/core/network.dart';
import 'package:muni/features/login/bloc/login_cubit.dart';
import 'package:muni/features/register/bloc/register_cubit.dart';

final getIt = GetIt.I;

void resolveDependencies() {
  getIt.registerLazySingleton<Network>(() => Network(dio: getIt.get<Dio>()));
  registerSocket();
  registerSources();
  registerRepositories();
  registerBlocs();
}

void registerSocket() {
  // getIt.registerSingleton<StreamControllers>(StreamControllers());

  // getIt.registerSingleton<Sockets>(
  //     Sockets(controllers: getIt.get<StreamControllers>())..init());
}

void registerRepositories() {
  // getIt.registerLazySingleton<UploadRepository>(() => UploadRepositoryImpl(
  //       uploadSource: getIt.get<UploadSource>(),
  //     ));

  // getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
  //       userSource: getIt.get<UserSource>(),
  //     ));

  // getIt.registerLazySingleton<ServiceRepository>(() => ServiceRepositoryImpl(
  //       serviceSource: getIt.get<ServiceSource>(),
  //     ));

  // getIt.registerLazySingleton<OrderRepository>(() => OrderRepositoryImpl(
  //       orderSource: getIt.get<OrderSource>(),
  //     ));
}

void registerSources() {
  // getIt.registerLazySingleton<UploadSource>(() => UploadSourceImpl(
  //       imagePicker: getIt.get<ImagePicker>(),
  //       network: getIt.get<Network>(),
  //     ));

  // getIt.registerLazySingleton<UserSource>(
  //     () => UserSourceImpl(network: getIt.get<Network>()));

  // getIt.registerLazySingleton<ServiceSource>(
  //     () => ServiceSourceImpl(network: getIt.get<Network>()));

  // getIt.registerLazySingleton<OrderSource>(
  //     () => OrderSourceImpl(network: getIt.get<Network>()));
}

void registerBlocs() {
  getIt.registerFactory<LoginCubit>(() => LoginCubit());
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit());

//  getIt.registerFactory<HomeCubit>(() => HomeCubit());

//   getIt.registerFactory<MainCubit>(
//       () => MainCubit(serviceRepository: getIt.get<ServiceRepository>()));
//   getIt.registerFactory<FindProviderCubit>(() => FindProviderCubit(
//       orderRepository: getIt.get<OrderRepository>(),
//       serviceRepository: getIt.get<ServiceRepository>(),
//       streamControllers: getIt.get<StreamControllers>()));

//   getIt.registerSingleton<BookingAddressCubit>(BookingAddressCubit());

//   getIt.registerFactory<CategoryCubit>(
//       () => CategoryCubit(serviceRepository: getIt.get<ServiceRepository>()));

//   getIt.registerSingleton<RegisterCubit>(RegisterCubit(
//     userRepository: getIt.get<UserRepository>(),
//     uploadRepository: getIt.get<UploadRepository>(),
//   ));
}
