import 'package:assets/assets.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:kapira_admin/presentation/leagues/widgets/league_list.dart';

import 'widgets/add_league.dart';

class LeaguesPage extends StatelessWidget {
  const LeaguesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Leagues',
              style: context.headlineMedium,
            ),
            const SizedBox(height: 15),
            Text(
              'Select a league to view the clubs',
              style: context.labelLarge?.copyWith(
                color: context.kTheme.secondary1,
              ),
            )
          ],
        ),
        toolbarHeight: 80,
      ),
      body: const LeagueList(),
      floatingActionButton: ElevatedButton.icon(
        label: const Text('Add League'),
        icon: const Icon(KapiraIcon.trophy),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddLeague();
              });
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: context.kTheme.primary3,
            foregroundColor: context.kTheme.secondary0),
      ),
    );
  }
}
