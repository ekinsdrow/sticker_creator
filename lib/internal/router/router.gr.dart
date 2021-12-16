// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    CreatePackRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreatePackPage());
    },
    PackRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PackPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(HomeRoute.name, path: '/home'),
        RouteConfig(CreatePackRoute.name, path: '/create_pack'),
        RouteConfig(PackRoute.name, path: '/pack')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [CreatePackPage]
class CreatePackRoute extends PageRouteInfo<void> {
  const CreatePackRoute() : super(CreatePackRoute.name, path: '/create_pack');

  static const String name = 'CreatePackRoute';
}

/// generated route for
/// [PackPage]
class PackRoute extends PageRouteInfo<void> {
  const PackRoute() : super(PackRoute.name, path: '/pack');

  static const String name = 'PackRoute';
}
