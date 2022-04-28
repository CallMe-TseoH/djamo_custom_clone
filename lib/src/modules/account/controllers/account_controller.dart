import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:djamo_custom_clone/src/core/helpers/extension_helpers.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/djamo_tip_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/money_sender_service_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/repositories/account_transaction_repository.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/repositories/money_sender_service_repository.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/repositories/tips_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  RxList<MoneySenderServiceEntity> moneySenderServices = <MoneySenderServiceEntity>[].obs;
  RxList<DjamoTipEntity> djamoTips = <DjamoTipEntity>[].obs;
  RxList<TransactionEntity> transactions = <TransactionEntity>[].obs;
  //
  late Rx<PageController> billServicePageController;
  late PageController tipsPageController;
  //
  RxDouble viewportFraction = .95.obs;
  RxInt currentCarouselIndex = 0.obs;
  RxBool showStartWithDjamoInstruction = true.obs;
  RxBool carouselWorkers = false.obs;
  RxBool tipHasBeenManuallyTaped = false.obs;
  //
  List<List<TransactionEntity>> get orderedTransactions{
    final _now = DateTime.now();
    final List<TransactionEntity> _transactionOfThisYears = transactions.where((element) => element.storedAt.year==_now.year).toList();
    _transactionOfThisYears.sortedBy((element) => element.storedAt);
    final List<List<TransactionEntity>> _chunked = _transactionOfThisYears.chunkWhile((p0, p1) => p0.storedAt.isAtSameDayAs(p1.storedAt)).toList();
    return _chunked;
  }

  //
  Future<void> __onInit() async {
    tipsPageController = PageController();
    moneySenderServices.value = await MoneySenderServiceRepository.getMoneySenderServices();
    djamoTips.value = await TipRepository.getTips();
    transactions.value = await AccountTransactionRepository.getTransactions();
  }

  @override
  void onInit() {
    __onInit();
    super.onInit();
    _listenCarouselWorkers();
    _listenTipHasBeenManuallyTaped();
  }

  Worker _listenCarouselWorkers() {
    return ever(carouselWorkers, (bool value){
    _changeCarouselPage();
  });
  }

  Worker _listenTipHasBeenManuallyTaped() {
    return debounce(tipHasBeenManuallyTaped, (bool value){
      if(tipHasBeenManuallyTaped.isTrue){
        Future.delayed(const Duration(seconds: 5), (){
          tipHasBeenManuallyTaped.toggle();
        });
      }
    }, time: const Duration(seconds: 3));
  }

  @override
  void onReady(){
    _changeCarouselPage();
    super.onReady();
  }

  Future<void> _changeCarouselPage() {
    return Future.delayed(const Duration(seconds: 6), (){
      if(djamoTips.length>1){
        carouselWorkers.toggle();
        if(tipHasBeenManuallyTaped.isFalse) {
          try{
            final _page =((tipsPageController.page?.toInt())!+1);
            if(( _page < djamoTips.length)) {
              tipsPageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.bounceInOut);
            }else{
              tipsPageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.bounceInOut);
            }
          }catch(_){

          }

        }
      }
  });
  }

  @override
  void onClose(){
    super.onClose();
  }
  //
  updateViewportFraction(int index){
    currentCarouselIndex.value = index;
    if(index == moneySenderServices.chunkList().length-1){
      viewportFraction.value = 1.0;
    }else{
      viewportFraction.value =.95;
    }
  }
}