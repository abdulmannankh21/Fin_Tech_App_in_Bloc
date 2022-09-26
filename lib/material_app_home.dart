import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/airtime/cubit/airtime_cubit.dart';
import 'package:flutter_app/bottom_navigation/airtime/get_operator/cubit/airtime_recharge_cubit.dart';
import 'package:flutter_app/bottom_navigation/airtime/process_recharge/cubit/process_recharge_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/cubit/block_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/create_addon_cards/cubit/issue_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/cubit/load_funds_on_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/deposit/cubit/deposit_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/cubit/mastercard_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/load_funds/cubit/mastercard_load_funds_cubit.dart';
import 'package:flutter_app/bottom_navigation/mastercard/transactions/cubit/transaction_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_fund/cubit/add_fund_wallet_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/cubit/add_on_user_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/repository/wallet_screen_repo.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/cubit/card_transaction_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/cubit/unblock_card_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/view_addon_cards/cubit/view_addon_card_details_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/cubit/wallet_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/cubit/subscribe_cubit.dart';
import 'package:flutter_app/src/home/transaction/cubit/home_transaction_cubit.dart';
import 'package:flutter_app/src/language/LocaleString.dart';
import 'package:flutter_app/user/dashboard/repository/dashboard_repository.dart';
import 'package:flutter_app/core/theme/theme_manager.dart';
import 'package:flutter_app/src/home/transaction/repository/home_transaction_repository.dart';
import 'package:flutter_app/user/registeration/cubit/register_cubit.dart';
import 'package:flutter_app/user/registeration/repo/registration_repo.dart';
import 'package:flutter_app/bottom_navigation/cards/load_funds_on_card/repository/load_funds_on_card_repo.dart';
import 'package:flutter_app/user/create_business/cubit/create_business_cubit.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_on_user/repository/add_on_user_repo.dart';
import 'package:flutter_app/user/create_wallet/cubit/create_wallet_cubit.dart';
import 'package:flutter_app/user/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';
import 'package:flutter_app/user/logout/cubit/logout_cubit.dart';
import 'package:flutter_app/user/registeration/transaction_webview/cubit/transaction_webview_cubit.dart';
import 'package:flutter_app/user/registeration/verify_email/cubit/verify_email_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/repository/card_transaction_repository.dart';
import 'package:flutter_app/user/registeration/verify_mobile/cubit/verify_mobile_cubit.dart';
import 'package:flutter_app/bottom_navigation/airtime/get_operator/repository/recharge_repo.dart';
import 'package:flutter_app/bottom_navigation/airtime/process_recharge/repository/process_repo.dart';
import 'package:flutter_app/bottom_navigation/airtime/repository/airtime_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/bottom_navigation/wallets/add_fund/repository/add_fund_wallet_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/view_addon_cards/repository/view_addon_card_details_repository.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_it/get_it.dart';

import 'package:provider/provider.dart';
import 'package:flutter_app/user/login/domain/login_repository.dart';

import 'bottom_navigation/cards/addon_cards/cubit/addon_card_cubit.dart';
import 'bottom_navigation/cards/create_addon_cards/repository/issue_repository.dart';
import 'bottom_navigation/wallets/subscription/cubit/get_plans_cubit.dart';
import 'bottom_navigation/wallets/subscription/repository/get_plans_repository.dart';
import 'user/create_wallet/repository/create_wallet_repo.dart';
import 'user/registeration/verify_email/repository/verify_email_repo.dart';
import 'user/registeration/verify_mobile/repository/verify_mobile_repo.dart';
import 'user/registeration/transaction_webview/repository/transaction_repo.dart';
import 'package:flutter_app/bottom_navigation/cards/unblock_card/repository/unblock_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/block_card/repository/block_card_repository.dart';
import 'package:flutter_app/bottom_navigation/cards/addon_cards/repository/addon_card_repository.dart';
import 'package:flutter_app/bottom_navigation/mastercard/repo/mastercard_repo.dart';
import 'core/app_configs/routes_generator.dart';
import 'core/app_configs/service_locator.dart';
import 'src/splash/splash_screen.dart';
import 'package:flutter_app/bottom_navigation/deposit/repo/deposit_repo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as loc;
class MaterialAppHome extends StatefulWidget {
  static setCustomeLanguage(BuildContext context, String languageCode) {
    final _MaterialAppHomeState? state =
    context.findAncestorStateOfType<_MaterialAppHomeState>();
    state!.setLanguage(languageCode);
  }

  // This widget is the root of your application.
  @override
  _MaterialAppHomeState createState() => _MaterialAppHomeState();
}

class _MaterialAppHomeState extends State<MaterialAppHome> {
  @override
  void initState() {
    serviceLoactor();
    super.initState();
  }

  String locale = "en";

