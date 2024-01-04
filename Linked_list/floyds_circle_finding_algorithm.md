# What is Floyd's cycle-finding algorithm?

It is also called Hare-Tortoise algorithm.

It uses two pointers, a slow pointer and a fast pointer which is two times fast, to calculate:

- Whether their exists a circle in the linked list;
- What's the length of the circle;
- What's the length of the "tail";

Let's assume that the length of the "tail" is $a$, and the circumference of the circle is $b$.

| Time Step | fast | slow | Event |
| ----      | ---- | ---- | ----- |
| a | 2a | a | slow enters the circle |
| a + b - a%b | 2a + 2b - 2(a%b) | a + b - a%b | slow meets fast |
| 2a + b - a%b | 2a + b - a%b | 3a + 2b - 2(a%b) | slow meets fast at the entrance of the circle |

At time step `2a + b - a%b`, the difference in travel length of fast and slow is `a + b - a%b`, which must be a multiple of $b$. Therefore, they must meet at the entrance of the circle.

# Useful Links

[Zhihu-CN](https://zhuanlan.zhihu.com/p/137359535)

# Problems

[LC0160 Intersection of Two Linked Lists](../Problems/LC/LC0160.md)

[LC0142 Linked List Cycle II](../Problems/LC/LC0142.md)

