void main() {
  const items = ['ttt', 'fff', '8888'];

  if (items.any((item) => item.contains('a'))) {
    print('小文字のアルファベット "a" を含むアイテムがあります。');
  } else {
    print('小文字のアルファベット "a" を含むアイテムがありません。');
  }

  if (items.every((item) => item.length >= 5)) {
    print('全てのアイテムの文字数が 5 文字以上です。');
  } else {
    print('全てのアイテムの文字数が 5 文字以上ではありません。');
  }
}