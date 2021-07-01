import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

int conpareVersion(String versionA, String versionB) {
  if (versionA == versionB) {
    return 0;
  }
  final versionNumA = versionA.split('.');
  final versionNumB = versionB.split('.');
  final length = min(versionNumA.length, versionNumB.length);
  for (var i = 0; i < length; i++) {
    if (int.parse(versionNumA[i]) > int.parse(versionNumB[i])) {
      return 1;
    }
    if (int.parse(versionNumA[i]) < int.parse(versionNumB[i])) {
      return -1;
    }
  }
  if (versionNumA.length > versionNumB.length) {
    return 1;
  }
  if (versionNumA.length < versionNumB.length) {
    return -1;
  }
  return 0;
}

List<String> sortVersions(List<String> versions) {
  return [...versions]..sort(conpareVersion);
}

void main() {
  test('sort versions', () {
    final versions = [
      '2.1.1',
      '2.1.3',
      '2.1.2',
      '1.2.3',
      '1.2',
      '1.1',
    ];

    final sortedVersions = sortVersions(versions);

    expect(sortedVersions[0], '1.1');
    expect(sortedVersions[1], '1.2');
    expect(sortedVersions[2], '1.2.3');
    expect(sortedVersions[3], '2.1.1');
    expect(sortedVersions[4], '2.1.2');
    expect(sortedVersions[5], '2.1.3');
  });
}
