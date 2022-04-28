import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/djamo_tip_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';

class TipRepository{
  TipRepository._();
  static Future<List<DjamoTipEntity>> getTips() async{
    return [
      const DjamoTipEntity(title: AccountTextKey.djamoFoodTitle, subtitle: AccountTextKey.djamoFoodSubtitle, illustrationLink: AssetsHelper.djamoFood),
      const DjamoTipEntity(title: AccountTextKey.buyBookTitle, subtitle: AccountTextKey.buyBookSubtitle, illustrationLink: AssetsHelper.buyBook),
      const DjamoTipEntity(title: AccountTextKey.inviteFriendsTitle, subtitle: AccountTextKey.inviteFriendsSubtitle, illustrationLink: AssetsHelper.inviteFriends),
    ];
  }
}