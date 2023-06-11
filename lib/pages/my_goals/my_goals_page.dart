import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/my_goals/my_goals_state.dart';
import 'package:active_you/pages/my_goals/my_goals_vm.dart';
import 'package:active_you/pages/my_goals/widgets/goal_list_item.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class MyGoalsPage extends ConsumerStatefulWidget {
  const MyGoalsPage({super.key});

  @override
  ConsumerState<MyGoalsPage> createState() => _MyGoalsPageState();
}

class _MyGoalsPageState extends ConsumerState<MyGoalsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeGoals = ref.watch(activeGoalsProvider);
    final completedGoals = ref.watch(completedGoalsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Goals",
          style: TextStyle(
            fontFamily: "Poppins-Bold",
            fontSize: 16,
            color: ActiveYouTheme.blackColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/interface/plus.svg",
                width: 32,
                color: ActiveYouTheme.brandDarkColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, EndPoint.createGoal);
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MySwitch(
              firstOption: "Active",
              secondOption: "Past",
              onSwitch: (index) => setState(() {
                _tabIndex = index;
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: _tabIndex == 0
                    ? activeGoals!.length
                    : completedGoals!.length,
                itemBuilder: (BuildContext context, int index) {
                  final list = _tabIndex == 0 ? activeGoals : completedGoals;
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        EndPoint.goalDetail,
                        arguments: list[index],
                      );
                    },
                    child: GoalListItem(goal: list![index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

final myGoalsPageProvider =
    StateNotifierProvider.autoDispose<MyGoalsVM, MyGoalsState>(
        (ref) => MyGoalsVM(ref));

final activeGoalsProvider = Provider.autoDispose<List<Goal>?>(
    (ref) => ref.watch(myGoalsPageProvider).activeGoals);

final completedGoalsProvider = Provider.autoDispose<List<Goal>?>(
    (ref) => ref.watch(myGoalsPageProvider).completedGoals);
