import 'package:cook_book/DI/main.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

// ConsoleMessageWriterクラスのモッククラスを作成します。
class MockConsoleMessageWriter extends Mock implements ConsoleMessageWriter {}

void main() {
  test('Hello DI! Test Code', () {
    // モックオブジェクトを作成します。
    final writer = MockConsoleMessageWriter();
    final salutation = Salutation(writer);

    // greetメソッドを呼び出します。
    salutation.greet('Hello DI!');
    // 期待する値と実際の値が一致するか確認します。

    // ConsoleMessageWriterのwriteメソッドが期待通りに呼び出されたことを確認します。
    // calledメソッドは、Mockitoライブラリが提供するメソッドで、
    // そのメソッドが呼び出された回数を確認します。
    verify(writer.write('Hello, Hello DI!')).called(1);
  });
}