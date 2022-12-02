import 'package:flutter/material.dart';

/// From https://remelehane.dev/posts/widget-testing-rendeflex-overflow/.
/// Can be added to a widget unit test to stop overflow errors from
/// interupting widget unit tests.
/// 
/// Use with:
///   `FlutterError.onError = ignoreOverflowErrors;` in body of widget test.
void ignoreOverflowErrors( 
  FlutterErrorDetails details, {
  bool forceReport = false,
}) {
  bool ifIsOverflowError = false;
  bool isUnableToLoadAsset = false;

  // Detect overflow error.
  var exception = details.exception;
  if (exception is FlutterError) {
    ifIsOverflowError = !exception.diagnostics.any(
      (e) => e.value.toString().startsWith("A RenderFlex overflowed by"),
    );
    isUnableToLoadAsset = !exception.diagnostics.any(
      (e) => e.value.toString().startsWith("Unable to load asset"),
    );
  }

  // Ignore if is overflow error.
  if (ifIsOverflowError || isUnableToLoadAsset) {
    debugPrint('Ignored Error');
  } else {
    FlutterError.dumpErrorToConsole(details, forceReport: forceReport);
  }
}