  setLanguage(String languageCode) {
    setState(() {
      locale = languageCode;
      locale = languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    locale = locale;

    return MultiBlocProvider(
        providers: [
          BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(
              repository: GetIt.I<LoginRepository>(),
            ),
          ),
          BlocProvider<LogoutCubit>(
            create: (context) => LogoutCubit(
              repository: GetIt.I<LoginRepository>(),
              loginCubit: context.read<LoginCubit>(),
            ),
          ),
          BlocProvider<CreateWalletCubit>(
            create: (context) => CreateWalletCubit(
              loginCubit: context.read<LoginCubit>(),
              repository: GetIt.I<CreateWalletRepo>(),
            ),
          ),
          BlocProvider<HomeTransactionCubit>(
            create: (context) => HomeTransactionCubit(
              repository: GetIt.I<HomeTransactionRepository>(),
            ),
          ),

          BlocProvider<AddOnUserCubit>(
            create: (context) => AddOnUserCubit(
              repository: GetIt.I<AddOnUserRepository>(),
            ),
          ),
          BlocProvider<MasterCardCubit>(
            create: (context) => MasterCardCubit(
              repository: GetIt.I<MasterCardRepository>(),
            ),
          ),
          BlocProvider<MasterCardTransactionCubit>(
            create: (context) => MasterCardTransactionCubit(
              repository: GetIt.I<MasterCardRepository>(),
            ),
          ),
          BlocProvider<MasterCardLoadFundCubit>(
            create: (context) => MasterCardLoadFundCubit(
              repository: GetIt.I<MasterCardRepository>(),
            ),
          ),
          BlocProvider<RegisterCubit>(
            create: (context) => RegisterCubit(
              repository: GetIt.I<RegistrationRepository>(),
            ),
          ),
          BlocProvider<WalletCubit>(
            create: (context) => WalletCubit(
              repository: GetIt.I<WalletRepository>(),
            ),
          ),
          BlocProvider<IssuecardCubit>(
            create: (context) => IssuecardCubit(
              repository: GetIt.I<IssueCardRepository>(),
            ),
          ),
          BlocProvider<ProcessRechargeCubit>(
            create: (context) => ProcessRechargeCubit(
              repository: GetIt.I<AirtimeProcessRepository>(),
            ),
          ),
          BlocProvider<AirtimeCubit>(
            create: (context) => AirtimeCubit(
              repository: GetIt.I<AirtimeRepository>(),
            ),
          ),
          BlocProvider<AirtimeRechargeCubit>(
            create: (context) => AirtimeRechargeCubit(
              repository: GetIt.I<AirtimeRechargeRepository>(),
            ),
          ),
          BlocProvider<DepositCubit>(
            create: (context) => DepositCubit(
              repository: GetIt.I<DepositRepository>(),
            ),
          ),
          BlocProvider<WalletFundCubit>(
            create: (context) => WalletFundCubit(
              repository: GetIt.I<WalletFundRepository>(),
            ),
          ),
          BlocProvider<CreateBusinessCubit>(
            create: (context) => CreateBusinessCubit(
              repository: GetIt.I<CreateWalletRepo>(),
            ),
          ),
          BlocProvider<VerifyEmailCubit>(
            create: (context) => VerifyEmailCubit(
              repository: GetIt.I<VerifyEmailRepo>(),
            ),
          ),
          BlocProvider<TransactionWebviewCubit>(
            create: (context) => TransactionWebviewCubit(
              repository: GetIt.I<TransactionRepo>(),
            ),
          ),
          BlocProvider<VerifyMobileCubit>(
            create: (context) => VerifyMobileCubit(
              repository: GetIt.I<VerifyMobileRepo>(),
            ),
          ),
          BlocProvider<AddOnCardCubit>(
            create: (context) => AddOnCardCubit(
              repository: GetIt.I<AddOnCardRepository>(),
            ),
          ),
          BlocProvider<BlockcardCubit>(
            create: (context) => BlockcardCubit(
              repository: GetIt.I<BlockCardRepository>(),
            ),
          ),
          BlocProvider<PlanCubit>(
            create: (context) => PlanCubit(
              repository: GetIt.I<PlansRepository>(),
            ),
          ),
          BlocProvider<SubscribeCubit>(
            create: (context) => SubscribeCubit(
              repository: GetIt.I<PlansRepository>(),
            ),
          ),
          BlocProvider<CardTransactionCubit>(
            create: (context) => CardTransactionCubit(
              repository: GetIt.I<CardTransactionRepository>(),
            ),
          ),
          BlocProvider<ViewAddOnCardDetailsCubit>(
            create: (context) => ViewAddOnCardDetailsCubit(
              repository: GetIt.I<ViewAddOnCardDetailsRepository>(),
            ),
          ),
          BlocProvider<LoadfundsoncardCubit>(
            create: (context) => LoadfundsoncardCubit(
              repository: GetIt.I<LoadFundsOnCardRepository>(),
            ),
          ),

          BlocProvider<DashboardCubit>(
            create: (context) => DashboardCubit(
              repository: GetIt.I<DashboardRepository>(),
            ),
          ),
          BlocProvider<UnblockcardCubit>(
            create: (context) => UnblockcardCubit(
              repository: GetIt.I<UnblockcardRepository>(),
            ),
          ),
        ],
        child: Consumer<ThemeNotifier>(
          builder: (context, theme, child) {
            return GetMaterialApp(
              translations: LocaleString(),
              locale: Locale('en','US'),
              localizationsDelegates: loc.AppLocalizations.localizationsDelegates,
              supportedLocales: loc.AppLocalizations.supportedLocales,
              theme: theme.getTheme(),
              onGenerateRoute: generate,
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          },
        ));
  }

}
