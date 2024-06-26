import 'dart:collection';

class MyHashMap {
  // ダミーのJSONデータ
final dummyEvents = {
  // Cloud Firestoreをイメージして、keyが２０文字の英語と数字、値が日付と、メモ
  'pqxft55555pqxft55555': {'date': '2024-06-05', 'memo': 'ヨガにいった'},
  'pqxft55555pqxft55556': {'date': '2024-06-06', 'memo': 'ストレッチにいった'},
  'pqxft55555pqxft55557': {'date': '2024-06-07', 'memo': 'ウォーキングにいった'},
  'pqxft55555pqxft55558': {'date': '2024-06-08', 'memo': '水泳にいった'},
};

  // ハッシュマップの実装
  HashMap<String, dynamic> events = HashMap();

  // ハッシュマップにデータを追加するメソッド
  void put(String key, String date, String memo) {
    events[key] = {'date': date, 'memo': memo};
  }

  // ハッシュマップからデータを取得するメソッド
  Map<String, String>? get(String key) {
    return events[key];
  }

  // ハッシュマップから日付を取得するメソッド
  String? getDate(String key) {
    return events[key]!['date'];
  }

  // ハッシュマップからメモを取得するメソッド
  String? getMemo(String key) {
    return events[key]!['memo'];
  }

  // ハッシュマップからデータを削除するメソッド
  void remove(String key) {
    events.remove(key);
  }

  // ハッシュマップの中身を全て削除するメソッド
  void clear() {
    events.clear();
  }

  // ハッシュマップの中身を全て取得するメソッド
  Map<String, dynamic> getAll() {
    return events;
  }

  // ハッシュマップの中身を全て表示するメソッド
  void showAll() {
    events.forEach((key, value) {
      print('key: $key, date: ${value['date']}, memo: ${value['memo']}');
    });
  }

}

void main() {
  // ハッシュマップのインスタンスを生成
  var myHashMap = MyHashMap();

  // ダミーデータをハッシュマップに追加
  myHashMap.dummyEvents.forEach((key, value) {
    myHashMap.put(key, value['date']!, value['memo']!);
  });

  // ハッシュマップの中身を全て表示
  myHashMap.showAll();

  // ハッシュマップからデータを取得
  var event = myHashMap.get('pqxft55555pqxft55555');
  if (event != null) {
    print('key: pqxft55555pqxft55555, date: ${event['date']}, memo: ${event['memo']}');
    print('日付だけ | ${event['date']}');
    print('メモだけ | ${event['memo']}');
  } else {
    print('No event found for key: pqxft55555pqxft55555');
  }

  // ハッシュマップからデータを削除
  myHashMap.remove('pqxft55555pqxft55555');
}