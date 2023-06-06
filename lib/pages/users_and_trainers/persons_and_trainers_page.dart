import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_state.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_vm.dart';
import 'package:active_you/widgets/item_lists/user_list_item.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonsAndTrainersPage extends ConsumerStatefulWidget {
  const PersonsAndTrainersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PersonsAndTrainersPage> createState() =>
      _PersonsAndTrainersState();
}

class _PersonsAndTrainersState extends ConsumerState<PersonsAndTrainersPage>
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
    final persons = ref.watch(_personsProvider);
    final trainers = ref.watch(_trainersProvider);

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
                ref
                    .read(personsAndTrainersPageProvider.notifier)
                    .fetchPersons();
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: _tabIndex == 0 ? persons.length : trainers.length,
                itemBuilder: (BuildContext context, int index) {
                  var listToDisplay = _tabIndex == 0 ? persons : trainers;
                  return GestureDetector(
                    child: UserListItem(person: listToDisplay[index]),
                    onTap: () async {
                      ref
                          .read(personsAndTrainersPageProvider.notifier)
                          .getPersonById(listToDisplay[index].id!)
                          .whenComplete(() {
                        final selectedPerson =
                            ref.watch(_selectedPersonProvider);
                        Navigator.pushNamed(context, EndPoint.personDetail,
                            arguments: selectedPerson);
                      });
                    },
                  );
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

final personsAndTrainersPageProvider =
    StateNotifierProvider<PersonsAndTrainersVM, PersonsAndTrainersState>(
        (ref) => PersonsAndTrainersVM(ref));

final _personsProvider = Provider.autoDispose<List<Person>>((ref) {
  return ref.watch(personsAndTrainersPageProvider).persons;
});

final _trainersProvider = Provider.autoDispose<List<Person>>((ref) {
  return ref.watch(personsAndTrainersPageProvider).trainers;
});

final _selectedPersonProvider = Provider.autoDispose<Person?>((ref) {
  return ref.watch(personsAndTrainersPageProvider).selectedPerson;
});

final _loadingProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(personsAndTrainersPageProvider).loading;
});
