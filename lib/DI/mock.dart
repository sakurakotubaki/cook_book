// interfaceを定義する。
abstract interface class MessageService {
  void sendMessage(String message);
}
// interfaceを実装する。
class ConsoleMessageService implements MessageService {
  @override
  void sendMessage(String message) {
    print(message);
  }
}
// モックを注入するためのクラスを定義する。
class MockMessageService implements MessageService {
  String? lastMessage;

  @override
  void sendMessage(String message) {
    lastMessage = message;
  }
}
// 依存性注入を行うクラスを定義する。
class Salutation {
  final MessageService _messageService;

  Salutation(this._messageService);

  void greet(String name) {
    _messageService.sendMessage('Hello, $name');
  }
}

// main関数は、SalutationクラスとMockMessageServiceの
// 両方のオブジェクトを生成する責務を担ってている。　
void main() {
  // テスト時にはMockMessageServiceを注入します。
  final messageService = MockMessageService();
  final salutation = Salutation(messageService);
  salutation.greet('DI with Mock');
  print('Last message sent: ${messageService.lastMessage}');

  // 実際の実行時にはConsoleMessageServiceを注入します。
  final realMessageService = ConsoleMessageService();
  final realSalutation = Salutation(realMessageService);
  realSalutation.greet('DI with Real Service');
}