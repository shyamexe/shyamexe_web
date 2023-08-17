import 'package:flutter/material.dart';

import '../../utils/custom_scroll_behavior.dart';
import 'widgets/header_widget.dart';
import 'widgets/name_banner.dart';
import 'widgets/works_widgets.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            // parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: const [
              HeaderWidet(),
              SizedBox(
                height: 30,
              ),
              NameBanner(),
              SizedBox(
                height: 30,
              ),
              WorksWidgets()
            ],
          ),
        ),
      ),
    );
  }
}
