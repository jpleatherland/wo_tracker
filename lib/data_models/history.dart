import 'package:wo_tracker/data_models/workout.dart';

class History {
  String id;
  String workoutName;
  DateTime workoutDate;
  WorkoutInstance workout;

  History({
    required this.id,
    required this.workoutName,
    required this.workoutDate,
    required this.workout,
  });
}
