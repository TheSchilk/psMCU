
# System Register 1

Adr: 0x100

| Bit:    |  7  |  6  |  5  |  4  |    3    |    2   |   1   |     0    |
|---------|:---:|:---:|:---:|:---:|:-------:|:------:|:-----:|:--------:|
| Usage:  |  0  |  0  |  0  |  0  | ALU OVF | ALU HC | ALU C | Shift-in |
| Access: | [R] | [R] | [R] | [R] |  [R/W]  |  [R/W] | [R/W] |   [R/W]  |

# System Register 2

Adr: 0x101

| Bit:    |  7  |    6    |    5    |    4    |      3      |      2      |      1      |      0      |
|---------|:---:|:-------:|:-------:|:-------:|:-----------:|:-----------:|:-----------:|:-----------:|
| Usage:  |  0  | FREQ[2] | FREQ[1] | FREQ[0] | RAM PAGE[3] | RAM PAGE[2] | RAM PAGE[1] | RAM PAGE[0] |
| Access: | [R] |   [R]   |   [R]   |   [R]   |    [R/W]    |    [R/W]    |    [R/W]    |    [R/W]    |

# System Register 3

Adr: 0x102

| Bit:    |  7  |  6  |  5  |  4  |  3  |  2  |       1       |    0    |
|---------|:---:|:---:|:---:|:---:|:---:|:---:|:-------------:|:-------:|
| Usage:  |  0  | A<B | A>B | A=B | B=0 | A=0 | Int. Btn Flag | Int. En |
| Access: | [R] | [R] | [R] | [R] | [R] | [R] |     [R/W]     |  [R/W]  |