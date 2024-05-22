#!/bin/bash

# التحقق من وجود أداة dialog
if ! command -v dialog &> /dev/null; then
    echo "الأداة dialog غير مثبتة. يرجى تثبيتها."
    exit 1
fi

# وظائف العمليات الحسابية
function calculate() {
    num1=$1
    num2=$2
    operation=$3

    case $operation in
        "جمع") result=$(echo "$num1 + $num2" | bc);;
        "طرح") result=$(echo "$num1 - $num2" | bc);;
        "ضرب") result=$(echo "$num1 * $num2" | bc);;
        "قسمة")
            if [ "$num2" -eq 0 ]; then
                result="خطأ: القسمة على صفر"
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
            fi
            ;;
        *) result="اختيار غير صحيح";;
    esac

    echo "$result"
}

# عرض القائمة واختيار العملية
while true; do
    operation=$(dialog --menu "اختر عملية حسابية:" 15 50 4 \
        1 "جمع" \
        2 "طرح" \
        3 "ضرب" \
        4 "قسمة" \
        5 "خروج" \
        3>&1 1>&2 2>&3)

    if [ $? -ne 0 ]; then
        break
    fi

    if [ "$operation" == "5" ]; then
        break
    fi

    num1=$(dialog --inputbox "ادخل الرقم الأول:" 10 30 3>&1 1>&2 2>&3)
    if [ $? -ne 0 ]; then
        break
    fi

    num2=$(dialog --inputbox "ادخل الرقم الثاني:" 10 30 3>&1 1>&2 2>&3)
    if [ $? -ne 0 ]; then
        break
    fi

    case $operation in
        1) op="جمع";;
        2) op="طرح";;
        3) op="ضرب";;
        4) op="قسمة";;
    esac

    result=$(calculate $num1 $num2 $op)
    dialog --msgbox "النتيجة: $result" 10 30
done

clear
