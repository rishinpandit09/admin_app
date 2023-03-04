class Gate {
  final int gateId;
  final String gateName;

  Gate({required this.gateId, required this.gateName});
  factory Gate.fromJson(Map<String, dynamic> json) {
    return Gate(gateId: json['id'], gateName: 'gate_name');
  }
}
