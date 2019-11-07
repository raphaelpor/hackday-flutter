class BodyData {
  final String title;
  final List<Map<String, dynamic>> stories;

  BodyData({this.title, this.stories});

  factory BodyData.fromJson(Map<String, dynamic> json) {
    final items = new List<Map<String, dynamic>>.from(
      json['feed']['falkor']['items']
    );

    var data;

    items.forEach((item) {
      if (item['type'] == 'post-stories') {
        data = item['externalData']['stories'];
      }
    });

    final storiesList = new List<Map<String, dynamic>>.from(data);

    return BodyData(
      title: 'teste',
      stories: storiesList,
    );
  }
}