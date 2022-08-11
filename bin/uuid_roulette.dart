import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

const backSpace =
    '\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b';

Future<void> main(List<String> arguments) async {
  Map<String, bool> uuidMap = {};

  String currentUuid = uuid.v4();

  while (!uuidMap.containsKey(currentUuid)) {
    uuidMap[currentUuid] = true;

    stdout.write(backSpace);
    stdout.write(currentUuid);

    currentUuid = uuid.v4();

    // await Future.delayed(Duration(milliseconds: 1));
  }
  print('\n');

  print('hit!! $currentUuid');
  print('number of trials: ${uuidMap.length}');
}
