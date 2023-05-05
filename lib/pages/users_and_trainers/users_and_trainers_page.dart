import 'package:active_you/widgets/item_lists/user_item_list.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersAndTrainersPage extends ConsumerStatefulWidget {
  const UsersAndTrainersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UsersAndTrainersPage> createState() => _UsersAndTrainersState();
}

class _UsersAndTrainersState extends ConsumerState<UsersAndTrainersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;
  final fakeUserList = [
    FakeUser("Michelle Rodgriguez", "Female"),
    FakeUser("Michael Johnson", "Male"),
    FakeUser("Jack Hogan", "Male"),
    FakeUser("Mario Wallace ", "Male"),
    FakeUser("Anna Dunlap", "Female"),
    FakeUser("Tiffany Smith", "Female"),
    FakeUser("Anna Dunlap", "Female"),
    FakeUser("Deborah Cohen", "Female"),
  ];

  final fakeTrainerList = [
    FakeUser("Jessica Hunt", "Female"),
    FakeUser("John Carr", "Male"),
    FakeUser("Michael Pollard", "Male"),
    FakeUser("Mark Brost ", "Male"),
    FakeUser("Natalie Bell", "Female"),
    FakeUser("Sandra Contreras", "Female"),
    FakeUser("Joanne White", "Female"),
    FakeUser("Larry Barrett", "Male"),
  ];

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
    return Scaffold(
      appBar: const MyAppBar(title: "Users and Trainers"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MySwitch(
              firstOption: "Users",
              secondOption: "Trainers",
              onSwitch: (index) => setState(() {
                _tabIndex = index;
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: fakeUserList.length,
                itemBuilder: (BuildContext context, int index) {
                  var listToDisplay = _tabIndex == 0 ? fakeUserList : fakeTrainerList;
                  return UserListItem(
                      fullName: listToDisplay[index].fullName,
                      sex: listToDisplay[index].sex,
                      onClick: () {});
                }),
          ),
        ],
      ),
    );
  }
}

class FakeUser {
  late final String fullName;
  late final String sex;

  FakeUser(this.fullName, this.sex);
}
