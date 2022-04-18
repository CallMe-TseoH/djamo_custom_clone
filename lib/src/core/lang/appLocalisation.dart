import 'package:djamo_custom_clone/src/core/lang/en_US.dart';
import 'package:djamo_custom_clone/src/core/lang/fr_FR.dart';
import 'package:get/get.dart';

class AppLocalisation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "fr":frFR,
    "en":enUS,
  };

}