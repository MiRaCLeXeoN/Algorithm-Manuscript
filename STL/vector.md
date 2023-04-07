You cannot extend the vector implicitly by referencing an invalid index, which causes segmentation fault. Therefore, you have to `resize` the vector after default initialization, or explicitly designates the minimal size of the vector in initialization.

```C++
vector<vector<int>> arr;
// illegal operation
arr[10][20] = 30;  

// right method
arr.resize(20);
arr[10].resize(30);
arr[10][20] = 30;
```

