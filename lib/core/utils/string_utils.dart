String enumName(String enumToString) {
  List<String> paths = enumToString.split(".");
  return paths[paths.length - 1];
}

bool isValidUrl(List<String?>? urlsList) {
  if (urlsList == null) return false;
  return Uri.parse(urlsList[0] as String).isAbsolute;
}

String? initials(String? fullName) {
  try {
    if (fullName == null) return null;
    if (fullName.isEmpty) return '';
    final names = fullName.split(" ");
    final String firstName = names[0];
    String? secondName;
    if (names.length > 1) {
      secondName = names[1];
    }
    String firstNameInitial = '';
    String secondNameInitial = '';
    firstNameInitial = firstName[0].toUpperCase();
    if (secondName != null) {
      secondNameInitial = secondName[0].toUpperCase();
    }
    return "$firstNameInitial$secondNameInitial";
  } on Exception catch (ex) {
    print(ex);
    return '';
  }
}

bool isNullOrWhiteSpace(String? str) {
  if (str == null) {
    return true;
  }
  //final pattern = r'^\s*$';
  final pattern = r'\S';
  final exp = RegExp(pattern);
  return !exp.hasMatch(str);
}

String getFirstUnitFromDuration(Duration? duration) {
  if (duration == null) {
    return '';
  }
  if (duration.inDays > 0) {
    return '${duration.inDays} days';
  } else if (duration.inHours > 0) {
    return '${duration.inHours} hours';
  } else if (duration.inMinutes > 0) {
    return '${duration.inMinutes} mins';
  } else if (duration.inSeconds > 0) {
    return '${duration.inSeconds} secs';
  } else {
    return '';
  }
}

String formatExceptionStr(String? s) {
  if (isNullOrWhiteSpace(s)) {
    return '';
  }
  return s!.replaceFirst(RegExp(r'Exception:'), '').trim();
}

/// extract first integer number from given string
int? numExtractor(String? s) {
  if (isNullOrWhiteSpace(s)) return null;
  final pattern = '[0-9]+';
  final regex = RegExp(pattern);
  return int.tryParse(regex.firstMatch(s!)?.group(0) ?? '');
}

///get number in 2 digit format i,e 1 -> 01
String get2DigitNumber(int num) => num.toString().padLeft(2, '0');
