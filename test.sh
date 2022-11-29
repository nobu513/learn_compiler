
assert() {

    input="$1"
    expected="$2"

    cc 9cc.c
    ./a.out "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp 

    actual="$?"

    if [ "$expected" = "$actual" ]; then
        echo "$input => $actual (OK)"
    else
        echo "expected $input => $expected. but got $actual"
        exit 1
    fi
}

assert '10+5' 15 
assert '5-5+10' 10 
