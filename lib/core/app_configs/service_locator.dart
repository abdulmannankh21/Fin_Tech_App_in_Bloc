import 'package:flutter_app/bottom_navigation/cards/addon_cards/repository/addon_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/repository/block_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/repository/card_details_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/repository/issue_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/repository/load_funds_on_card_repo.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/repository/unblock_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/view_addon_cards/repository/view_addon_card_details_repository.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_fund/repository/add_fund_wallet_repository.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/repository/add_on_user_repo.dart';
import 'package:flutter_app/bottom_navigation/wallets/repository/wallet_screen_repo.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/repository/get_plans_repository.dart';
import 'package:flutter_app/core/repository/general_data_queries_repo.dart';
import 'package:flutter_app/core/services/dio_http_service.dart';
import 'package:flutter_app/core/services/http_service.dart';
import 'package:flutter_app/src/home/transaction/repository/home_transaction_repository.dart';
import 'package:flutter_app/user/create_wallet/repository/create_wallet_repo.dart';
import 'package:flutter_app/user/dashboard/repository/dashboard_repository.dart';
import 'package:flutter_app/user/login/domain/login_repository.dart';
import 'package:flutter_app/user/registeration/repo/registration_repo.dart';
import 'package:flutter_app/user/registeration/transaction_webview/repository/transaction_repo.dart';
import 'package:flutter_app/user/registeration/verify_email/repository/verify_email_repo.dart';
import 'package:flutter_app/user/registeration/verify_mobile/repository/verify_mobile_repo.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/repository/card_transaction_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerLazySingleton<HttpService>(() {
    return DioHttpService();
  });

  getIt.registerFactory<LoginRepository>(
    () => LoginRepository(httpService: GetIt.I.get<HttpService>()),
  );
  //
  getIt.registerLazySingleton<UnblockcardRepository>(
    () => UnblockcardRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerLazySingleton<IssueCardRepository>(
    () => IssueCardRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerLazySingleton<CardDetailsRepository>(
    () => CardDetailsRepository(httpService: GetIt.I.get<HttpService>()),
  );


  getIt.registerFactory<ViewAddOnCardDetailsRepository>(
        () => ViewAddOnCardDetailsRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerFactory<PlansRepository>(
        () => PlansRepository(httpService: GetIt.I.get<HttpService>()),
  );


  getIt.registerFactory<WalletRepository>(
        () => WalletRepository(httpService: GetIt.I.get<HttpService>()),
  );
  getIt.registerFactory<WalletFundRepository>(
        () => WalletFundRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerFactory<AddOnUserRepository>(
        () => AddOnUserRepository(httpService: GetIt.I.get<HttpService>()),
  );


  getIt.registerLazySingleton<AddOnCardRepository>(
        () => AddOnCardRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerLazySingleton<LoadFundsOnCardRepository>(
    () => LoadFundsOnCardRepository(httpService: GetIt.I.get<HttpService>()),
  );

  // getIt.registerFactory<MyTradeRepository>(
  //   () => MyTradeRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  getIt.registerLazySingleton<BlockCardRepository>(
    () => BlockCardRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerFactory<GeneralDataQueriesRepo>(
    () => GeneralDataQueriesRepo(httpService: GetIt.I.get<HttpService>()),
  );
  getIt.registerFactory<VerifyEmailRepo>(
        () => VerifyEmailRepo(httpService: GetIt.I.get<HttpService>()),
  );
  getIt.registerFactory<VerifyMobileRepo>(
        () => VerifyMobileRepo(httpService: GetIt.I.get<HttpService>()),
  );
  getIt.registerFactory<TransactionRepo>(
        () => TransactionRepo(httpService: GetIt.I.get<HttpService>()),
  );
  getIt.registerFactory<DashboardRepository>(
        () => DashboardRepository(httpService: GetIt.I.get<HttpService>()),
  );
  //
  // getIt.registerFactory<AddFundsRepository>(
  //   () => AddFundsRepository(
  //     httpService: GetIt.I.get<HttpService>(),
  //     loginRepository: GetIt.I.get<LoginRepository>(),
  //   ),
  // );
  //
  // getIt.registerFactory<LoadFundsAddOnUserRepo>(
  //   () => LoadFundsAddOnUserRepo(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  getIt.registerFactory<CardTransactionRepository>(
    () => CardTransactionRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerFactory<HomeTransactionRepository>(
        () => HomeTransactionRepository(httpService: GetIt.I.get<HttpService>()),
  );

  getIt.registerFactory<RegistrationRepository>(
        () => RegistrationRepository(httpService: GetIt.I.get<HttpService>()),
  );

   //
  // getIt.registerFactory<CreateAddOnUserRepository>(
  //   () => CreateAddOnUserRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<WalletTransactionRepo>(
  //   () => WalletTransactionRepo(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<DashboardRepository>(
  //   () => DashboardRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  getIt.registerFactory<CreateWalletRepo>(
    () => CreateWalletRepo(httpService: GetIt.I.get<HttpService>()),
  );
  //
  // getIt.registerFactory<GetAddressRepository>(
  //   () => GetAddressRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<SendCoinRepository>(
  //   () => SendCoinRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<TradeRepository>(
  //   () => TradeRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<CrateBankAccountRepository>(
  //   () => CrateBankAccountRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<CreateBankTransactionRepository>(
  //   () => CreateBankTransactionRepository(
  //       httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<GetBankDataRepository>(
  //   () => GetBankDataRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<GetBankTransactionRepository>(
  //   () => GetBankTransactionRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<CrateQRCodeRepository>(
  //   () => CrateQRCodeRepository(httpService: GetIt.I.get<HttpService>()),
  // );
  //
  // getIt.registerFactory<WithdrawRequestRepository>(
  //   () => WithdrawRequestRepository(httpService: GetIt.I.get<HttpService>()),
  // );
}
