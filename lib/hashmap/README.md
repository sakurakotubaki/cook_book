## HashMap
https://api.flutter.dev/flutter/dart-collection/HashMap-class.html

https://api.dart.dev/stable/3.3.3/dart-collection/LinkedHashMap-class.html

https://api.flutter.dev/flutter/dart-collection/SplayTreeMap-class.html

## What is Map?
キーと値のペアのコレクションにすぎません。各キーは、一意であり、関連付けられます。値には、任意の整数、文字列、任意のデータ型を指定できます。
値を取得したい場合は、関連づけられたキーを指定する必要があります。

```dart
import 'dart:collection';

void main() {
  // HashMap型の変数を宣言
  var map = HashMap();
  map[0]=["jack"];
  map[20]=["adam"];
  map[15]=["rose"];
  map[78]=["jenn"];

  // forEachを使用して、HashMap内のすべてのキーと値を表示
  map.forEach((key, value) {
    print("key: $key, value: $value");
  });
}
```

実行結果:
```bash
key: 0, value: [jack]
key: 20, value: [adam]
key: 78, value: [jenn]
key: 15, value: [rose]
```

データを追加した順序と同じではないことがわかります。これは`HashMap`の特製の１つであり、順序付けされていないため、ハッシュテーブルに従います。

`Map`の場合だとキーがデータを追加した順序と同じ順序で出力されることがわかるように、デフォルトで`HashMap`をリンクするようになります。

```dart
void main() {
  // HashMap型の変数を宣言
  var map = Map();
  map[0]=["jack"];
  map[20]=["adam"];
  map[15]=["rose"];
  map[78]=["jenn"];

  // forEachを使用して、HashMap内のすべてのキーと値を表示
  map.forEach((key, value) {
    print("key: $key, value: $value");
  });
}
```

実行結果:
```bash
key: 0, value: [jack]
key: 20, value: [adam]
key: 78, value: [jenn]
key: 15, value: [rose]
```

```dart
import 'dart:collection';

void main() {
  // LinkedHashMapを使用して、HashMapを作成
  var map = LinkedHashMap();
  map[0]=["jack"];
  map[20]=["adam"];
  map[15]=["rose"];
  map[78]=["jenn"];

  // forEachを使用して、HashMap内のすべてのキーと値を表示
  map.forEach((key, value) {
    print("key: $key, value: $value");
  });
}
```

実行結果:
```bash
key: 0, value: [jack]
key: 20, value: [adam]
key: 78, value: [jenn]
key: 15, value: [rose]
```

HashMapから値を取得するときは、O(n)
Mapから値を取得するときは、O(1)

LinkedHashMapの値を取得する。すぐに取得できる。が、HashMapから値を取得したい場合は、HashMapに保存したすべてのデータを調べる必要があります。

### ⚖️データを追加するときの比較
HashMapとMapの間に値を挿入する方法について
HashMapは順序を気にせず、簡単に値を挿入してクリックできる。
Mapの場合は、Map全体を検索し、最後のMapを探して新しいデータを追加します。
この比較から、データの挿入ではHashMapの方が効率的であることがわかりますが、データの取得ではなく、Mapはその逆であるため、考えるときにこの点を考慮する必要があります。