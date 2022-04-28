import 'package:djamo_custom_clone/src/core/helpers/helper_text_key.dart';
import 'package:djamo_custom_clone/src/modules/about/helpers/about_text_key.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/helpers/app_navigator_text_key.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:djamo_custom_clone/src/modules/statistics/helpers/statistics_text_key.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';

Map<String, String> get enUS =>{
  SecurityTextKey.logout: "Disconnect",
  SecurityTextKey.hello: "Hello @name",
  SecurityTextKey.forgotPassword: "I forgot my code",
  SecurityTextKey.composeSecretCode: "Enter your DJAMO access code",
  SecurityTextKey.invalidCode: "Incorrect security code.\nThere are x attempts left for you",
  //
  HelpersTextKey.payment:"Payment",
  HelpersTextKey.reload:"Reload",
  //
  AppNavigatorTextKey.account: "Account",
  AppNavigatorTextKey.statistics: "Statistics",
  AppNavigatorTextKey.cards: "Cards",
  AppNavigatorTextKey.help: "Need help?",
  //
  AccountTextKey.monthExpenses: "Month Expenses",
  AccountTextKey.depositMoney: "Deposit money",
  AccountTextKey.sendMoney: "Send money",
  AccountTextKey.startWithDjamo: "Get started with Djamo",
  AccountTextKey.transferMoney: "Transfer money",
  AccountTextKey.transaction: "Transaction",
  AccountTextKey.showAll: "Show all",
  //TIPS
  AccountTextKey.djamoFoodTitle: "Enjoy with Djamo",
  AccountTextKey.djamoFoodSubtitle: "Order on Jumia Food or Glovo with Djamo",
  AccountTextKey.inviteFriendsTitle: "Invite your friends",
  AccountTextKey.inviteFriendsSubtitle: "Receive 1000 F as soon as your guest exceeds 5000 F in payments with his card",
  AccountTextKey.buyBookTitle: "Your favorite ebooks",
  AccountTextKey.buyBookSubtitle: "Buy Ebooks on Amazon, Audible, FNAC 📚",
  //STATISTICS
  StatisticsTextKey.thisMonthExpenses:"Expenses @period",
  StatisticsTextKey.monthExpenses:"Expenses : ",
  StatisticsTextKey.monthReloads:"Reload : ",
  StatisticsTextKey.initialBalance:"Initial Balance : ",
  StatisticsTextKey.statement:"Statement",
  StatisticsTextKey.thisDayExpenses:"Expenses au @period",
  StatisticsTextKey.transactions:"Transaction",
  StatisticsTextKey.allTransactions:"All".toUpperCase(),
  StatisticsTextKey.expenses:"Expenses".toUpperCase(),
  StatisticsTextKey.reloads:"Reload".toUpperCase(),
  //TRANSACTION
  TransactionTextKey.transactionDetail:"Transation Details",
  TransactionTextKey.dateAndTime:"Date & Time",
  TransactionTextKey.status:"Status",
  TransactionTextKey.perform:"Perform",
  TransactionTextKey.feeFreeAmount:"Amount (without fees)",
  TransactionTextKey.fee:"Fee",
  TransactionTextKey.amountWithFee:"Amount (with fees)",
  TransactionTextKey.reloadedAmount:"Amount reloaded",
  TransactionTextKey.balanceAfterTransaction:"Balance after transaction",
  TransactionTextKey.buyWith:"Paid with",
  TransactionTextKey.receipt:"Receipt",
  TransactionTextKey.reportProblem:"Report a problem",
  TransactionTextKey.download:"Download",
  TransactionTextKey.warningMessage:"Contact support if you have been charged at the operator for more than 20 minutes",
  //ABOUT_ME
  AboutTextKey.projectDescription : "This app is a customized clone of the proprietary application - Djamo - of the Company Djamo Côte d'Ivoire. This clone is an educational implementation. You can find the original application on the AppStores or on the Pages of Djamo. \nDjamo allows you to benefit from an account and a card to better manage your money.",
 };