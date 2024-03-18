When you want to validate a binary search tree, remember that a node must be greater than **all** the nodes in its left subtree and less than **all** the nodes in its right subtree. Therefore, a node must be greater than the **maximum** value of its subtree and be less than **minimum** of its right subtree. You cannot draw a conclusion based of `cur->val > cur->left->val && cur->val < cur->right->val`.

The inorder traversal result of a binary search tree must be a ordered array.

[LC0700 Search in a Binary Search Tree](../Problems/LC/LC0700.md)

[LC0098 Validate Binary Search Tree](../Problems/LC/LC0098.md)

[LC0530 Minimum Absolute Difference in BST](../Problems/LC/LC0530.md)

[LC0501 Find Mode in Binary Search Tree](../Problems/LC/LC0501.md)