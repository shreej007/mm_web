class Membership {
  final int id;
  final String planName;
  final DateTime startDate;
  final DateTime endDate;

  Membership({
    required this.id,
    required this.planName,
    required this.startDate,
    required this.endDate,
  });

  factory Membership.fromJson(Map<String, dynamic> json) {
    return Membership(
      id: json['id'],
      planName: json['plan_name'],
      startDate: DateTime.parse(json['start_date']),
      endDate: DateTime.parse(json['end_date']),
    );
  }
}
