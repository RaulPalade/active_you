import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons_and_trainers_state.freezed.dart';

@freezed
class PersonsAndTrainersState with _$PersonsAndTrainersState {
  const factory PersonsAndTrainersState({
    @Default([]) List<Person> persons,
    @Default([]) List<Person> trainers,
    @Default([]) List<Workout> createdWorkouts,
    Person? selectedPerson,
    @Default(false) loading,
  }) = _PersonsAndTrainersStateData;
}
