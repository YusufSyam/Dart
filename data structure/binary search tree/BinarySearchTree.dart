// Binary Search Tree implementation with dart

import 'TreeNode.dart';
import 'dart:io';

class BinarySearchTree {
  TreeNode? root = null;
  int totalNode = 0;
  int traversedNode = 0;
  int max = 0;
  int min = 0;
  bool isSearchedNodeExist = false;

  BinarySearchTree([int? rootData]) {
    if (rootData != null) {
      this.root = TreeNode(rootData);
      this.max = rootData;
      this.min = rootData;
      totalNode += 1;
    }
  }

  void insert(int? data) {
    TreeNode? insertNode = TreeNode(data);
    if (this.root == null) {
      this.root = insertNode;
      this.max = data!;
      this.min = data!;
      totalNode += 1;
    } else {
      TreeNode? currNode = this.root;
      while (true) {
        int? currData = currNode!.data;
        if (insertNode.data! < currData!) {
          if (currNode.left == null) {
            currNode.left = insertNode;

            if (data! < this.min) {
              this.min = data;
            }

            totalNode += 1;
            break;
          } else {
            currNode = currNode.left;
          }
        } else if (insertNode.data! > currData) {
          if (currNode.right == null) {
            currNode.right = insertNode;

            if (data! > this.max) {
              this.max = data;
            }

            totalNode += 1;
            break;
          } else {
            currNode = currNode.right;
          }
        } else {
          print('Data $data already existed in binary tree');
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

  void search(int searchedData) {
    if (this.root == null) {
      print('There is no data yet');
      return;
    }

    traverseSearch(this.root, searchedData);

    print(
        'Data $searchedData is${(this.isSearchedNodeExist) ? '' : ' not'} on the tree');

    this.isSearchedNodeExist = false;
  }

  void traverseSearch(TreeNode? currNode, int search) {
    TreeNode? left_child = currNode!.left;
    TreeNode? right_child = currNode.right;

    if (search == currNode.data) {
      this.isSearchedNodeExist = true;
    }

    if (this.isSearchedNodeExist == true) {
      return;
    }

    if (left_child != null && search < currNode.data!) {
      traverseSearch(left_child, search);
    } else if (right_child != null && search > currNode.data!) {
      traverseSearch(right_child, search);
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
      postOrderTraversal(this.root);
    } else if (method == 'preorder') {
      setMax(this.root);
      preOrderTraversal(this.root);
    } else {
      print('Traverse method has been set to postorder traversal');
      postOrderTraversal(this.root);
    }

    // print(this.traversalResult.substring(0, (this.traversalResult.length - 4)));
  }

  void postOrderTraversal(TreeNode? currNode) {
    TreeNode? left_child = currNode!.left;
    TreeNode? right_child = currNode.right;

    if (left_child != null) {
      this.traversedNode += 1;
      postOrderTraversal(left_child);
    }

    if (right_child != null) {
      this.traversedNode += 1;
      postOrderTraversal(right_child);
    }

    stdout.write('${currNode.data}' + (currNode == this.root ? '\n' : ' -> '));
  }

  void preOrderTraversal(TreeNode? currNode) {
    TreeNode? left_child = currNode!.left;
    TreeNode? right_child = currNode.right;

    stdout.write(
        '${currNode.data}' + (currNode.data == this.max ? '\n' : ' -> '));

    if (left_child != null) {
      this.traversedNode += 1;
      preOrderTraversal(left_child);
    }

    if (right_child != null) {
      this.traversedNode += 1;
      preOrderTraversal(right_child);
    }
  }

  void setMax(TreeNode? currNode) {
    if (currNode!.right == null) {
      this.max = currNode.data!;
    } else {
      setMax(currNode.right);
    }
  }

  void setMin(TreeNode? currNode) {
    if (currNode!.left == null) {
      this.min = currNode.data!;
    } else {
      setMin(currNode.left);
    }
  }
}
