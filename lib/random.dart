class Solution {
  List<int> merge(List<int> list1, List<int> list2) {
    List<int> result = [];
    var index1 = 0;
    var index2 = 0;

    while (index1 < list1.length && index2 < list2.length) {
      if (list1[index1] < list2[index2]) {
        result.add(list1[index1]);
        index1++;
      } else {
        result.add(list2[index2]);
        index2++;
      }
    }

    if (index1 < list1.length) {
      result.addAll(list1.skip(index1));
    } else if (index2 < list2.length) {
      result.addAll(list2.skip(index2));
    }

    return result;
  }

  List<int> mergeSort(List<int> arr) {
    if (arr.length == 1) {
      return arr;
    }
    if (arr.length == 2) {
      if (arr[0] > arr[1]) {
        int temp = arr[0];
        arr[0] = arr[1];
        arr[1] = temp;
      }
      return arr;
    }

    int middle = arr.length ~/ 2;
    List<int> left = arr.sublist(0, middle);
    List<int> right = arr.sublist(middle);
    return merge(mergeSort(left), mergeSort(right));
  }

  List<List<int>> minimumAbsDifference(List<int> arr) {
    List<List<int>> result = [];

    // Bubble Sort
    // for (var i = 0; i < arr.length; i++) {
    //   for (var j = i + 1; j < arr.length; j++) {
    //     if (arr[i] > arr[j]) {
    //       var temp = arr[i];
    //       arr[i] = arr[j];
    //       arr[j] = temp;
    //     }
    //   }
    // }

    // Insertion Sort
    // for (int i = 1; i < arr.length; i++) {
    //   var currentNum = arr[i];
    //   int j = i - 1;
    //   for (; j >= 0 && arr[j] > currentNum; j--) {
    //     arr[j + 1] = arr[j];
    //   }
    //   arr[j + 1] = currentNum;
    // }

    // Merge sort
    arr = mergeSort(arr);

    var minSubtract = 9223372036854775807;

    for (var i = 1; i < arr.length; i++) {
      var current = arr[i] - arr[i - 1];
      if (current < minSubtract) {
        result.clear();
        result.add([arr[i - 1], arr[i]]);
        minSubtract = current;
      } else if (current == minSubtract) {
        result.add([arr[i - 1], arr[i]]);
      }
    }

    // print(arr);
    // print(result);

    return result;
  }
}

void main(List<String> args) {
  Solution main = Solution();

  var test = [3, 8, -10, 23, 19, -4, -14, 27];

  main.minimumAbsDifference(test);
}
