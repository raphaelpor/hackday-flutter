class BodyData {
  final List<Map<String, dynamic>> slides;
  final int amount;

  BodyData({this.slides, this.amount});

  factory BodyData.fromJson(Map<String, dynamic> json) {
    final items = new List<Map<String, dynamic>>.from(
      json['feed']['falkor']['items']
    );

    var data;

    items.forEach((item) {
      if (item['type'] == 'post-stories') {
        data = item['externalData']['stories'][0]['slides'];
      }
    });

    final slidesList = new List<Map<String, dynamic>>.from(data);

    return BodyData(
      slides: slidesList,
      amount: slidesList.length,
    );
  }
}