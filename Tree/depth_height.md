**Height of a node**: distance from current node to the deepest leaf node of the tree which has the current node as root.

To get the height of a node, postorder traversal if the best. Because the height of a node depends on its children's height, so we should first get the height of its children, which coincides with postorder traversal.

**Depth of a node**: distance from the root to the current node.

To get the height of a node, preorder traversal is the best. Because the depth of a node depends on its parent, so we should first calculate the depth of a parent before its children, which coincides with preorder traversal.

[LC0104 Maximum Depth of Binary Tree](../Problems/LC/LC0104.md)

[LC0559 Maximum depth of N-ary Tree](../Problems/LC/LC0559.md)

[LC0111 Minimum Depth of Binary Tree](../Problems/LC/LC0111.md)