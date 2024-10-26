class LeaveModel {
  String name;
  DateTime appliedDate;
  DateTime leaveDate;
  int duration;
  int leaveBalance;
  String reason;

  LeaveModel(
      {required this.name,
      required this.appliedDate,
      required this.leaveDate,
      required this.duration,
      required this.leaveBalance,
      required this.reason});
}
