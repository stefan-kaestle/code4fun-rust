echo "Java"
# Build java: javac javac src/HelloRegex.java
time java -cp src HelloRegex $@

echo ""
echo ""
echo ""

echo "Python"
time python3 hello_regex.py $@

echo ""
echo ""
echo ""

echo "Rust"
# cargo build --release
time hello_regex/target/release/hello_regex $@

echo ""
echo ""
echo ""
