
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_app/bottom_navigation/cards/cards_details/cubit/card_details_cubit.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_screen.dart';
import 'package:flutter_app/bottom_navigation/wallets/subscription/plan_screen.dart';
import 'package:flutter_app/bottom_navigation/wallets/wallet_screen.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/core/utils/commen_extensions.dart';
import 'package:flutter_app/core/utils/shared_preferences.dart';
import 'package:flutter_app/custom_app_bar.dart';
import 'package:flutter_app/src/constant/constant_colors.dart';
import 'package:flutter_app/src/constant/constant_data.dart';
import 'package:flutter_app/src/home/home_screen.dart';
import 'package:flutter_app/user/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_app/user/login/ui/cubit/login_cubit.dart';
import 'package:flutter_app/user/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_app/bottom_navigation/cards/cards_details/repository/card_details_repository.dart';
import '../src/constant/constant.dart';


class BottomNavigationHome extends StatefulWidget {
  final int currentIndex;
  const BottomNavigationHome({Key? key, this.currentIndex = 0})
      : super(key: key);

  @override
  State<BottomNavigationHome> createState() => _BottomNavigationHomeState();
}

class _BottomNavigationHomeState extends State<BottomNavigationHome> {
  late int _selectedIndex;
  ScanResult? scanResult;

  final _flashOnController = TextEditingController(text: 'Flash on');
  final _flashOffController = TextEditingController(text: 'Flash off');
  final _cancelController = TextEditingController(text: 'Cancel');

  var _aspectTolerance = 0.00;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;
  String image ='';
  String name ='';
  String lastname = '';
  String phoneNumber = '';

  static final _possibleFormats = BarcodeFormat.values.toList()
    ..removeWhere((e) => e == BarcodeFormat.unknown);

  List<BarcodeFormat> selectedFormats = [..._possibleFormats];
  Future<void> _share() async {
    await FlutterShare.share(
      title: ConstanceData.appName,
      text: ConstanceData.aboutUs,
      linkUrl: ConstanceData.appShareLink,
    );
  }
  void getProfileUrl() async{
    image = await MySharedPreferences().getStringValue(Constant.profileImage);
    name = await MySharedPreferences().getStringValue(Constant.name);
    phoneNumber = await MySharedPreferences().getStringValue(Constant.phone);
  }
  @override
  void initState() {
    super.initState();

    getProfileUrl();
    _selectedIndex = widget.currentIndex;

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      _onItemTapped(_selectedIndex);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      // if (index == 2) {
      //   _scan();
      // } else {
        _selectedIndex = index;
      // }
    });
  }





  final List<Widget> _screen = <Widget>[
    const HomeScreen(),
    BlocProvider<CarddetailsCubit>(
      create: (context) => CarddetailsCubit(
        repository: GetIt.I<CardDetailsRepository>(),
      ),
      child: const CardsScreen(),
    ),
     //Container(),
    // const HomeScreen(),
    // const WalletScreen(),

  ];

  late List<BottomNavigationBarItem> bottomNavList;
  Future<void> _scan() async {
    try {
      final result = await BarcodeScanner.scan(
        options: ScanOptions(
          strings: {
            'cancel': _cancelController.text,
            'flash_on': _flashOnController.text,
            'flash_off': _flashOffController.text,
          },
          restrictFormat: selectedFormats,
          useCamera: _selectedCamera,
          autoEnableFlash: _autoEnableFlash,
          android: AndroidOptions(
            aspectTolerance: _aspectTolerance,
            useAutoFocus: _useAutoFocus,
          ),
        ),
      );
      setState(() {
        scanResult = result;
        if (result.rawContent != "") {
          Navigator.of(context)
              .pushNamed(ScreenNames.webViewWidgetBuilder, arguments: {
            'initialUrl': result.rawContent,
            'appbarTitle': "Processing",
          });
        }
      });
    } on PlatformException catch (e) {
      setState(() {
        scanResult = ScanResult(
          type: ResultType.Error,
          format: BarcodeFormat.unknown,
          rawContent: e.code == BarcodeScanner.cameraAccessDenied
              ? 'The user did not grant the camera permission!'
              : 'Unknown error: $e',
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    bottomNavList = getBottomNavigationList();
    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: false,
        title: (context.watch<DashboardCubit>().name == null)
            ? ConstanceData.appName
            : "Hi ${context.watch<DashboardCubit>().name}",
        hideBackButton: true,
        leading: GestureDetector(
          onTap: () {

            print(name);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(image: image,name: name,phoneNumber: phoneNumber,),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(image
              ),
            ),
          ),
        ),
        actions: [

          IconButton(
            onPressed: _share,
            icon: const Icon(
              Icons.share,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screen,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
          child: BottomNavigationBar(
            items: bottomNavList,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ConstantColors.appBar,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.white38,
            selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> getBottomNavigationList() {
    return [
      getNavigatoinBarItem(
        iconName: ConstanceData.dashboard,
        iconLabel: ConstanceData.dashboardTitle,
        isSelected: _selectedIndex == 0,
      ),
      getNavigatoinBarItem(
        iconName: ConstanceData.card,
        iconLabel: ConstanceData.cardTitle,
        isSelected: _selectedIndex == 1,
      ),
      // getNavigatoinBarItem(
      //   iconName: ConstanceData.scanner,
      //   iconLabel: ConstanceData.scannerTitle,
      //   isSelected: _selectedIndex == 1,
      //   isScanner: true,
      // ),
      // getNavigatoinBarItem(
      //   iconName: ConstanceData.bank,
      //   iconLabel: ConstanceData.bankTitle,
      //   isSelected: _selectedIndex == 3,
      // ),
      // getNavigatoinBarItem(
      //   iconName: ConstanceData.crypto,
      //   iconLabel: ConstanceData.cryptoTitle,
      //   isSelected: _selectedIndex == 4,
      // ),
    ];
  }

  BottomNavigationBarItem getNavigatoinBarItem({
    required String iconName,
    required isSelected,
    String? iconLabel,
    bool isScanner = false,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: isSelected
            ? const BoxDecoration(
                color: Colors.white12,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 12,
                    color: Colors.white12,
                  ),
                ],
              )
            : const BoxDecoration(
                color: ConstantColors.appBar,
              ),
        padding:
            isSelected ? const EdgeInsets.all(12) : const EdgeInsets.all(10),
        child: iconName.getImageByName(
          imageHeight: isScanner
              ? 30
              : isSelected
                  ? 25
                  : 20,
          color: isSelected ? Colors.white : Colors.white54,
        ),
      ),
      label: iconLabel,
    );
  }
}
