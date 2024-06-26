import 'package:riverpod/riverpod.dart';

// interface
abstract interface class Logger {
  void log(String message);
}

final loggerProvider = Provider<LoggerImpl>((ref) => LoggerImpl());

// interfaceを実装する
class LoggerImpl implements Logger {
  @override
  void log(String message) {
    print(message);
  }
}

final salutationProvider = Provider<Salutation>((ref) => Salutation(ref));

// 依存性注入を行うクラスを定義する
class Salutation {
  Salutation(this.ref);
  Ref ref;

  void greet(String name) {
    ref.read(loggerProvider).log('Hello, $name');
  }
}

void main() {
  // 依存性注入を行うクラスをインスタンス化します。
  final container = ProviderContainer();
  final salutation = container.read(salutationProvider);
  salutation.greet('Hello Riverpod!');
}