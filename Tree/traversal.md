Traversal result cannot reflect the original tree structure. Two different trees may derive the same traversal result. We can conclude that any traversal-based solution cannot be used for determining tree structure!

# Depth first traversal

[LC0144 Binary Tree Preorder Traversal](../Problems/LC/LC0144.md)

[LC0145 Binary Tree Postorder Traversal](../Problems/LC/LC0145.md)

[LC0094 Binary Tree Inorder Traversal](../Problems/LC/LC0094.md)

[LC0106 Construct Binary Tree from Inorder and Postorder Traversal](../Problems/LC/LC0106.md)

[LC0105 Construct Binary Tree from Preorder and Inorder Traversal](../Problems/LC/LC0105.md)

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

[LC0112 Path Sum](../Problems/LC/LC0112.md)

[LC0113 Path Sum II](../Problems/LC/LC0113.md)

## Recursive solution

4 steps to build a recursive solution:

1. Divide the whole task into levels of subtasks with same structure.
2. Define the return value and prototype of the function.
3. Determine when to stop iteration.
4. Determine what to do within each level.

How to determine the return value of a recursive function?

- If you need to traverse the whole tree, and you want to collect **every possible result**, then you don't need return value. You can set it to `void`.
- If you need to traverse the whole tree, and the task on this level depends on the result of subtasks, you definitely need a return value.
- If you need to traverse the whole tree, and you only need to detect the existence of one result, then you should set the return value to `bool` so that recursive can early stop.
- If you don't need to traverse te whole tree, you can use `bool` to enable early return.

Of course, you can use a global value to help you monitor and control the whole process. For example, a global variable `bool hasDetectedTarget` can make recursion early stop.

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

[LC0513 Find Bottom Left Tree Value](../Problems/LC/LC0513.md)

# Traversal

[LC0226 Invert Binary Tree](../Problems/LC/LC0226.md)

[LC0589 N-ary Tree Preorder Traversal](../Problems/LC/LC0589.md)

[LC0590 N-ary Tree Postorder Traversal](../Problems/LC/LC0590.md)

[LC0101 Symmetric Tree](../Problems/LC/LC0101.md)

[LC0100 Same Tree](../Problems/LC/LC0100.md)

[LC0572 Subtree of Another Tree](../Problems/LC/LC0572.md)

[LC0404 Sum of Left Leaves](../Problems/LC/LC0404.md)

# Morris Traversal

Morris traversal has time complexity $O(n)$ (But nodes may be visited more than once), and space complexity $O(1)$.

If uses the leaf nodes' children pointer.