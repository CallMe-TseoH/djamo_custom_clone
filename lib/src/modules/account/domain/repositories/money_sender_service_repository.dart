import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/money_sender_service_entity.dart';

class MoneySenderServiceRepository{
  MoneySenderServiceRepository._();
  static Future<List<MoneySenderServiceEntity>> getMoneySenderServices() async {
    await Future.delayed(Duration.zero);
    return [
      MoneySenderServiceEntity(name: "Djamo", logoLink: AssetsHelper.djamoBgLogo),
      MoneySenderServiceEntity(name: "Orange", logoLink: AssetsHelper.omLogo),
      MoneySenderServiceEntity(name: "MTN", logoLink: AssetsHelper.mtnMomoLogo),
      MoneySenderServiceEntity(name: "Moov", logoLink: AssetsHelper.moovMoneyLogo),
      MoneySenderServiceEntity(name: "Wave", logoLink: AssetsHelper.waveLogo),
      MoneySenderServiceEntity(name: "Western Union", logoLink: AssetsHelper.westernUnionLogo),
      MoneySenderServiceEntity(name: "Banques", logoLink: AssetsHelper.bankLogo),
    ];
  }
}