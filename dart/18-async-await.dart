void main(List<String> args) async {
  print('start');

  Chat chat = Chat();
  var chatHistory = await chat.getChatHistory();

  print(chatHistory);

  // String greeting = ', XYZ';

  // await Future.delayed(
  //   Duration(seconds: 5),
  //   () {
  //     greeting = 'Good Eve$greeting';
  //   },
  // );

  // print(greeting);

  print('finish');
}

class Chat {
  final List chatHistory = ['xyz'];

  //network call function
  Future<List> getChatHistory() async{
    await Future.delayed(
      Duration(seconds: 5),
      () {
        chatHistory.add('chat-history1');
      },
    );
    print('getChatHistory: $chatHistory');
    return chatHistory;
  }
  
}
