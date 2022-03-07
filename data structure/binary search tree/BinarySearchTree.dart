// Binary Search Tree implementation with dart

import 'TreeNode.dart';
import 'dart:io';

class BinarySearchTree {
  TreeNode? root = null;
  int totalNode = 0;
  int traversedNode = 0;

  BinarySearchTree([int? rootData]) {
    if (rootData != null) {
      this.root = TreeNode(rootData);
      totalNode += 1;
    }
  }

  void insert(int? data) {
    TreeNode? insertNode = TreeNode(data);
    if (this.root == null) {
      this.root = insertNode;
      totalNode += 1;
    } else {
      TreeNode? currNode = this.root;
      while (true) {
        int? currData = currNode!.data;
        if (insertNode.data! < currData!) {
          if (currNode.left == null) {
            currNode.left = insertNode;
            totalNode += 1;
            break;
          } else {
            currNode = currNode.left;
          }
        } else if (insertNode.data! > currData) {
          if (currNode.right == null) {
            currNode.right = insertNode;
            totalNode += 1;
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

  void search(int searchedData, [String? method]) {
    if (this.root == null) {
      print('There is no data yet');
      return;
    } else {
      this.traversedNode = 1;
    }

    if (method == null) {
      method = 'postorder';
    }

    if (method == 'inorder') {
      // Todo inorder
    } else if (method == 'postorder') {
      postOrderTraversal(this.root, 'search', searchedData);
    } else if (method == 'preorder') {
      // Todo preorder
    } else {
      print('Traverse method has been set to postorder traversal');
      postOrderTraversal(this.root, 'search', searchedData);
    }
  }

  void traverse([String? method]) {
    if (this.root == null) {
      print('There is no data yet');
      return;
    } else {
      this.traversedNode = 1;
    }

    if (method == null) {
      method = 'postorder';
    }

    if (method == 'inorder') {
      // Todo inorder
    } else if (method == 'postorder') {
      postOrderTraversal(this.root, 'print');
    } else if (method == 'preorder') {
      // Todo preorder
    } else {
      print('Traverse method has been set to postorder traversal');
      postOrderTraversal(this.root, 'print');
    }

    // print(this.traversalResult.substring(0, (this.traversalResult.length - 4)));
  }

  void postOrderTraversal([TreeNode? currNode, String? mode, int? search]) {
    TreeNode? left_child = currNode!.left;
    TreeNode? right_child = currNode.right;

    if (left_child != null) {
      this.traversedNode += 1;
      postOrderTraversal(left_child, mode, search);
    }

    if (right_child != null) {
      this.traversedNode += 1;
      postOrderTraversal(right_child, mode, search);
    }

    if (mode == 'search') {
      if (search == currNode.data) {
        // Salah ini perbaiki
        return;
      }
    }

    stdout.write('${currNode.data}' + (currNode == this.root ? '\n' : ' -> '));
  }
}
