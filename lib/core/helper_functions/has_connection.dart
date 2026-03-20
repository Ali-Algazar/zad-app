import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> hasConnection(Connectivity connectivity) async {
  final results = await connectivity.checkConnectivity();
  final hasConnection =
      results.isNotEmpty && results.first != ConnectivityResult.none;

  return hasConnection;
}
