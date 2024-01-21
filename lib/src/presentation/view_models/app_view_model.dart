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
import '../../domain/entities/equipment/equipment.dart';
import '../../domain/entities/invoice/invoice_entity.dart';
import '../../domain/entities/system/system.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/entities/visit/visit.dart';
import '../pages/about_app/about_app.dart';
import '../pages/change_password/change_password.dart';
import '../pages/check/check.dart';
import '../pages/customer_curd/customer_curd.dart';
import '../pages/customer_details/customer_details.dart';
import '../pages/customers/customers.dart';
import '../pages/equipements_history/equipment_history.dart';
import '../pages/equipements_report/equipment_report.dart';
import '../pages/forget_password/forget_password.dart';
import '../pages/index/index.dart';
import '../pages/invoice_details/invoice_details.dart';
import '../pages/invoices/invoices.dart';
import '../pages/invoicing/invoicing.dart';
import '../pages/login/login.dart';
import '../pages/order_curd/order_curd.dart';
import '../pages/order_details/order_details.dart';
import '../pages/orders/orders.dart';
import '../pages/proceed_emergency/proceed_emergency.dart';
import '../pages/proceed_visit/proceed_visit.dart';
import '../pages/product_details/product_details.dart';
import '../pages/products/products.dart';
import '../pages/profile/profile.dart';
import '../pages/saleperson_curd/saleperson_curd.dart';
import '../pages/salepersons/salepersons.dart';
import '../pages/slaeperson_details/saleperson_details.dart';
import '../pages/splashscreen/splashscreen.dart';
import '../pages/visit_details/visit_details.dart';
import '../pages/visits/visits.dart';
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
                path: "check/:id",
                name: CheckPage.pageName,
                builder: (context, state) {
                  final idParam = state.pathParameters['id'];
                  final id = int.parse(idParam!);
                  return CheckPage(visitId: id);
                },
              ),
              GoRoute(
                path: "proceed-visit",
                name: ProceedVisitPage.pageName,
                builder: (context, state) {
                  // final idParam = state.pathParameters['id'];
                  // final id = int.parse(idParam!);
                  return ProceedVisitPage(visit: state.extra as VisitModel);
                },
              ),
              GoRoute(
                path: "proceed-emergency",
                name: ProceedEmergencyPage.pageName,
                builder: (context, state) {
                  return const ProceedEmergencyPage();
                },
              ),
              GoRoute(
                path: "customers",
                name: CustomersPage.pageName,
                builder: (context, state) {
                  return const CustomersPage();
                },
                routes: [
                  GoRoute(
                    path: "customer_details",
                    name: CustomerDetailsPage.pageName,
                    builder: (context, state) {
                      return const CustomerDetailsPage();
                    },
                  ),
                  GoRoute(
                    path: "customer_curd",
                    name: CustomerCurdPage.pageName,
                    builder: (context, state) {
                      return CustomerCurdPage(
                          contract: state.extra as ContractEntity);
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
                  GoRoute(
                    path: "order_details",
                    name: OrderDetailsPage.pageName,
                    builder: (context, state) {
                      return const OrderDetailsPage();
                    },
                  ),
                  GoRoute(
                    path: "order_curd",
                    name: OrderCurdPage.pageName,
                    builder: (context, state) {
                      return OrderCurdPage(
                          contract: state.extra as ContractEntity);
                    },
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
                      return const SalePersonDetailsPage();
                    },
                  ),
                  GoRoute(
                    path: "salePerson_curd",
                    name: SalePersonCurdPage.pageName,
                    builder: (context, state) {
                      return SalePersonCurdPage(
                          contract: state.extra as ContractEntity);
                    },
                  ),
                ],
              ),


              GoRoute(
                path: "products",
                name: ProductsPage.pageName,
                builder: (context, state) {
                  return const ProductsPage();
                },
                routes: [
                  GoRoute(
                    path: "product_details",
                    name: ProductDetailsPage.pageName,
                    builder: (context, state) {
                      return const ProductDetailsPage();
                    },
                  ),
                ],
              ),

              GoRoute(
                path: "equipmentReport",
                name: EquipmentReport.pageName,
                builder: (context, state) {
                  return EquipmentReport(system: state.extra as SystemModel);
                },
              ),
              GoRoute(
                path: "equipmentHistory",
                name: EquipmentHistory.pageName,
                builder: (context, state) {
                  return EquipmentHistory(
                      equipment: state.extra as EquipmentModel);
                },
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
              GoRoute(
                path: "visits",
                name: VisitsPage.pageName,
                builder: (context, state) {
                  return const VisitsPage();
                },
              ),
              GoRoute(
                path: "visits/:id",
                name: VisitDetailsPage.pageName,
                builder: (context, state) {
                  final idParam = state.pathParameters['id'];
                  final id = int.parse(idParam!);
                  return VisitDetailsPage(visitId: id);
                },
              ),
              GoRoute(
                path: "invoices",
                name: InvoicesPage.pageName,
                builder: (context, state) {
                  return const InvoicesPage();
                },
              ),
              GoRoute(
                path: "invoicing",
                name: InvoicingPage.pageName,
                builder: (context, state) {
                  return const InvoicingPage();
                },
              ),
              GoRoute(
                path: "invoiceDetails",
                name: InvoicesDetailsPage.pageName,
                builder: (context, state) {
                  return InvoicesDetailsPage(
                      invoice: state.extra as InvoiceEntity);
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
