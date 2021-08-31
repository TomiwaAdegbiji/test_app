library flutter_cupertino_settings;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Settings",
          style: TextStyle(color: Colors.white),),
      ),
      body:    SettingsList(
        sections: [
          SettingsSection(
            title: 'General',
            tiles: [
              SettingsTile(
                title: 'Profile',
                subtitle: 'English',
                leading: Icon(CupertinoIcons.person),
                onPressed: (BuildContext context){

                },),
              SettingsTile(
                title: 'Subscription',
                subtitle: 'Premium',
                leading: Icon(Icons.account_balance_wallet_rounded),
                onPressed: (BuildContext context) {

                },
              ),
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language_sharp),
                onPressed: (BuildContext context){

                },),
              SettingsTile(
                title: "Theme",
                subtitle: 'Dark Theme',
              )],
          ),
          SettingsSection(
            title: 'Personalisation',
            tiles: [
              SettingsTile(
                title: 'Theme Color',
                subtitle: 'Black',
                leading: Icon(CupertinoIcons.color_filter),
                onPressed: (BuildContext context){

                },),
              SettingsTile(
                title: 'Text Size',
                subtitle: 'Normal',
                leading: Icon(CupertinoIcons.textformat_size),
                onPressed: (BuildContext context) {

                },
              ),
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language_sharp),
                onPressed: (BuildContext context){

                },),
              SettingsTile(
                title: "About",
                subtitle: 'View Details',
                leading: Icon(CupertinoIcons.exclamationmark_circle),
              )],
          ),
        ],
      )
      ,
    );
  }
}




