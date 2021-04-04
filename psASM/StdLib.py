StdLib = ["#",
          "# StdLib for psMCU.",
          "# Contains Register addresses and bit indexes.",
          "#",
          "",
          "",
          "# #### System Registers ####",
          "",
          "# SYS1",
          "@define SYS1           0x104    # (R/W) System Register 1",
          "",
          "@define S1_SHFT_IN     0        # [0]    (R/W) Bit that is shifted in while shifting.",
          "@define S1_CARRY       1        # [1]    (R) Carry-out bit. Updated by ADD, ADDLA, ADDLB.",
          "@define S1_HCARRY      2        # [2]    (R) Half-Carry-out bit. Updated by ADD, ADDLA, ADDLB.",
          "@define S1_BORROW      3        # [3]    (R) Borrow bit. Updated by SUB, SUBL",
          "@define S1_HBORROW     4        # [4]    (R) Half-Borrow bit. Updated by SUB, SUBL",
          "                                # [5..7] (R) Reserved. Always Reads 0.",
          "# SYS2",
          "@define SYS2           0x105    # (R/W) System Register 2",
          "                                # [0..3] (R/W) RAM Page",
          "                                # [4..6] (R) Clock Frequency",
          "                                # [7] (R) Reserved. Always Reads 0.",
          "",
          "# SYS3",
          "@define SYS3           0x106    # (R/W) System Register 3",
          "",
          "@define S3_INTEN       0        # [0]    (R/W) Interrupt Enable bit.",
          "@define S3_A0          1        # [1]    (R) Reads 1 if A==0. 0 Otherwise.",
          "@define S3_B0          2        # [2]    (R) Reads 1 if B==0. 0 Otherwise.",
          "@define S3_AB          3        # [3]    (R) Reads 1 if A==B. 0 Otherwise.",
          "@define S3_AgreaterB   4        # [4]    (R) Reads 1 if A>B. 0 Otherwise.",
          "@define S3_BlessA      4        # (Alias)",
          "@define S3_BgreaterA   5        # [5]    (R) Reads 1 if A<B. 0 Otherwise.",
          "@define S3_AlessB      5        # (Alias)",
          "                                # [6..7] (R) Reserved. Always Reads 0.	"]


# Utility Function to parse a file into paste-able format:
def pasteable_psasm(file_name):
    print('[', end='')
    with open(file_name, 'r') as file:
        for line in file:
            print('\"' + line.rstrip('\n') + '\",\\')
    print(']')
