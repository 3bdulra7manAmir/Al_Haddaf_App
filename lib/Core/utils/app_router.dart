import 'package:al_haddaf/Features/re_sport_trips/re_sport_trips.dart';
import 'package:al_haddaf/Features/show_tr_profiles/show_tr_profiles_viewbody.dart';
import 'package:al_haddaf/Features/sp_trips/sp_trips_viewbody.dart';
import 'package:al_haddaf/Features/sp_trips/widgets/sp_trips_card.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static const kReSportTripsView = '/reSportTripsView';
  static const kSpTripsView = '/spTripsView';
  static const kSpTripsViewBody = '/spTripsViewBody';
  static const kShowTrProfilesViewbody = '/showTrProfilesViewbody';
  static const kTrainerInfo = '/trainerInfo';

  static final router = GoRouter(
    routes:
    [
      GoRoute(
        path: kReSportTripsView,
        builder: (context, state) => ReSpTripsViewBody(),
      ),

      GoRoute(
        path: kSpTripsView,
        builder: (context, state) => const SpTripsView(),
      ),

      GoRoute(
        path: kSpTripsViewBody,
        builder: (context, state) => const SpTripsViewbody(),
      ),

      GoRoute(
        path: kShowTrProfilesViewbody,
        builder: (context, state) => const ShowTrProfilesViewbody(),
      ),

      GoRoute(
        path: '/',
        builder: (context, state) =>  ReSpTripsViewBody(),
      ),

    ],
  );
}