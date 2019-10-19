/*
https://www.raywenderlich.com/4074597-getting-started-with-the-bloc-pattern#toc-anchor-005
class LocationQueryBloc implements Bloc {
  final _controller = StreamController<List<Location>>();
  final _client = ZomatoClient();
  Stream<List<Location>> get locationStream => _controller.stream;

  void submitQuery(String query) async {
    // 1
    final results = await _client.fetchLocations(query);
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}

*/

abstract class Service {
  void dispose();
}
