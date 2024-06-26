final class Credentials {
  final String _userName;
  final String _password;
  Credentials(this._userName, this._password);
}

final class ApiClient {
  final Credentials _credentials;
  ApiClient(this._credentials);
  void fetch() {
    print('Fetching data from API with credentials: ${_credentials._userName}, ${_credentials._password}');
  }
}

void main() {
  final credentials = Credentials('田中太郎', '%&#123456');
  final apiClient = ApiClient(credentials);
  apiClient.fetch();
}