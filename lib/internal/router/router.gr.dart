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
    },
    InfoRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const InfoPage());
    },
    StickerRoute.name: (routeData) {
      final args = routeData.argsAs<StickerRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: StickerPage(image: args.image, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(HomeRoute.name, path: '/home'),
        RouteConfig(CreatePackRoute.name, path: '/create_pack'),
        RouteConfig(PackRoute.name, path: '/pack'),
        RouteConfig(InfoRoute.name, path: '/info'),
        RouteConfig(StickerRoute.name, path: '/sticker')
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

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute() : super(InfoRoute.name, path: '/info');

  static const String name = 'InfoRoute';
}

/// generated route for
/// [StickerPage]
class StickerRoute extends PageRouteInfo<StickerRouteArgs> {
  StickerRoute({required File image, Key? key})
      : super(StickerRoute.name,
            path: '/sticker', args: StickerRouteArgs(image: image, key: key));

  static const String name = 'StickerRoute';
}

class StickerRouteArgs {
  const StickerRouteArgs({required this.image, this.key});

  final File image;

  final Key? key;

  @override
  String toString() {
    return 'StickerRouteArgs{image: $image, key: $key}';
  }
}
