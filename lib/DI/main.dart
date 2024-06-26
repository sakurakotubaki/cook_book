// Do DI
class ConsoleMessageWriter {
  void write(String message) {
    print(message);
  }
}

class Salutation {
  final ConsoleMessageWriter _writer;
  Salutation(this._writer);

  void greet(String name) {
    _writer.write('Hello, $name');
  }
}

void main() {
  final writer = ConsoleMessageWriter();
  final salutation = Salutation(writer);
  salutation.greet('Hello DI!');
}