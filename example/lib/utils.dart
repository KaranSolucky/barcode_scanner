import 'package:flutter/material.dart';
import 'package:flutter_barcode_sdk/dynamsoft_barcode.dart';
import 'package:path/path.dart';

/// Convert List<BarcodeResult> to string for display.
String getBarcodeResults(List<BarcodeResult> results) {
  StringBuffer sb = new StringBuffer();
  for (BarcodeResult result in results) {
    print("im here");
    // sb.write(result.format);
    sb.write("\n");
    sb.write(result.text);
    sb.write("\n");
  }
  if (results.length == 0) sb.write("No Barcode Detected");
  print("outside NO DETECTION");
  return "$sb";
}

Card card() {
  StringBuffer sb = new StringBuffer();
  return Card(
    child: Container(
      child: Text(sb.toString()),
    ),
  );
}
