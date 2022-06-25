#!/bin/bash
clear
echo "-----------LINUX BASIC-------------"
echo "[1] Xem đường dẫn thư mục hiện tại."
echo "[2] Xem nội dung thư mục."
echo "[3] Đọc file bất kỳ."
echo "[4] Xóa file và thư mục."
echo "[5] Xem hostname"
echo "[6] Tạo thư mục."
echo "[7] Tạo file trống."
echo "[8] Tìm kiếm file và folder."
echo "[9] Xem thông tin phần cứng."
echo "[10] Xem phiên bản phần mềm"
echo "-----------------------------------"
echo "BẠN MUỐN LÀM GÌ:"
read number
if [ $number -eq 1 ]
    then
        echo "Đường dẫn hiện tại bạn đang đứng là: `pwd`"
elif [ $number -eq 2 ]
    then 
        echo "Bạn muốn xem nội dung thư mục của của foler:"
        read path1
        echo "Đây là nội dung thư mục $path1:"
        ls -l $path1
elif [ $number -eq 3 ]
    then
        echo "Nhập tên file bạn muốn xem:"
        read file1
        echo "Đây là nội dung file $file1:"
        cat $file1
elif [ $number -eq 4 ]
    then 
        echo "Nhập tên file hoặc thư mục bạn muốn xóa:"
        read folder1
        rm -rf $folder1
        if [ `echo $?` -eq 0 ]
            then
                echo "Xóa thành công"
            else
                echo "Xóa thất bại, vui lòng thử lại."
        fi
elif [ $number -eq 5 ]
    then
        echo "hostname của máy tính này là:"
        hostname
elif [ $number -eq 6 ]
    then 
        echo "Nhập tên thư mục bạn muốn tạo:"
        read folder2
        mkdir $folder2
elif [ $number -eq 7 ]
    then
        echo "Nhập tên file bạn muốn tạo:"
        read file1
        touch $file1
elif [ $number -eq 8 ]
    then 
        echo "Nhập tên file hoặc folder bạn muốn tìm kiếm:"
        read all1
        locate -i $all1
elif [ $number -eq 9 ]
    then 
        echo "[1] Xem thông tin CPU"
        echo "[2] Xem thông tin RAM"
        echo "[3] Xem thông tin ổ cứng"
        echo "BẠN MUỐN XEM THÔNG TIN PHẦN CỨNG NÀO:"
        read num1
        if [ $num1 -eq 1 ]
            then
            echo "ĐÂY LÀ THÔNG TIN CPU:"
            cat /proc/cpuinfo | grep "model name" | head -n 1 && cat /proc/cpuinfo | grep "cpu MHz" | head -n 1
        elif [ $num1 -eq 2 ]
            then
            echo "ĐÂY LÀ THÔNG TIN RAM:"
            cat /proc/meminfo | head -n 3
        elif [ $num1 -eq 3 ]
            then
            echo "ĐÂY LÀ THÔNG TIN Ổ CỨNG:"
            lsblk
        fi
elif [ $number -eq 10 ]
    then
        echo "ĐÂY LÀ THÔNG TIN HỆ ĐIỀU HÀNH:"
        cat /etc/os-release | grep PRETTY_NAME  
fi
