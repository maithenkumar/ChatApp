import 'package:flutter/material.dart';

import '../Widgets/specalApp.dart';

class MeassageScreen extends StatefulWidget {
  const MeassageScreen({super.key});

  @override
  State<MeassageScreen> createState() => _MeassageScreenState();
}

class _MeassageScreenState extends State<MeassageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpacelAppBar(),

    );
  }
}