import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

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

      final personResponse =
          await ref.read(restClientPersonProvider).getPersons();

      final filteredList = filterPersonsAndTrainers(personResponse);
      state = PersonsAndTrainersState(
        persons: filteredList[0],
        trainers: filteredList[1],
        loading: false,
      );
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  List<List<Person>> filterPersonsAndTrainers(List<Person> personResponse) {
    var allPersons = <List<Person>>[];
    var normalPersons = <Person>[];
    var trainers = <Person>[];
    final currentPerson = ref.watch(currentPersonProvider);

    if (personResponse.isNotEmpty) {
      for (var person in personResponse) {
        if (person.roles!.contains("USER") && person.id != currentPerson!.id) {
          normalPersons.add(person);
        } else if (person.roles!.contains("TRAINER") &&
            person.id != currentPerson!.id) {
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
      Person person = document.data() as Person;
      state = state.copyWith(selectedPerson: person);
    } catch (e) {
      await _catchErrorOnFetch(e);
    }
  }

  Future<void> getCreatedWorkouts() async {
    final workoutResponse =
        await ref.read(restClientWorkoutProvider).getWorkouts();
    List<Workout> filterList = workoutResponse
        .where((workout) => workout.createdById == state.selectedPerson!.id!)
        .toList();
    state = state.copyWith(createdWorkouts: filterList);
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await InternetConnectionChecker().hasConnection;
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (!connectivityResult) {
      errorType = ErrorApiCall.noConnection;
    }
    state = PersonsAndTrainersState(
      persons: state.persons,
      trainers: state.trainers,
      selectedPerson: state.selectedPerson,
      errorApiCall: errorType,
    );
  }
}
