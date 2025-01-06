import 'package:wo_tracker/data_models/exercise.dart';

class WorkoutDefinition {
  final String id;
  final String name;
  List<ExerciseDefinition>? exercises;

  WorkoutDefinition({
    required this.id,
    required this.name,
  });
}

class WorkoutInstance {
  List<ExerciseInstance> exercises;

  WorkoutInstance({
    required this.exercises,
  });
}
