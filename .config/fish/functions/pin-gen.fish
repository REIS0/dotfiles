function pin-gen -d "Generate a 4 digit pin without repeating numbers"
    set -lx good_num false
    while not $good_num
        set -lx pin "$(random 1000 9999)"
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
