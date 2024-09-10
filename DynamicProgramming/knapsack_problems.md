# 01 Knapsack

In conclusion, 01-knapsack problem can be used for not only searching the maximum, but also finding any mathematically equivalent or other information derived from this maximum!

[KM0046 Packing Research Materials](../Problems/KM/KM0046.md)

[LC0416 Partition Equal Subset Sum](../Problems/LC/LC0416.md)

[LC1049 Last Stone Weight II](../Problems/LC/LC1049.md)

[LC0494 Target Sum](../Problems/LC/LC0494.md)

[LC0474 Ones and Zeros](../Problems/LC/LC0474.md)

# Unbounded knapsack problem

In 1d DP, we update `j` from end to front to avoid selecting the same item multiple times. 

```
for (int j = posSum; j >= nums[i]; j--) {
    dp[j] += dp[j - nums[i]];
}
```

However, in the context of unbounded knapsack problem, we deliberately iterate from front the end to pick up the same item unlimited times.

[KM0052 Research Materials](../Problems/KM/KM0052.md)

[LC0518 Coin Change II](../Problems/LC/LC0518.md)

[LC0070 Climbing Stairs](../Problems/LC/LC0070.md)

[LC0322 Coin Changes](../Problems/LC/LC0322.md)

## Finding permutations:

If you want to find permutations and list all of it, there is no other choice but to resort to brute-force.

If you want to find number of possible permutations, you have to iterate through knapsack capacity in the outer loop and numbers in the inner loop.

[LC0377 Combination Sum IV](../Problems/LC/LC0377.md)

## Finding combinations:

To find number of possible combinations, you need to iterate numbers in the outer loop and knapsack capacity in the inner loop.

[LC0518 Coin Change II](../Problems/LC/LC0518.md)