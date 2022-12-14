// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/foundation.dart' as _i6;
import 'package:flutter/material.dart' as _i2;

import '../../mobile/router/auth_guard.dart' as _i3;
import '../web_main.dart' as _i5;
import 'web_router.dart' as _i4;

class WebAppRouter extends _i1.RootStackRouter {
  WebAppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
          return _i4.HomePage(
              key: args.key,
              navigate: args.navigate,
              showUserPosts: args.showUserPosts);
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
          return _i5.LoginPage(
              key: args.key, onLoginResult: args.onLoginResult);
        }),
    UserRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<UserRouteArgs>(
              orElse: () => UserRouteArgs(id: pathParams.getInt('userID', -1)));
          return _i4.UserPage(key: args.key, id: args.id);
        }),
    NotFoundRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.NotFoundScreen();
        }),
    UserProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UserProfileRouteArgs>(
              orElse: () => const UserProfileRouteArgs());
          return _i4.UserProfilePage(key: args.key, navigate: args.navigate);
        }),
    UserPostsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.UserPostsPage();
        }),
    UserAllPostsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<UserAllPostsRouteArgs>(
              orElse: () => const UserAllPostsRouteArgs());
          return _i4.UserAllPostsPage(key: args.key, navigate: args.navigate);
        }),
    UserFavoritePostsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.UserFavoritePostsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(UserRoute.name, path: '/user/:userID', guards: [
          authGuard
        ], children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'profile', fullMatch: true),
          _i1.RouteConfig(UserProfileRoute.name, path: 'profile'),
          _i1.RouteConfig(UserPostsRoute.name, path: 'posts', children: [
            _i1.RouteConfig('#redirect',
                path: '', redirectTo: 'all', fullMatch: true),
            _i1.RouteConfig(UserAllPostsRoute.name, path: 'all'),
            _i1.RouteConfig(UserFavoritePostsRoute.name, path: 'favorite')
          ])
        ]),
        _i1.RouteConfig(NotFoundRoute.name, path: '/404')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {_i6.Key? key, void Function()? navigate, void Function()? showUserPosts})
      : super(name,
            path: '/',
            args: HomeRouteArgs(
                key: key, navigate: navigate, showUserPosts: showUserPosts));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.navigate, this.showUserPosts});

  final _i6.Key? key;

  final void Function()? navigate;

  final void Function()? showUserPosts;
}

class LoginRoute extends _i1.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key, void Function(bool)? onLoginResult})
      : super(name,
            path: '/login',
            args: LoginRouteArgs(key: key, onLoginResult: onLoginResult));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginResult});

  final _i6.Key? key;

  final void Function(bool)? onLoginResult;
}

class UserRoute extends _i1.PageRouteInfo<UserRouteArgs> {
  UserRoute({_i6.Key? key, int id = -1, List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/user/:userID',
            args: UserRouteArgs(key: key, id: id),
            rawPathParams: {'userID': id},
            initialChildren: children);

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key, this.id = -1});

  final _i6.Key? key;

  final int id;
}

class NotFoundRoute extends _i1.PageRouteInfo {
  const NotFoundRoute() : super(name, path: '/404');

  static const String name = 'NotFoundRoute';
}

class UserProfileRoute extends _i1.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i6.Key? key, void Function()? navigate})
      : super(name,
            path: 'profile',
            args: UserProfileRouteArgs(key: key, navigate: navigate));

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, this.navigate});

  final _i6.Key? key;

  final void Function()? navigate;
}

class UserPostsRoute extends _i1.PageRouteInfo {
  const UserPostsRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'UserPostsRoute';
}

class UserAllPostsRoute extends _i1.PageRouteInfo<UserAllPostsRouteArgs> {
  UserAllPostsRoute({_i6.Key? key, void Function()? navigate})
      : super(name,
            path: 'all',
            args: UserAllPostsRouteArgs(key: key, navigate: navigate));

  static const String name = 'UserAllPostsRoute';
}

class UserAllPostsRouteArgs {
  const UserAllPostsRouteArgs({this.key, this.navigate});

  final _i6.Key? key;

  final void Function()? navigate;
}

class UserFavoritePostsRoute extends _i1.PageRouteInfo {
  const UserFavoritePostsRoute() : super(name, path: 'favorite');

  static const String name = 'UserFavoritePostsRoute';
}
