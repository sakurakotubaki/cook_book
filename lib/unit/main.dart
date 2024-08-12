class IsStringLong {
  // isStringLongは、文字列が5文字より長いかどうかを判定する
  static bool isStringLong(String input) {
    if (input.length > 5) {
      // 5文字より長い場合はtrueを返す
      return true;
    }
    // 5文字以下の場合はfalseを返す
    return false;
  }
}
// dart create lesson