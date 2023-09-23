import 'package:flutter/material.dart';
import 'package:practice/Fragment/AlarmFragment.dart';
import 'package:practice/Fragment/BalanceFragment.dart';
import 'package:practice/Fragment/ContactFragment.dart';
import 'package:practice/Fragment/EmailFragment.dart';
import 'package:practice/Fragment/HomeFragment.dart';
import 'package:practice/Fragment/PersonFragment.dart';
import 'package:practice/Fragment/SearchFragment.dart';
import 'package:practice/Fragment/SettingsFragment.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Practice'),
      color: Colors.blueAccent,
      debugShowCheckedModeBanner: true,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          title: Center(child: Text('Loki')),
          bottom: const TabBar(
            labelColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.email), text: 'Email'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
              Tab(icon: Icon(Icons.person), text: 'Person'),
              Tab(icon: Icon(Icons.access_alarm), text: 'Alarm'),
              Tab(icon: Icon(Icons.account_balance), text: 'Balance'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeFragment(),
            SearchFragment(),
            SettingsFragment(),
            EmailFragment(),
            ContactFragment(),
            PersonFragment(),
            AlarmFragment(),
            BalanceFragment(),
          ],
        ),
      ),
    );
  }
}
