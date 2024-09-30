class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> bracketMap = {
      '(':')',
      '{':'}',
      '[':']',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if(bracketMap.containsKey(char)) {
        stack.add(char);
      } else {
        if(stack.isEmpty) {
          return false;
        }

        String top = stack.removeLast();

        if (bracketMap[top] != char) {
          return false;
        } 
      }
    }
      return stack.isEmpty;
  }
}