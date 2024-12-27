#!/bin/bash

regex="((\+86)?1[3-9][0-9]{9})"

# 函数：检查手机号码是否有效
check_mobile() {
    if [[ $1 =~ $regex ]]; then
        echo "手机号码有效"
    else
        echo "手机号码无效"
    fi
}

# 主程序
echo "开始正则表达式测试..."
echo "将测试所给字符串是否符合中国大陆手机号码的规范(11位数字，1开头，第二位不为0，1，2)"

# 测试用例：位数不足
echo "测试用例 1: 1234567890"
check_mobile "1234567890"

# 测试用例：位数多了
echo "测试用例 2: 1234567890123"
check_mobile "1234567890123"

# 测试用例：包含非数字字符
echo "测试用例 3: 1234567890a"
check_mobile "1234567890a"

# 测试用例：首位不为1
echo "测试用例 4: 21234567890"
check_mobile "21234567890"

# 测试用例：第二位为0
echo "测试用例 5: 10123456789"
check_mobile "10123456789"

# 测试用例：第二位为1
echo "测试用例 6: 11123456789"
check_mobile "11123456789"

# 测试用例：第二位为2
echo "测试用例 7: 12123456789"
check_mobile "12123456789"

# 测试用例：有效的手机号码
echo "测试用例 8: 13912345678"
check_mobile "13912345678"

echo "测试用例 9: 15098765432"
check_mobile "15098765432"

echo "测试用例 10: 17654321098"
check_mobile "17654321098"

echo "测试结束"
