import 'package:riverpod/riverpod.dart';
import 'package:test/test.dart';

final fileLoggerProvider = Provider<FileLogger>((ref) {
  return FileLogger(Formatter());
});

// interface Logger
abstract interface class Logger {
  void log(String message);
}

class Formatter {

  // public method
  String format(String message) {
    return message;
  }
}

final class FileLogger implements Logger {
  // private variable
  final Formatter _formatter;
  // Injecting dependencies into constructor arguments
  FileLogger(this._formatter);

  // public method
  @override
  void log(String message) {
    print(_formatter.format(message));
  }
}

// Unit Test
void main() {
  test('FileFormatter Test', () {
    ProviderContainer container = ProviderContainer();
    final logger = container.read(fileLoggerProvider);
    logger.log('Input FileLogger log message.');

    // actualは、実際の値。matcherは、期待値
    // expect(actual, matcher)
    
    // isNotNullは、nullでないことを確認するmatcher
    expect(logger, 'hoge');
  });
}