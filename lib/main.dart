import 'package:flutter/material.dart';
import 'package:zego_zimkit/services/services.dart';

import 'config.dart';
import 'main_screen.dart';

void main() async{
  await DataManagement.loadEnvFile;
  final _appId = await DataManagement.getSecretData(StoredString.appId);
  final _appSignKey = await DataManagement.getSecretData(StoredString.appSignKey);

  await ZIMKit().init(appID: 566626575, appSign: '0f7078547e81eaac296880799d07e2ae95dfdb02eb689ea78657c3ea51775294');

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const EntryRoot());
}

class EntryRoot extends StatelessWidget {
  const EntryRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZegoCloud InApp Chat',
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
      home: const MainScreen(),
    );
  }
}



















