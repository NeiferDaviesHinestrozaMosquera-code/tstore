import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_appbar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header
          TPrimaryHeaderContainer(
              child: Column(
            children: [

              //AppBar
              THomeAppBar(),

              //Searchbar

              
              //Categories
            ],
          ))
        ],
      ),
    ));
  }
}

