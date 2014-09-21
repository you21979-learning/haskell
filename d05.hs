--class TestInt extends Test {
--    private int i;
--    public TestInt(int i) { this.i = i; }
--    public String foo() {
--        if (i == 1) return "bar";
--        return super.foo();
--    }
--}
--class TestStr extends Test {
--    private String s;
--    public TestStr(String s) { this.s = s; }
--    public String foo() {
--        if (s.equals("1")) return "baz";
--        return super.foo();
--    }
--}
--abstract class Test {
--    public String foo() { return "?"; }
--    public static void main(String... args) {
--        System.out.println(new TestInt( 0 ).foo());
--        System.out.println(new TestInt( 1 ).foo());
--        System.out.println(new TestStr("0").foo());
--        System.out.println(new TestStr("1").foo());
--    }
--}

data Test = TestInt Int
          | TestStr String
          deriving Show

foo (TestInt  1 ) = "bar"
foo (TestStr "1") = "baz"
foo _             = "?"

main = do
    print $ TestStr ""
    print $ TestInt 1
    print $ TestInt 2
    print $ foo $ TestInt  0
    print $ foo $ TestInt  1
    print $ foo $ TestStr "0"
    print $ foo $ TestStr "1"
