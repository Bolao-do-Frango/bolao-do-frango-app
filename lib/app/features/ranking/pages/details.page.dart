import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/design/widgets/scaffold.dart';
import '../controllers/ranking.controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
    required this.username,
  });

  final String username;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late RankingController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<RankingController>();
    controller.getDetails(widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
