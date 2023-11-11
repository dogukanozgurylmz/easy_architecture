import 'package:easy_architecture/app/core/network/network_control.dart';
import 'package:flutter/material.dart';

class NoNetwork extends StatefulWidget {
  const NoNetwork({super.key});

  @override
  State<NoNetwork> createState() => _NoNetworkState();
}

class _NoNetworkState extends State<NoNetwork> {
  late final INetworkControl _networkControl;
  NetworkResult? _networkResult;
  @override
  void initState() {
    super.initState();
    _networkControl = NetworkControl();
    fetchFirstResult();
    _networkControl.handleNetworkChange((result) {
      _updateView(result);
    });
  }

  Future fetchFirstResult() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var result = await _networkControl.checkNetworkFirstTime();
      _updateView(result);
    });
  }

  void _updateView(NetworkResult result) {
    setState(() {
      _networkResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: Container(height: 50, color: Colors.red),
      secondChild: SizedBox.shrink(),
      crossFadeState: _networkResult == NetworkResult.on
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: Duration(seconds: 1),
    );
  }
}
