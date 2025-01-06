class ExerciseDefinition {
  final String id;
  final String name;
  Uri? shortVideoUrl;
  Uri? longVideoUrl;
  final String difficulty;
  final String targetMuscleGroup;
  final String primeMoverMuscle;
  String? secondaryMuscle;
  String? tertiaryMuscle;
  final String primaryEquipment;
  int? primaryEquipmentCount;
  final String secondaryEquipment;
  int? secondaryEquipmentCount;
  final String posture;
  final String singleOrDoubleArm;
  final String continuousOrAlternatingArms;
  final String grip;
  final String loadEndPosition;
  final String continuousOrAlternatingLegs;
  final String footElevation;
  String? movementPattern1;
  String? movementPattern2;
  String? movementPattern3;
  String? motionPlane1;
  String? motionPlane2;
  String? motionPlane3;
  final String bodyRegion;
  final String forceType;
  String? mechanics;
  final String laterality;
  final String primaryExerciseClassification;

  ExerciseDefinition({
    required this.id,
    required this.name,
    required this.difficulty,
    required this.targetMuscleGroup,
    required this.primeMoverMuscle,
    required this.primaryEquipment,
    required this.secondaryEquipment,
    required this.posture,
    required this.singleOrDoubleArm,
    required this.continuousOrAlternatingArms,
    required this.grip,
    required this.loadEndPosition,
    required this.continuousOrAlternatingLegs,
    required this.footElevation,
    required this.bodyRegion,
    required this.forceType,
    required this.laterality,
    required this.primaryExerciseClassification,
  });
}

class ExerciseInstance {
  final ExerciseDefinition exercise;
  int setCount;
  int repRange;
  List<int> repCount;
  List<String>? notes;

  ExerciseInstance(
      {required this.exercise,
      required this.repRange,
      required this.setCount,
      required this.repCount});
}
