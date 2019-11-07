class BodyData {
  final String title;

  BodyData({this.title});

  factory BodyData.fromJson(Map<String, dynamic> json) {
    return BodyData(
      title: 'Test',
    );
  }
}