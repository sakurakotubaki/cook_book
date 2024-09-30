import 'dart:io';
import 'dart:typed_data';

Future<void> main() async {
  // ファイルにバイナリデータを書き込む
  final file = File('example.bin');
  final data = Uint8List.fromList([0, 1, 2, 3, 4, 5]);
  await file.writeAsBytes(data);
  print('Data written to file');

  // ファイルからバイナリデータを読み込む
  final readData = await file.readAsBytes();
  print('Data read from file: $readData');

  // データの処理（例：各バイトを2倍にする）
  final processedData = Uint8List.fromList(
    readData.map((byte) => (byte * 2).clamp(0, 255) as int).toList()
  );
  print('Processed data: $processedData');
}