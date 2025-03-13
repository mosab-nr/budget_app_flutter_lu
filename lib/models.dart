class Models {
  Models({required this.name, required this.amount});

  final String name;
  final String amount;

  factory Models.fromJsom(Map<String, dynamic> json) =>
      Models(name: json['name'], amount: json['amount']);
}
