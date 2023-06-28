import 'dart:async';

void main(List<String> args) {
  number();
  final obj1 = Counter();
  obj1.startTimer();

  Stream counterSteam = obj1.getStreamNamee().asBroadcastStream();
  StreamSubscription s1 = counterSteam.listen(
    (event) {
      print(event);
    },
    onDone: () {
      //error logic
    },
    cancelOnError: true,
  );
}

int number() {
  return 10;
}

//syntax
// StreamController streamController = StreamController();
// Stream streamName = streamController.stream;

class Counter {
  int _counter = 0;
  StreamController _controller = StreamController();

  Stream get getStreamName => _controller.stream;

  Stream getStreamNamee(){
    return _controller.stream;
  }

  void startTimer() {
    final _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        _controller.sink.add(_counter); //filling the pipe
        _counter++;
      },
    );

    Future.delayed(Duration(seconds: 10), () => _timer.cancel());
  }
}
