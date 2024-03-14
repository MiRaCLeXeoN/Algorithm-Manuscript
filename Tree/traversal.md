Traversal result cannot reflect the original tree structure. Two different trees may derive the same traversal result. We can conclude that any traversal-based solution cannot be used for determining tree structure!

# Depth first traversal

[LC0144 Binary Tree Preorder Traversal](../Problems/LC/LC0144.md)

[LC0145 Binary Tree Postorder Traversal](../Problems/LC/LC0145.md)

[LC0094 Binary Tree Inorder Traversal](../Problems/LC/LC0094.md)

Preorder, inorder, and postorder traversal are in nature variants of DFS. They are not the only way to traverse a tree structure, so do not confine your thinking to them.
DFS is much more general than these three types, since tree is a simplified variant of graph structure.
The critical part of DFS is backtracing. When you encounter a node, you have to decide what to do with it.

For example, when you dfs a binary tree, you will process every node 3 times:

1. Encounter this node, push it into your stack. And start to process it's left child.
2. Backtrace from left child, and start to process its right child.
3. Backtrace from right child, and continue to backtrace to its parent node.

Therefore, you must find out a method to know which step you are at when handling this node. Since there are 3 conditions, you need at least 2 bits to represent all conditions.

To further generalize, if a node has $n$ children, there will be $n+1$ conditions. 

If you use recursion, the stack-based nature will help you to store such information automatically. But if you use stack explicitly, you  must create a variable to prompt you where you are right now.

[LC0257 Binary Tree Paths](../Problems/LC/LC0257.md)

# Width first traversal

[LC0102 Binary Tree Level Order Traversal](../Problems/LC/LC0102.md)

[LC0107 Binary Tree Level Order Traversal II](../Problems/LC/LC0107.md)

[LC0199 Binary Tree Right Side View](../Problems/LC/LC0199.md)

[LC0637 Average of Levels in Binary Tree](../Problems/LC/LC0637.md)

[LC0429 N-ary Tree Level Order Traversal](../Problems/LC/LC0429.md)

[LC0515 Find Largest Value in Each Tree Row](../Problems/LC/LC0515.md)

[LC0116 Populating Next Right Pointers in Each Node](../Problems/LC/LC0116.md)

[LC0117 Populating Next Right Pointers in Each Node II](../Problems/LC/LC0117.md)

[LC0104 Maximum Depth of Binary Tree](../Problems/LC/LC0104.md)

# Traversal

[LC0226 Invert Binary Tree](../Problems/LC/LC0226.md)

[LC0589 N-ary Tree Preorder Traversal](../Problems/LC/LC0589.md)

[LC0590 N-ary Tree Postorder Traversal](../Problems/LC/LC0590.md)

[LC0101 Symmetric Tree](../Problems/LC/LC0101.md)

[LC0100 Same Tree](../Problems/LC/LC0100.md)

[LC0572 Subtree of Another Tree](../Problems/LC/LC0572.md)

# Morris Traversal

Morris traversal has time complexity $O(n)$ (But nodes may be visited more than once), and space complexity $O(1)$.

If uses the leaf nodes' children pointer.