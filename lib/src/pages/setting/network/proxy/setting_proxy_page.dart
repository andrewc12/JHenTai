import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhentai/src/extension/widget_extension.dart';
import 'package:jhentai/src/utils/toast_util.dart';

import '../../../../setting/network_setting.dart';

class SettingProxyPage extends StatefulWidget {
  const SettingProxyPage({Key? key}) : super(key: key);

  @override
  State<SettingProxyPage> createState() => _SettingProxyPageState();
}

class _SettingProxyPageState extends State<SettingProxyPage> {
  JProxyType proxyType = NetworkSetting.proxyType.value;
  String proxyAddress = NetworkSetting.proxyAddress.value;
  String? proxyUsername = NetworkSetting.proxyUsername.value;
  String? proxyPassword = NetworkSetting.proxyPassword.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('proxySetting'.tr),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              NetworkSetting.saveProxy(proxyType, proxyAddress, proxyUsername, proxyPassword);
              toast('success'.tr);
            },
          ),
        ],
      ),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.only(top: 16),
          children: [
            _buildProxyType(),
            _buildProxyAddress(),
            _buildProxyUsername(),
            _buildProxyPassword(),
          ],
        ),
      ).withListTileTheme(context),
    );
  }

  Widget _buildProxyType() {
    return ListTile(
      title: Text('proxyType'.tr),
      trailing: Obx(
        () => DropdownButton<JProxyType>(
          value: NetworkSetting.proxyType.value,
          alignment: Alignment.center,
          items: [
            DropdownMenuItem(child: Text('systemProxy'.tr), value: JProxyType.system),
            DropdownMenuItem(child: Text('httpProxy'.tr), value: JProxyType.http),
            DropdownMenuItem(child: Text('socks5Proxy'.tr), value: JProxyType.socks5),
            DropdownMenuItem(child: Text('socks4Proxy'.tr), value: JProxyType.socks4),
            DropdownMenuItem(child: Text('directProxy'.tr), value: JProxyType.direct),
          ],
          onChanged: (JProxyType? value) {
            proxyType = value!;
            NetworkSetting.saveProxy(proxyType, proxyAddress, proxyUsername, proxyPassword);
          },
        ),
      ),
    );
  }

  Widget _buildProxyAddress() {
    return ListTile(
      title: Text('address'.tr),
      trailing: SizedBox(
        width: 150,
        child: TextField(
          controller: TextEditingController(text: NetworkSetting.proxyAddress.value),
          decoration: const InputDecoration(isDense: true, labelStyle: TextStyle(fontSize: 12)),
          textAlign: TextAlign.center,
          onChanged: (String value) => proxyAddress = value,
          enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
        ),
      ),
      enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
    );
  }

  Widget _buildProxyUsername() {
    return ListTile(
      title: Text('userName'.tr),
      trailing: SizedBox(
        width: 150,
        child: TextField(
          controller: TextEditingController(text: NetworkSetting.proxyUsername.value),
          decoration: const InputDecoration(isDense: true, labelStyle: TextStyle(fontSize: 12)),
          textAlign: TextAlign.center,
          onChanged: (String value) => proxyUsername = value,
          enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
        ),
      ),
      enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
    );
  }

  Widget _buildProxyPassword() {
    return ListTile(
      title: Text('password'.tr),
      trailing: SizedBox(
        width: 150,
        child: TextField(
          controller: TextEditingController(text: NetworkSetting.proxyPassword.value),
          decoration: const InputDecoration(isDense: true, labelStyle: TextStyle(fontSize: 12)),
          textAlign: TextAlign.center,
          onChanged: (String value) => proxyPassword = value,
          obscureText: true,
          enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
        ),
      ),
      enabled: NetworkSetting.proxyType.value != JProxyType.system && NetworkSetting.proxyType.value != JProxyType.direct,
    );
  }
}
