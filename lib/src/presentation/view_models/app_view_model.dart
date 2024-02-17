import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../common/res/numbers.dart';
import '../../common/utils/http_client/token_provider.dart';
import '../../common/utils/storage/shared_pref_util.dart';
import '../../domain/entities/app_state/app_state.dart';
import '../../domain/entities/contract/contract_entity.dart';
import '../../domain/entities/customer/customer.dart';
import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/salseperson/saleperson_entity.dart';
import '../../domain/entities/service_sub/sub_service.dart';
import '../../domain/entities/user/user.dart';
import '../pages/about_app/about_app.dart';
import '../pages/change_password/change_password.dart';
import '../pages/customer_curd/customer_curd.dart';
import '../pages/customer_details/customer_details.dart';
import '../pages/customers/customers.dart';
import '../pages/forget_password/forget_password.dart';
import '../pages/index/index.dart';
import '../pages/login/login.dart';
import '../pages/order_curd/order_curd.dart';
import '../pages/order_details/order_details.dart';
import '../pages/order_service_curd/order_service_curd.dart';
import '../pages/orders/orders.dart';
import '../pages/product_details/product_details.dart';
import '../pages/products/products.dart';
import '../pages/profile/profile.dart';
import '../pages/saleperson_curd/saleperson_curd.dart';
import '../pages/salepersons/salepersons.dart';
import '../pages/slaeperson_details/saleperson_details.dart';
import '../pages/splashscreen/splashscreen.dart';
import 'auth/user_view_model.dart';

