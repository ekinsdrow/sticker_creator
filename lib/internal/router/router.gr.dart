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
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    CreatePackRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreatePackPage());
    },
    PackRoute.name: (routeData) {
      final args = routeData.argsAs<PackRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PackPage(key: args.key, pack: args.pack));
    },
    InfoRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const InfoPage());
    },
    StickerRoute.name: (routeData) {
      final args = routeData.argsAs<StickerRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: StickerPage(
              image: args.image, filename: args.filename, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        RouteConfig(HomeRoute.name, path: '/home'),
        RouteConfig(CreatePackRoute.name, path: '/create_pack'),
        RouteConfig(PackRoute.name, path: '/pack'),
        RouteConfig(InfoRoute.name, path: '/info'),
        RouteConfig(StickerRoute.name, path: '/sticker')
      ];
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
class PackRoute extends PageRouteInfo<PackRouteArgs> {
  PackRoute({Key? key, required Pack pack})
      : super(PackRoute.name,
            path: '/pack', args: PackRouteArgs(key: key, pack: pack));

  static const String name = 'PackRoute';
}

class PackRouteArgs {
  const PackRouteArgs({this.key, required this.pack});

  final Key? key;

  final Pack pack;

  @override
  String toString() {
    return 'PackRouteArgs{key: $key, pack: $pack}';
  }
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
  StickerRoute({required File image, required String filename, Key? key})
      : super(StickerRoute.name,
            path: '/sticker',
            args: StickerRouteArgs(image: image, filename: filename, key: key));

  static const String name = 'StickerRoute';
}

class StickerRouteArgs {
  const StickerRouteArgs(
      {required this.image, required this.filename, this.key});

  final File image;

  final String filename;

  final Key? key;

  @override
  String toString() {
    return 'StickerRouteArgs{image: $image, filename: $filename, key: $key}';
  }
}
