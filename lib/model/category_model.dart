class Category {
  final String displayName;
  final String level;
  final String nodeStr;
  final String recordCount;

  Category({
    required this.displayName,
    required this.level,
    required this.nodeStr,
    required this.recordCount,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      displayName: json['displayName'] ?? '',
      level: json['level'] ?? '',
      nodeStr: json['nodeStr'] ?? '',
      recordCount: json['recordCount'] ?? '',
    );
  }
}
