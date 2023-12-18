import 'dart:developer';

import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_state.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonsAndTrainersVM extends StateNotifier<PersonsAndTrainersState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  PersonsAndTrainersVM(this.ref) : super(const PersonsAndTrainersState()) {
    fetchPersons();
  }

  Future<void> fetchPersons() async {
    try {
      state = const PersonsAndTrainersState(
          persons: [], trainers: [], loading: false);

      final allDocuments = await firebase.getAllDocuments("users");

      final personResponse = allDocuments
          .map((p) {
            final data = p.data();
            return data != null && data is Map<String, dynamic>
                ? Person.fromJson(data)
                : null;
          })
          .where((person) => person != null)
          .toList();

      final filteredList =
          filterPersonsAndTrainers(personResponse.cast<Person>());
      state = PersonsAndTrainersState(
        persons: filteredList[0],
        trainers: filteredList[1],
        loading: false,
      );
    } catch (e) {
      log(e.toString());
    }
  }

  List<List<Person>> filterPersonsAndTrainers(List<Person> personResponse) {
    var allPersons = <List<Person>>[];
    var normalPersons = <Person>[];
    var trainers = <Person>[];
    final currentPerson = ref.watch(currentPersonProvider);

    if (personResponse.isNotEmpty) {
      for (var person in personResponse) {
        if (person.role == "USER" && person.email != currentPerson!.email) {
          normalPersons.add(person);
        } else if (person.role == "TRAINER" &&
            person.email != currentPerson!.email) {
          trainers.add(person);
        }
      }
    }

    allPersons.add(normalPersons);
    allPersons.add(trainers);

    return allPersons;
  }

  Future<void> getPersonById(String id) async {
    try {
      final document = await firebase.getDocumentById("users", id);
      log("Logged person: ${document.data().toString()}");

      final data = document.data();
      if (data != null && data is Map<String, dynamic>) {
        final person = Person.fromJson(data);
        state = state.copyWith(selectedPerson: person);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getCreatedWorkouts() async {
    final allDocuments = await firebase.getAllDocuments("workouts");
    List<Workout> allWorkouts =
        allDocuments.map((w) => w.data() as Workout).toList();

    List<Workout> filterList = allWorkouts
        .where((workout) => workout.createdById == state.selectedPerson!.email!)
        .toList();
    state = state.copyWith(createdWorkouts: filterList);
  }
}
