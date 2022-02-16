import 'BinarySearchTree.dart';

void main(List<String> args) {
  BinarySearchTree bst = BinarySearchTree(15);
  bst.insert(12);
  bst.insertList([12, 27, 7, 14, 20, 88, 23]);

  bst.traverse();

  // 7 -> 14 -> 12 -> 23 -> 20 -> 88 -> 27 -> 15
}
