import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_help/home_screen/bottom_bar.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        expandedFabSize: ExpandableFabSize.regular,
        distance: 70,
        child: const Icon(
          Icons.add,
        ),
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Routinely",
          style: GoogleFonts.exo2(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
