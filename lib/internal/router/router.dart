import 'package:auto_route/auto_route.dart';
import 'package:sticker_creator/presentation/pages/create_pack/create_pack_page.dart';
import 'package:sticker_creator/presentation/pages/home/home_page.dart';
import 'package:sticker_creator/presentation/pages/info/info_page.dart';
import 'package:sticker_creator/presentation/pages/pack/pack_page.dart';
import 'package:sticker_creator/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:sticker_creator/presentation/pages/sticker_page/sticker_page.dart';
import 'dart:io';

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
      path: '/home',
    ),
    AutoRoute(
      page: CreatePackPage,
      path: '/create_pack',
    ),
    AutoRoute(
      page: PackPage,
      path: '/pack',
    ),
    AutoRoute(
      page: InfoPage,
      path: '/info',
    ),
    AutoRoute(
      page: StickerPage,
      path: '/sticker',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
