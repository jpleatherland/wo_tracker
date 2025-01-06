import 'package:wo_tracker/data_models/workout.dart';

class Program {
  final String id;
  String name;
  int totalDaysToProgram;
  String programStartDay;
  Map<String, WorkoutDefinition?> workoutOrder;

  Program({
    required this.id,
    required this.name,
    required this.totalDaysToProgram,
    required this.programStartDay,
    required this.workoutOrder,
  });
}
