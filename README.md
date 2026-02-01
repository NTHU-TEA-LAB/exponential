# exp 硬體資料格式變化

## stage 1:(sph2cas)

使用四個 cordic ip 調整為 sin/cos mode，輸入為 Radiant mode 。

Input: $S_{3.21}(24-bits)$

output: $S_{2.14}(16-bits)$

## stage 2: (kappa @ distance)

$A = kappa \times distance^T$

### matrix size:

Kappa : $2\times3$

Distance: $8\times 3$

### Matrix precision

Kappa : $S_{4.20} \ (24-bits)$

Distance : $S_{5.11} \ (16-bits)$

 $A:S_{9.31} \ (40-bits)$

$A(out): S_{9.23}(32-bits)$

## stage3: ((k/pi) * (kappa @ distance))

$B = \frac{k}{\pi}A$

### matrix size

$\frac{k}{\pi} : scalar, length=257$

A : $2\times 8$

B : $257\times 2\times 8$

### matrix precision

$\frac{k}{\pi}: S_{7.14}(24-bits)$

$A:S_{9.23} (32-bits)$

$B:S_{16.37} (56-bits)$

### output:

cordic_in : $S_{3.21}(24-bits)$

取 B  的小數部分

```jsx
assign cordic_in = {B[55], B[55], B[55], B[39:19]};
```

## stage 4(exp(B)):

最後將前級算出的 B取小數部分，剛好可以將角度範圍設定成$\in[-1, 1]$ 通過 cordic ip 得到 exp 的實數項與虛數項

$e^{j\theta} = \cos\theta + j\sin\theta$

使用 cordic ip 的 sin/cos mode，輸入使用 scaled radiant mode。

Scaled radiant mode input range $\in [-1, 1]$

### cordic I/O:

Input: 24-bits(F3.N)

Output: 16-bits(F2.N) Real, 16-bits(F2.N) Imag

## stage 5 (save to BRAM):

*output  wire  [8:0] bram_addr_a,

output  wire        bram_clk_a,

output  wire  [15:0] bram_din_a,

input wire [15:0] bram_dout_a,

output  wire        bram_rst_a,

output  wire        bram_en_a,*

output  wire    bram_we_a,
