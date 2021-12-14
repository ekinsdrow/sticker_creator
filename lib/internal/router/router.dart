import 'package:auto_route/auto_route.dart';
import 'package:sticker_creator/presentation/pages/home/home_page.dart';
import 'package:sticker_creator/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: HomePage,
      path: '/home'
    ),
  ],
)
class AppRouter extends _$AppRouter {}
