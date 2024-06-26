sealed class HttpState {}

class Success extends HttpState {
  final String data;

  Success(this.data);
}

class Failure extends HttpState {
  final String error;
  final int code;

  Failure(this.error, this.code);
}

HttpState handle(int code) {
  switch (code) {
    case 200:
      return Success('Success');
    default:
      return Failure('Error', code);
  }
}