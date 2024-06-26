// int型のList
List<int> nums = [1, 1, 2];
// 引数がList<int>型のメソッド
int removeDuplicates(List<int> nums) {
  // iという変数を宣言し、0を代入
  var i = 0;
  // jという変数を宣言し、1を代入
  // jがnumsの長さより小さい場合、jをインクリメント
  for(var j = 1; j < nums.length; j++) {
    // numsのj番目の要素がnumsのi番目の要素と異なる場合
    if(nums[j] != nums[i]) {
      // iをインクリメント
      i++;
      // numsのi番目の要素にnumsのj番目の要素を代入
      nums[i] = nums[j];
    }
  }
  // i + 1を返す
  return i + 1;
}

void main() {
  print(removeDuplicates(nums));
}