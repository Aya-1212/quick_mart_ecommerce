import 'package:flutter/material.dart';

pushTo(context, {required Widget nextScreen}) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => nextScreen,
  ));
}

popFrom(context) {
  Navigator.of(context).pop();
}

pushWithReplacement(context, {required Widget nextScreen}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => nextScreen,
  ));
}

pushAndRemoveUntil(context, {required Widget nextScreen}) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => nextScreen),
      (route) => false);
}
