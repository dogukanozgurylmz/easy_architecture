import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

typedef NetworkCallback = void Function(NetworkResult result);

abstract class INetworkControl {
  Future<NetworkResult> checkNetworkFirstTime();
  void handleNetworkChange(NetworkCallback onChanged);
  void dispose();
}

class NetworkControl extends INetworkControl {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;
  NetworkControl() : _connectivity = Connectivity();

  @override
  Future<NetworkResult> checkNetworkFirstTime() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return NetworkResult.checkConnetivityResult(connectivityResult);
  }

  @override
  void handleNetworkChange(NetworkCallback onChanged) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) {
      onChanged.call(NetworkResult.checkConnetivityResult(event));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}

enum NetworkResult {
  on,
  off;

  static NetworkResult checkConnetivityResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.mobile:
      case ConnectivityResult.other:
        return NetworkResult.on;
      case ConnectivityResult.vpn:
      case ConnectivityResult.none:
        return NetworkResult.off;
    }
  }
}
