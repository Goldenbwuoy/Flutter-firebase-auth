import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      child: Center(
        child: SpinKitFadingCircle(
          color: Colors.brown,
          size: 50.0,
        ),
      ),
    );
  }
}
