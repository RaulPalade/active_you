import 'package:active_you/widgets/item_lists/user_list_item.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonsAndTrainersPage extends ConsumerStatefulWidget {
  const PersonsAndTrainersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PersonsAndTrainersPage> createState() => _PersonsAndTrainersState();
}

class _PersonsAndTrainersState extends ConsumerState<PersonsAndTrainersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;
  final fakeUserList = [
    FakePerson("Michelle Rodgriguez", "Female"),
    FakePerson("Michael Johnson", "Male"),
    FakePerson("Jack Hogan", "Male"),
    FakePerson("Mario Wallace ", "Male"),
    FakePerson("Anna Dunlap", "Female"),
    FakePerson("Tiffany Smith", "Female"),
    FakePerson("Anna Dunlap", "Female"),
    FakePerson("Deborah Cohen", "Female"),
  ];

  final fakeTrainerList = [
    FakePerson("Jessica Hunt", "Female"),
    FakePerson("John Carr", "Male"),
    FakePerson("Michael Pollard", "Male"),
    FakePerson("Mark Brost ", "Male"),
    FakePerson("Natalie Bell", "Female"),
    FakePerson("Sandra Contreras", "Female"),
    FakePerson("Joanne White", "Female"),
    FakePerson("Larry Barrett", "Male"),
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

class FakePerson {
  late final String fullName;
  late final String sex;

  FakePerson(this.fullName, this.sex);
}
