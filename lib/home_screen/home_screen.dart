import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_help/home_screen/bottom_bar.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:self_help/data/categories.dart';
import 'package:self_help/new_item_screen/new_task_screen.dart';

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
        children: categories
            .map(
              (category) => FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (ctx) {
                      return const NewItemScreen();
                    },
                  );
                },
                child: category.icon,
              ),
            )
            .toList(),
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
