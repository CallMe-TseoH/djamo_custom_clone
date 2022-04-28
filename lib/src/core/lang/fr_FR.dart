import 'package:djamo_custom_clone/src/core/helpers/helper_text_key.dart';
import 'package:djamo_custom_clone/src/modules/about/helpers/about_text_key.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/helpers/app_navigator_text_key.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:djamo_custom_clone/src/modules/statistics/helpers/statistics_text_key.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';

Map<String, String> get frFR => {
      SecurityTextKey.logout: "Déconnexion",
      SecurityTextKey.hello: "Hello @name",
      SecurityTextKey.forgotPassword: "J'ai oublié mon code",
      SecurityTextKey.composeSecretCode: "Composez votre code d'accès DJAMO",
      SecurityTextKey.invalidCode: "Code de sécurité incorrect.\nIl vous reste x tentatives",
      //
      HelpersTextKey.payment:"Paiement",
      HelpersTextKey.reload:"Rechargement",
      //
      AppNavigatorTextKey.account: "Compte",
      AppNavigatorTextKey.statistics: "Statistiques",
      AppNavigatorTextKey.cards: "Cartes",
      AppNavigatorTextKey.help: "Besoin d'aides?",
      //
      AccountTextKey.monthExpenses: "Dépenses du mois",
      AccountTextKey.depositMoney: "Déposer de l'argent",
      AccountTextKey.sendMoney: "Envoyer de l'argent",
      AccountTextKey.startWithDjamo: "Démarrez avec Djamo",
      AccountTextKey.transferMoney: "Transférer de l'argent",
      AccountTextKey.transaction: "Transactions",
      AccountTextKey.showAll: "Tout afficher",
      //TIPS
      AccountTextKey.djamoFoodTitle: "Dégustez avec Djamo",
      AccountTextKey.djamoFoodSubtitle: "Commandez sur Jumia Food ou Glovo avec Djamo",
      AccountTextKey.inviteFriendsTitle: "Invitez vos amis",
      AccountTextKey.inviteFriendsSubtitle: "Recevez 1000 F dès que votre invité dépasse 5000 F de paiements avec sa carte",
      AccountTextKey.buyBookTitle: "Vos Ebooks préférés",
      AccountTextKey.buyBookSubtitle: "Achetez des Ebooks sur Amazon, Audible, FNAC 📚",
      //STATISTICS
      StatisticsTextKey.thisMonthExpenses:"Dépenses @period",
      StatisticsTextKey.monthExpenses:"Dépenses : ",
      StatisticsTextKey.monthReloads:"Rechargements : ",
      StatisticsTextKey.initialBalance:"Solde initial : ",
      StatisticsTextKey.statement:"Rélévé",
      StatisticsTextKey.thisDayExpenses:"Dépenses au @period",
      StatisticsTextKey.transactions:"Transactions",
      StatisticsTextKey.allTransactions:"Tout".toUpperCase(),
      StatisticsTextKey.expenses:"Dépenses".toUpperCase(),
      StatisticsTextKey.reloads:"Rechargements".toUpperCase(),
      //TRANSACTION
      TransactionTextKey.transactionDetail:"Détails de transation",
      TransactionTextKey.dateAndTime:"Date & Heure",
      TransactionTextKey.status:"Statut",
      TransactionTextKey.perform:"Effectuée",
      TransactionTextKey.feeFreeAmount:"Montant (sans les frais)",
      TransactionTextKey.fee:"Free",
      TransactionTextKey.amountWithFee:"Montant (avec les frais)",
      TransactionTextKey.reloadedAmount:"Montant rechargé",
      TransactionTextKey.balanceAfterTransaction:"Solde après transaction",
      TransactionTextKey.buyWith:"Payé avec",
      TransactionTextKey.receipt:"Réçu",
      TransactionTextKey.reportProblem:"Signaler un problème",
      TransactionTextKey.download:"Télécharger",
      TransactionTextKey.warningMessage:"Contactez le support si vous avez été débité chez l'opérateur depuis plus de 20 minutes",
      //ABOUT_ME
      AboutTextKey.projectDescription : "L'application-ci est un clone customisé de l'application propriétaire - Djamo - de la Société Djamo Côte d'Ivoire. "
          "Ce clone est une implémentation à titre éducatif. Vous pourrez trouver l'application originale sur les AppStores ou sur les Pages de Djamo."
          "\"Djamo permet de bénéficier d'un compte et une carte pour mieux gérer votre argent.\"",
    };
