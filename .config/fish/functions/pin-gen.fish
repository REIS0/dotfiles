function pin-gen -a number -d "Generate a number with 2 until 10 digit pin without repeating numbers"
    if $number -gt 10
        echo "Number greater than 10."
        return 1
    else
        set -lx good_num false
        while not $good_num
            set -lx pin (string join "" (for i in (seq $number); random 0 9;end))
            set -lx repeat false
            for i in (string split '' $pin)
                set -l spliter (string split $i $pin)
                if test (count $spliter) -ne 2
                    set repeat true
                    break
                end
            end
            if not $repeat
                echo $pin
                set good_num true
            end
        end
    end
end
