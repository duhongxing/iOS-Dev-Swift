//
//  LLDB.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2022/7/1.
//
// https://juejin.cn/post/6872764160640450574
/*
 (lldb) p 10
 (Int) $R0 = 10
 (lldb) p/x 10
 (Int) $R1 = 0x000000000000000a
 (lldb) p/o 10
 (Int) $R2 = 012
 (lldb) p/t 10
 (Int) $R3 = 0b0000000000000000000000000000000000000000000000000000000000001010
 (lldb) p/d "A"
 (String) $R6 = "A"
 (lldb) p/c 66
 (Int) $R5 = B\0\0\0\0\0\0\0

 x是读取内存的命令，x/4gx中第一个x是读取内存命令，后面的g是每次读取8字节，x的意思是16进制显示结果，4表示连续打印4段。

 对于g，常用的大小格式为b对应byte 1字节，h对应half word 2字节，w对应word 4字节，g对应giant word 8字节
 对于x，我们还可以用o对应8机制，b对应2进制,x对应16进制,f对应浮点，d对应10进制

 fr v -R来查看类型的结构

 bt是thread backtrace的简写，如果嫌堆栈打印太长，可以加一个限制，如bt 10，只打印10行

 thread list 列出当前线程列表

 thread select 选取某个线程作为后续命令的默认线程

 frame select 根据下标选择堆栈列表中某帧 此时会跳转到汇编页面，即使没有设置Always Show Disassembly

 frame info 显示当前帧信息

 up 移动当前帧(序号加1) down移动当前帧(序号减1) 如果已经是栈顶或者栈底，会提示已在最顶或者最底部。

 register read 读取寄存器 register write写入寄存器

 thread return 跳出当前方法的执行
 
 */

import Foundation

class RELLDB {
    static func lldbTerminal() {
        
    }
}
