import 'package:flutter/material.dart';
import 'package:jaxon/features/home_screen/wdigets/inactive_users.dart';
import 'package:jaxon/features/home_screen/wdigets/main_chart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.white,
          title: Text(
            'Umumiy',
            style: TextStyle(color: Colors.white),
          ),
          floating: true,
          backgroundColor: Colors.deepPurple,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                const OverviewRow(),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: const Center(
                    child: Text(
                      "Ойлик Тўловлар Ҳисоботи",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const YillikChart(),
                const SizedBox(height: 10),
                const InactiveUsersList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OverviewRow extends StatelessWidget {
  const OverviewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Card(
            color: Colors.white,
            elevation: 10,
            child: ListTile(
              title: Text(
                "Умумий дўконлар",
                style: TextStyle(fontSize: 10),
              ),
              subtitle: Text(
                "123123",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Card(
            color: Colors.white,
            elevation: 10,
            child: ListTile(
              title: Text(
                "Умумий қарздорлар",
                style: TextStyle(fontSize: 10),
              ),
              subtitle: Text(
                "132",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
