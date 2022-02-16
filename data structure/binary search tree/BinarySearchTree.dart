// Binary Search Tree implementation with dart

import 'TreeNode.dart';

class BinarySearchTree {
  TreeNode? root = null;
  String traversalResult = '';

  BinarySearchTree([int? rootData]) {
    if (rootData != null) {
      this.root = TreeNode(rootData);
    }
  }

  void insert(int? data) {
    TreeNode? insertNode = TreeNode(data);
    if (this.root == null) {
      this.root = insertNode;
    } else {
      TreeNode? currNode = this.root;
      while (true) {
        int? currData = currNode!.data;
        if (insertNode.data! < currData!) {
          if (currNode.left == null) {
            currNode.left = insertNode;
            break;
          } else {
            currNode = currNode.left;
          }
        } else if (insertNode.data! > currData) {
          if (currNode.right == null) {
            currNode.right = insertNode;
            break;
          } else {
            currNode = currNode.right;
          }
        } else {
          print('Data already existed in binary tree');
          break;
        }
      }
    }
  }

  void insertList(List<int> dataList) {
    for (var i = 0; i < dataList.length; i++) {
      insert(dataList[i]);
    }
  }

  void traverse([String? method]) {
    if (this.root == null) {
      print('There is no data yet');
      return;
    }

    if (method == null) {
      method = 'postorder';
    }

    this.traversalResult = '';

    if (method == 'inorder') {
      // Todo inorder
    } else if (method == 'postorder') {
      postOrderTraversal(this.root);
    } else if (method == 'preorder') {
      // Todo preorder
    } else {
      print('Traverse method has been set to postorder traversal');
      postOrderTraversal(this.root);
    }

    print(this.traversalResult.substring(0, (this.traversalResult.length - 4)));
  }

  void postOrderTraversal(TreeNode? currNode) {
    TreeNode? left_child = currNode!.left;
    TreeNode? right_child = currNode.right;

    if (left_child != null) {
      postOrderTraversal(left_child);
    }

    if (right_child != null) {
      postOrderTraversal(right_child);
    }

    this.traversalResult += '${currNode.data} -> ';
  }
}
