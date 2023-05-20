import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class PersonsAndTrainersVM extends StateNotifier<PersonsAndTrainersState> {
  final Ref ref;
  CancelToken? tokenLastRequest;

  PersonsAndTrainersVM(this.ref) : super(const PersonsAndTrainersState()) {
    fetchPersons();
  }

  Future<void> fetchPersons() async {
    try {
      state = const PersonsAndTrainersState(
          persons: [], trainers: [], loading: false);

      final personResponse = await ref
          .read(restClientPersonProvider)
          .getPersons(tokenLastRequest!);

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

    if (personResponse.isNotEmpty) {
      for (var person in personResponse) {
        if (person.role == "Person") {
          normalPersons.add(person);
        } else if (person.role == "Trainer") {
          trainers.add(person);
        }
      }
    }

    allPersons.add(normalPersons);
    allPersons.add(trainers);

    return allPersons;
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
      errorApiCall: errorType,
    );
  }
}
