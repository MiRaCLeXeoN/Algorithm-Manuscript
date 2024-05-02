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
