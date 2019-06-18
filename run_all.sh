WORKLOAD="$1"
if [[ ! -e "$WORKLOAD" ]]; then
    WORKLOAD="html.lst"
fi

echo "Running on input: $WORKLOAD"

echo "Java"
if [[ ! -f src/HelloRegex.class ]];
then
    echo "Compiling Java program"
    (cd src; javac HelloRegex.java)
fi
time java -cp src HelloRegex "$WORKLOAD"

echo ""
echo ""
echo ""

echo "Python"
time python3 hello_regex.py "$WORKLOAD"

echo ""
echo ""
echo ""

echo "Rust (release mode)"
if [[ ! -f "hello_regex/target/release/hello_regex" ]];
then
    echo "Compiling Rust program"
    (cd hello_regex; cargo build --release)
fi
time hello_regex/target/release/hello_regex "$WORKLOAD"


echo ""
echo ""
echo ""

echo "Rust (debug mode)"
if [[ ! -f "hello_regex/target/debug/hello_regex" ]];
then
    echo "Compiling Rust program"
    (cd hello_regex; cargo build)
fi
time hello_regex/target/debug/hello_regex "$WORKLOAD"


echo ""
echo ""
echo ""