final routerNotifierProvider =
    AutoDisposeAsyncNotifierProvider<RouterNotifier, AppState>(
  () => RouterNotifier(),
);
List<ShellRoute> get routes => [
      ShellRoute(
        builder: (context, state, child) {
          return child;
        },
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const IndexPage(),
            routes: [
              GoRoute(
                path: "customers",
                name: CustomersPage.pageName,
                builder: (context, state) {
                  return CustomersPage(
                    selectedCustomer: state.extra as CustomerEntity?,
                  );
                },
                routes: [
                  GoRoute(
                    path: "customer_details",
                    name: CustomerDetailsPage.pageName,
                    builder: (context, state) {
                      return CustomerDetailsPage(
                        customer: state.extra as CustomerEntity,
                      );
                    },
                  ),
                  GoRoute(
                    path: "customer_curd",
                    name: CustomerCurdPage.pageName,
                    builder: (context, state) {
                      return CustomerCurdPage(
                          customer: state.extra as CustomerEntity);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: "orders",
                name: OrdersPage.pageName,
                builder: (context, state) {
                  return const OrdersPage();
                },
                routes: [
                  // GoRoute(
                  //   path: OrderCurdPage.pageName,
                  //   name: OrderDetailsPage.pageName,
                  //   builder: (context, state) {
                  //     return const OrderCurdPage();
                  //   },
                  // ),
                  GoRoute(
                    path: OrderServiceCurdPage.pageName,
                    name: OrderServiceCurdPage.pageName,
                    builder: (context, state) {
                      return OrderServiceCurdPage(
                          contract: state.extra as SubServiceEntity);
                    },
                  ),
                  GoRoute(
                    path: OrderCurdPage.pageName,
                    name: OrderCurdPage.pageName,
                    builder: (context, state) {
                      print("go in curd path");
                      return OrderCurdPage(order: state.extra as OrderEntity?);
                    },
                    routes: [
                      // GoRoute(
                      //   path: CustomersPage.selectionPageName,
                      //   name: CustomersPage.selectionPageName,
                      //   builder: (context, state) {
                      //     print("go in selection path");
                      //     return CustomersPage(
                      //       isSelection: state.pathParameters['isSelected'] as bool?,
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: "salePersons",
                name: SalePersonsPage.pageName,
                builder: (context, state) {
                  return const SalePersonsPage();
                },
                routes: [
                  GoRoute(
                    path: "salePerson_details",
                    name: SalePersonDetailsPage.pageName,
                    builder: (context, state) {
                      return SalePersonDetailsPage(
                        saleperson: state.extra as SalePersonEntity,
                      );
                    },
                  ),
                  GoRoute(
                    path: "salePerson_curd",
                    name: SalePersonCurdPage.pageName,
                    builder: (context, state) {
                      return SalePersonCurdPage(
                          saleperson: state.extra as SalePersonEntity);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: "products",
                name: ProductsPage.pageName,
                builder: (context, state) {
                  return ProductsPage();
                },
                routes: [
                  GoRoute(
                    path: "product_details",
                    name: ProductDetailsPage.pageName,
                    builder: (context, state) {
                      return ProductDetailsPage(
                          product: state.extra as ProductEntity);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: "profile",
                name: ProfilePage.pageName,
                builder: (context, state) {
                  return const ProfilePage();
                },
              ),
              GoRoute(
                path: "aboutApp",
                name: AccountPage.pageName,
                builder: (context, state) {
                  return const AccountPage();
                },
              ),
              GoRoute(
                path: "change-password",
                name: ChangePasswordPage.pageName,
                builder: (context, state) {
                  return const ChangePasswordPage();
                },
              ),
            ],
          ),
          GoRoute(
            path: SplashscreenPage.pathName,
            name: SplashscreenPage.pageName,
            builder: (context, state) => const SplashscreenPage(),
          ),
          GoRoute(
            path: LoginPage.pathName,
            name: LoginPage.pageName,
            builder: (context, state) => const LoginPage(),
            routes: [
              GoRoute(
                path: "reset-password",
                name: ForgetPasswordPage.pageName,
                builder: (context, state) => const ForgetPasswordPage(),
              ),
            ],
          ),
        ],
      ),
    ];

class RouterNotifier extends AutoDisposeAsyncNotifier<AppState>
    implements Listenable {
  VoidCallback? _routerListener;

  @override
  FutureOr<AppState> build() async {
    developer.log('Building router');
    // await 3.delay();
    final appState = await _getAppState();
    ref.listenSelf((_, __) {
      developer.log('listenSelf');
      developer.log(state.toString());
      if (state.value == const AppState.authenticated()) {}
      if (state.isLoading) return;
      _routerListener?.call();
    });
    return appState;
  }

  /// Redirects the user when our authentication changes
  String? redirect(BuildContext context, GoRouterState state) {
    developer.log('Redirecting : ${state.path}');
    developer.log('Redirecting location : ${state.matchedLocation}');

    final location = state.matchedLocation;
    final appState = this.state.value;

    if (location == '/splashscreen' && appState == const Authenticated()) {
      return '/';
    }
    if (location == '/login' && appState == const Authenticated()) {
      return '/';
    }
    if (location == '/login/reset-password' &&
        appState == const Unauthenticated()) {
      return null;
    }

    switch (appState) {
      case const Initializing() || const Authenticated():
        return null;
      case LoadingError():
        return '/loading-error';
      case const Unauthenticated():
        return "/login";
      default:
        return SplashscreenPage.pathName;
    }
  }

  Future<AppState> _getAppState() async {
    developer.log('_getAppState');
    await 1.delay();
    final authToken = await SharedPrefUtil.getAuthToken();
    if (authToken != null) {
      ref.read(authTokenProvider).setToken(authToken);
      await _fetchUser();
      return const AppState.authenticated();
    }
    return const AppState.unauthenticated();
  }

  _fetchUser() async {
    try {
      String? user = await SharedPrefUtil.getUser();
      if (user == null) const AppState.unauthenticated();
      if (user != null) {
        developer.log(user);
        ref
            .read(userViewModelProvider.notifier)
            .setUser(UserEntity.fromJson(json.decode(user)));
      }
      return const Unauthenticated();
    } catch (e) {
      return const Unauthenticated();
    }
  }

  authenticate() {
    state = const AsyncData(AppState.authenticated());
  }

  unAuthenticate() {
    state = const AsyncData(AppState.unauthenticated());
  }

  /// Adds [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method on creation to handle its
  /// internal [ChangeNotifier].
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  /// Removes [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method when disposing,
  /// so that it removes its callback when destroyed.
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
