const String introductionOne = '''

# Introduction

When we are talking about android development, immediately the language that comes to our mind is Java

Almost all the android apps are written in Java only, Do you think Java is the only options?

Answer is No. You can write Android apps in any language that can compile and run on the Java Virtual Machine(JVM).
And one JVM-compatible programming language that's really caught the attention of the Android community is Kotlin, a
statically typed programming language from JetBrains.

Note: In Google I/O 2017, Google has announced that Kotlin is the another official language for Android Development.
Kotlin is not the replacement of Java or it will not replace java. Java and Kotlin will work together.
Kotlin + Java = Powerful Java

## What is Kotlin?

1) Kotlin is a statically-typed language, developed by JetBrains, that runs on the Java Virtual Machine and also compiled to Javascript source code.

whose syntax is more expressive and conces than that of Java. With features like higher-order functions, lambda expressions, operator overloading, string templates, and more

Kotlin has a lot more to offer than Java. Because Java and Kotlin are highly interoperable, they can be used together in the same project.

## What is Statically-typed language?

Dynamically typed programming language do type checking at the run-time as opposed to compile-time.
A programming language is said to use static typing when type checking is performed during compile-time as opposed to run-time.
In static typing types are associated with variable not values
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String introductionTwo = '''
# Using Kotlin for Server-side Development
## Kotlin is a great fit for developing server-side applications, allowing to write concise and expressive code while maintaining full compatibility with existing Java-based technology stacks and a smooth learning curve:

-Expressiveness: Kotlin's innovative language features, such as its support for type-safe builders and delegated properties, help build powerful and easy-to-use abstractions.
-Scalability: Kotlin's support for coroutines helps build server-side applications that scale to massive numbers of clients with modest hardware requirements.
-Interoperability: Kotlin is fully compatible with all Java-based frameworks, which lets you stay on your familiar technology stack while reaping the benefits of a more modern language.
-Migration: Kotlin supports gradual, step by step migration of large codebases from Java to Kotlin. You can start writing new code in Kotlin while keeping older parts of your system in Java.
-Tooling: In addition to great IDE support in general, Kotlin offers framework-specific tooling (for example, for Spring) in the plugin for IntelliJ IDEA Ultimate.
-Learning Curve: For a Java developer, getting started with Kotlin is very easy. The automated Java to Kotlin converter included in the Kotlin plugin helps with the first steps. Kotlin Koans offer a guide through the key features of the language with a series of interactive exercises.
''';

const String introductionThree = '''
# Using Kotlin for Android Development
## Kotlin is a great fit for developing Android applications, bringing all of the advantages of a modern language to the Android platform without introducing any new restrictions:

Compatibility: Kotlin is fully compatible with JDK 6, ensuring that Kotlin applications can run on older Android devices with no issues. The Kotlin tooling is fully supported in Android Studio and compatible with the Android build system.
Performance: A Kotlin application runs as fast as an equivalent Java one, thanks to very similar bytecode structure. With Kotlin's support for inline functions, code using lambdas often runs even faster than the same code written in Java.
Interoperability: Kotlin is 100% interoperable with Java, allowing to use all existing Android libraries in a Kotlin application. This includes annotation processing, so data binding and Dagger work too.
Footprint: Kotlin has a very compact runtime library, which can be further reduced through the use of ProGuard. In a real application, the Kotlin runtime adds only a few hundred methods and less than 100K to the size of the .apk file.
Compilation Time: Kotlin supports efficient incremental compilation, so while there's some additional overhead for clean builds, incremental builds are usually as fast or faster than with Java.
Learning Curve: For a Java developer, getting started with Kotlin is very easy. The automated Java to Kotlin converter included in the Kotlin plugin helps with the first steps. Kotlin Koans offer a guide through the key features of the language with a series of interactive exercises.''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String gettingStartedOne = '''
# Basic Syntax
## Defining packages
Package specification should be at the top of the source file:

```
package my.demo

import java.util.*
```

// ...

It is not required to match directories and packages: source files can be placed arbitrarily in the file system.

## Defining functions
Function having two Int parameters with Int return type:


```
fun sum(a: Int, b: Int): Int {
    return a + b`
}
```

```
fun main(args: Array<String>) {
    print("sum of 3 and 5 is ")
    println(sum(3, 5))
}
```

Function with an expression body and inferred return type:

```
fun sum(a: Int, b: Int) = a + b
```

```
fun main(args: Array<String>) {
    println("sum of 19 and 23 is \${sum(19, 23)}")  
}
```

Function returning no meaningful value:

```
fun printSum(a: Int, b: Int): Unit {
    println("sum of \$a and \$b is \${a + b}")
}
```

```
fun main(args: Array<String>) {
    printSum(-1, 8)
}
```

Unit return type can be omitted:

```
fun printSum(a: Int, b: Int) {
    println("sum of \$a and \$b is \${a + b}")
}
```

```
fun main(args: Array<String>) {
    printSum(-1, 8)
}
```

## Defining local variables
Assign-once (read-only) local variable:

```
fun main(args: Array<String>) {
    val a: Int = 1  // immediate assignment
    val b = 2   // Int type is inferred
    val c: Int  // Type required when no initializer is provided
    c = 3       // deferred assignment

    println("a = \$a, b = \$b, c = \$c")
}
```

Mutable variable:

```
fun main(args: Array<String>) {
    var x = 5 // `Int` type is inferred
    x += 1
    
    println("x = \$x")
}
```

## Comments
Just like Java and JavaScript, Kotlin supports end-of-line and block comments.

```
// This is an end-of-line comment
```

```
/* This is a block comment
   on multiple lines. */
```
   
Unlike Java, block comments in Kotlin can be nested.

## Using string templates
```
fun main(args: Array<String>) {
    var a = 1
    
    // simple name in template:
    val s1 = "a is \$a"

    a = 2
    // arbitrary expression in template:
    
    val s2 = "\${s1.replace("is", "was")}, but now is \$a"

    println(s2)
}
```

## Using conditional expressions

```
fun maxOf(a: Int, b: Int): Int {
    if (a > b) {
        return a
    } else {
        return b
    }
}
```

```
fun main(args: Array<String>) {
    println("max of 0 and 42 is \${maxOf(0, 42)}")
}
```

Using if as an expression:

```
fun maxOf(a: Int, b: Int) = if (a > b) a else b
```

```
fun main(args: Array<String>) {
    println("max of 0 and 42 is \${maxOf(0, 42)}")
}
```

## Using nullable values and checking for null
A reference must be explicitly marked as nullable when null value is possible.

Return null if str does not hold an integer:

```
fun parseInt(str: String): Int? {
    // ...
}
```

Use a function returning nullable value:

```
fun parseInt(str: String): Int? {
    return str.toIntOrNull()
}
```

```
fun printProduct(arg1: String, arg2: String) {
    val x = parseInt(arg1)
    val y = parseInt(arg2)

    // Using `x * y` yields error because they may hold nulls.
    if (x != null && y != null) {
        // x and y are automatically cast to non-nullable after null check
        println(x * y)
    }
    else {
        println("either '\$arg1' or '\$arg2' is not a number")
    }
}
```

```
fun main(args: Array<String>) {
    printProduct("6", "7")
    printProduct("a", "7")
    printProduct("a", "b")
}
```

or

```
fun parseInt(str: String): Int? {
    return str.toIntOrNull()
}
```

```
fun printProduct(arg1: String, arg2: String) {
    val x = parseInt(arg1)
    val y = parseInt(arg2)

    // ...
    if (x == null) {
        println("Wrong number format in arg1: '\${arg1}'")
        return
    }
    if (y == null) {
        println("Wrong number format in arg2: '\${arg2}'")
        return
    }

    // x and y are automatically cast to non-nullable after null check
    println(x * y)
}
```

```
fun main(args: Array<String>) {
    printProduct("6", "7")
    printProduct("a", "7")
    printProduct("99", "b")
}

```

## Using type checks and automatic casts
The is operator checks if an expression is an instance of a type. If an immutable local variable or property is checked for a specific type, there's no need to cast it explicitly:

```
fun getStringLength(obj: Any): Int? {
    if (obj is String) {
        // `obj` is automatically cast to `String` in this branch
        return obj.length
    }

    // `obj` is still of type `Any` outside of the type-checked branch
    return null
}
```

```
fun main(args: Array<String>) {
    fun printLength(obj: Any) {
        println("'\$obj' string length is \${getStringLength(obj) ?: "... err, not a string"} ")
    }
    printLength("Incomprehensibility")
    printLength(1000)
    printLength(listOf(Any()))
}
```

or

```
fun getStringLength(obj: Any): Int? {
    if (obj !is String) return null

    // `obj` is automatically cast to `String` in this branch
    return obj.length
}
```

```
fun main(args: Array<String>) {
    fun printLength(obj: Any) {
        println("'\$obj' string length is \${getStringLength(obj) ?: "... err, not a string"} ")
    }
    printLength("Incomprehensibility")
    printLength(1000)
    printLength(listOf(Any()))
}
```

or even

```
fun getStringLength(obj: Any): Int? {
    // `obj` is automatically cast to `String` on the right-hand side of `&&`
    if (obj is String && obj.length > 0) {
        return obj.length
    }

    return null
}
```

```
fun main(args: Array<String>) {
    fun printLength(obj: Any) {
        println("'\$obj' string length is \${getStringLength(obj) ?: "... err, is empty or not a string at all"} ")
    }
    printLength("Incomprehensibilities")
    printLength("")
    printLength(1000)
}
```

## Using a for loop

```
fun main(args: Array<String>) {
    val items = listOf("apple", "banana", "kiwi")
    for (item in items) {
        println(item)
    }
}
```

or

```
fun main(args: Array<String>) {
    val items = listOf("apple", "banana", "kiwi")
    for (index in items.indices) {
        println("item at \$index is \${items[index]}")
    }
}
```

## Using a while loop

```
fun main(args: Array<String>) {
    val items = listOf("apple", "banana", "kiwi")
    var index = 0
    while (index < items.size) {
        println("item at \$index is \${items[index]}")
        index++
    }
}
```

## Using when expression

```
fun describe(obj: Any): String =
    when (obj) {
        1          -> "One"
        "Hello"    -> "Greeting"
        is Long    -> "Long"
        !is String -> "Not a string"
        else       -> "Unknown"
    }
```

```
fun main(args: Array<String>) {
    println(describe(1))
    println(describe("Hello"))
    println(describe(1000L))
    println(describe(2))
    println(describe("other"))
}
```

## Using ranges
Check if a number is within a range using in operator:

```
fun main(args: Array<String>) {
    val x = 10
    val y = 9
    if (x in 1..y+1) {
        println("fits in range")
    }
}
```

Check if a number is out of range:

```
fun main(args: Array<String>) {
    val list = listOf("a", "b", "c")

    if (-1 !in 0..list.lastIndex) {
        println("-1 is out of range")
    }
    if (list.size !in list.indices) {
        println("list size is out of valid list indices range too")
    }
}
```

Iterating over a range:

```
fun main(args: Array<String>) {
    for (x in 1..5) {
        print(x)
    }
}
```

or over a progression:

```
fun main(args: Array<String>) {
    for (x in 1..10 step 2) {
        print(x)
    }
    for (x in 9 downTo 0 step 3) {
        print(x)
    }
}
```

## Using collections
Iterating over a collection:

```
fun main(args: Array<String>) {
    val items = listOf("apple", "banana", "kiwi")
    
    for (item in items) {
        println(item)
    }
}
```

Checking if a collection contains an object using in operator:

```
fun main(args: Array<String>) {
    val items = setOf("apple", "banana", "kiwi")

    when {
        "orange" in items -> println("juicy")
        "apple" in items -> println("apple is fine too")
    }

}
```

Using lambda expressions to filter and map collections:

```
fun main(args: Array<String>) {
    val fruits = listOf("banana", "avocado", "apple", "kiwi")

    fruits
        .filter { it.startsWith("a") }
        .sortedBy { it }
        .map { it.toUpperCase() }
        .forEach { println(it) }

}
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String gettingStartedTwo = '''
# Idioms
A collection of random and frequently used idioms in Kotlin. If you have a favorite idiom, contribute it by sending a pull request.

## Creating DTOs (POJOs/POCOs)

```
data class Customer(val name: String, val email: String)
```

provides a Customer class with the following functionality:

- getters (and setters in case of vars) for all properties
- equals()
- hashCode()
- toString()
- copy()
- component1(), component2(), …, for all properties

## Default values for function parameters

```
fun foo(a: Int = 0, b: String = "") { ... }
```

## Filtering a list

```
val positives = list.filter { x -> x > 0 }
```

Or alternatively, even shorter:

```
val positives = list.filter { it > 0 }
```

## String Interpolation

```
println("Name \$name")
```

## Instance Checks

```
when (x) {
    is Foo -> ...
    is Bar -> ...
    else   -> ...
}
```

Traversing a map/list of pairs

```
for ((k, v) in map) {
    println("\$k -> \$v")
}
```
k, v can be called anything.

## Using ranges

```
for (i in 1..100) { ... }  // closed range: includes 100
for (i in 1 until 100) { ... } // half-open range: does not include 100
for (x in 2..10 step 2) { ... }
for (x in 10 downTo 1) { ... }
if (x in 1..10) { ... }
```

## Read-only list


```
val list = listOf("a", "b", "c")
```

## Read-only map

```
val map = mapOf("a" to 1, "b" to 2, "c" to 3)
```

## Accessing a map

```
println(map["key"])
map["key"] = value
```

## Lazy property

```
val p: String by lazy {
    // compute the string
}
```

## Extension Functions

```
fun String.spaceToCamelCase() { ... }

"Convert this to camelcase".spaceToCamelCase()
```

## Creating a singleton

```
object Resource {
    val name = "Name"
}
```

## If not null shorthand

```
val files = File("Test").listFiles()

println(files?.size)
```

## If not null and else shorthand

```
val files = File("Test").listFiles()

println(files?.size ?: "empty")
```

## Executing a statement if null

```
val data = ...
val email = data["email"] ?: throw IllegalStateException("Email is missing!")
```

## Execute if not null

```
val data = ...

data?.let {
    ... // execute this block if not null
}
```

## Return on when statement

```
fun transform(color: String): Int {
    return when (color) {
        "Red" -> 0
        "Green" -> 1
        "Blue" -> 2
        else -> throw IllegalArgumentException("Invalid color param value")
    }
}
```

## 'try/catch' expression

```
fun test() {
    val result = try {
        count()
    } catch (e: ArithmeticException) {
        throw IllegalStateException(e)
    }

    // Working with result
}
```

## 'if' expression

```
fun foo(param: Int) {
    val result = if (param == 1) {
        "one"
    } else if (param == 2) {
        "two"
    } else {
        "three"
    }
}
```

## Builder-style usage of methods that return Unit

```
fun arrayOfMinusOnes(size: Int): IntArray {
    return IntArray(size).apply { fill(-1) }
}
```

## Single-expression functions

```
fun theAnswer() = 42
This is equivalent to

fun theAnswer(): Int {
    return 42
}
```

This can be effectively combined with other idioms, leading to shorter code. E.g. with the when-expression:

```
fun transform(color: String): Int = when (color) {
    "Red" -> 0
    "Green" -> 1
    "Blue" -> 2
    else -> throw IllegalArgumentException("Invalid color param value")
}
```

## Calling multiple methods on an object instance ('with')

```
class Turtle {
    fun penDown()
    fun penUp()
    fun turn(degrees: Double)
    fun forward(pixels: Double)
}

val myTurtle = Turtle()
with(myTurtle) { //draw a 100 pix square
    penDown()
    for(i in 1..4) {
        forward(100.0)
        turn(90.0)
    }
    penUp()
}
```

## Java 7's try with resources

```
val stream = Files.newInputStream(Paths.get("/some/file.txt"))
stream.buffered().reader().use { reader ->
    println(reader.readText())
}
```

## Convenient form for a generic function that requires the generic type information

```
//  public final class Gson {
//     ...
//     public <T> T fromJson(JsonElement json, Class<T> classOfT) throws JsonSyntaxException {
//     ...

inline fun <reified T: Any> Gson.fromJson(json): T = this.fromJson(json, T::class.java)
```

## Consuming a nullable Boolean

```
val b: Boolean? = ...
if (b == true) {
    ...
} else {
    // `b` is false or null
}
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String gettingStartedThree = '''
# Coding Conventions

This page contains the current coding style for the Kotlin language.

## Naming Style
If in doubt, default to the Java Coding Conventions such as:

- use of camelCase for names (and avoid underscore in names)
- types start with upper case
- methods and properties start with lower case
- use 4 space indentation
- public functions should have documentation such that it appears in Kotlin Doc

## Colon

There is a space before colon where colon separates type and supertype and there's no space where colon separates instance and type:

```
interface Foo<out T : Any> : Bar {
    fun foo(a: Int): T
}
```

## Lambdas

In lambda expressions, spaces should be used around the curly braces, as well as around the arrow which separates the parameters from the body. Whenever possible, a lambda should be passed outside of parentheses.

```
list.filter { it > 10 }.map { element -> element * 2 }
```

In lambdas which are short and not nested, it's recommended to use the it convention instead of declaring the parameter explicitly. In nested lambdas with parameters, parameters should be always declared explicitly.

## Class header formatting

Classes with a few arguments can be written in a single line:

```
class Person(id: Int, name: String)
```

Classes with longer headers should be formatted so that each primary constructor argument is in a separate line with indentation. Also, the closing parenthesis should be on a new line. If we use inheritance, then the superclass constructor call or list of implemented interfaces should be located on the same line as the parenthesis:

```
class Person(
    id: Int,
    name: String,
    surname: String
) : Human(id, name) {
    // ...
}
```

For multiple interfaces, the superclass constructor call should be located first and then each interface should be located in a different line:

```
class Person(
    id: Int,
    name: String,
    surname: String
) : Human(id, name),
    KotlinMaker {
    // ...
}
```

Constructor parameters can use either the regular indent or the continuation indent (double the regular indent).

## Unit

If a function returns Unit, the return type should be omitted:

```
fun foo() { // ": Unit" is omitted here

}
```

## Functions vs Properties

In some cases functions with no arguments might be interchangeable with read-only properties. Although the semantics are similar, there are some stylistic conventions on when to prefer one to another.

Prefer a property over a function when the underlying algorithm:

- does not throw
- has a O(1) complexity
- is cheap to calculate (or cached on the first run)
- returns the same result over invocations
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String basicsOne = '''
# Basic Types

In Kotlin, everything is an object in the sense that we can call member functions and properties on any variable. Some types are built-in, because their implementation is optimized, but to the user they look like ordinary classes.

## Numbers

**Kotlin** handles numbers in a way close to **Java**, but not exactly the same.

Kotlin provides the following built-in types representing numbers (this is close to Java):

| Type	  | Bit width |
| :-----: | :-----:   |
| Double	| 64        |
| Float	  | 32        |
| Long	  | 64        |
| Int	    | 32        |
| Short	  | 16        |
| Byte	  | 8         |

**Note that characters are not numbers in Kotlin.**

## Characters

Characters are represented by the type **Char**. They can not be treated directly as numbers

```
fun check(c: Char) {
    if (c == 1) { // ERROR: incompatible types
    // ...
    }
    }
```

## Booleans

The type Boolean represents booleans, and has two values: **true** and **false**.

## Arrays

Arrays in Kotlin are represented by the **Array class**, that has **get** and **set** functions (that turn into [] by operator overloading conventions), and size property, along with a few other useful member functions:

```
class Array private constructor() {
    val size: Int
    operator fun get(index: Int): T
    operator fun set(index: Int, value: T): Unit

    operator fun iterator(): Iterator
        // ...
        }
```

## Strings

Strings are represented by the type String. Strings are immutable. Elements of a string are characters that can be accessed by the indexing operation: s[i]. A string can be iterated over with a for-loop:

```
for (c in str) {
    println(c)
    }
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String basicsTwo = '''
# Control Flow

## If Expression

In Kotlin, if is an expression, i.e. it returns a value. Therefore there is no ternary operator (condition ? then : else), because ordinary if works fine in this role.

```
// Traditional usage
var max = a
if (a < b) max = b

// With else
var max: Int
if (a > b) {
    max = a
} else {
    max = b
}

// As expression
val max = if (a > b) a else b
```

*if* branches can be blocks, and the last expression is the value of a block:

```
val max = if (a > b) {
    print("Choose a")
    a
} else {
    print("Choose b")
    b
}
```

If you're using if as an expression rather than a statement (for example, returning its value or assigning it to a variable), the expression is required to have an else branch.

## When Expression

when replaces the switch operator of C-like languages. In the simplest form it looks like this

```
when (x) {
    1 -> print("x == 1")
    2 -> print("x == 2")
    else -> { // Note the block
        print("x is neither 1 nor 2")
    }
}
```

*when* matches its argument against all branches sequentially until some branch condition is satisfied. when can be used either as an expression or as a statement. If it is used as an expression, the value of the satisfied branch becomes the value of the overall expression. If it is used as a statement, the values of individual branches are ignored. (Just like with if, each branch can be a block, and its value is the value of the last expression in the block.)

The else branch is evaluated if none of the other branch conditions are satisfied. If when is used as an expression, the else branch is mandatory, unless the compiler can prove that all possible cases are covered with branch conditions.

If many cases should be handled in the same way, the branch conditions may be combined with a comma:

```
when (x) {
    0, 1 -> print("x == 0 or x == 1")
    else -> print("otherwise")
}
```

We can use arbitrary expressions (not only constants) as branch conditions

```
when (x) {
    parseInt(s) -> print("s encodes x")
    else -> print("s does not encode x")
}
```

We can also check a value for being in or !in a **range** or a collection:

```
when (x) {
    in 1..10 -> print("x is in the range")
    in validNumbers -> print("x is valid")
    !in 10..20 -> print("x is outside the range")
    else -> print("none of the above")
}
```

Another possibility is to check that a value is or !is of a particular type. Note that, due to **smart casts**, you can access the methods and properties of the type without any extra checks.

```
fun hasPrefix(x: Any) = when(x) {
    is String -> x.startsWith("prefix")
    else -> false
}
```

when can also be used as a replacement for an if-else if chain. If no argument is supplied, the branch conditions are simply boolean expressions, and a branch is executed when its condition is true:

```
when {
    x.isOdd() -> print("x is odd")
    x.isEven() -> print("x is even")
    else -> print("x is funny")
}
```

## For Loops

for loop iterates through anything that provides an iterator. The syntax is as follows:

```
for (item in collection) print(item)
```

The body can be a block.

```
for (item: Int in ints) {
    // ...
}
```

As mentioned before, for iterates through anything that provides an iterator, i.e.

- has a member- or extension-function iterator(), whose return type
-- has a member- or extension-function next(), and
-- has a member- or extension-function hasNext() that returns Boolean.

All of these three functions need to be marked as operator.

A **for** loop over an array is compiled to an index-based loop that does not create an iterator object.

If you want to iterate through an array or a list with an index, you can do it this way:

```
for (i in array.indices) {
    print(array[i])
}
```

Note that this "iteration through a range" is compiled down to optimal implementation with no extra objects created.

Alternatively, you can use the withIndex library function:

```
for ((index, value) in array.withIndex()) {
    println("the element at \$index is \$value")
}
```

## While Loops

*while* and *do*..while work as usual

```
while (x > 0) {
    x--
}

do {
    val y = retrieveData()
} while (y != null) // y is visible here!
```

## Break and continue in loops

Kotlin supports traditional break and continue operators in loops.


''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String basicsThree = '''
# Returns and jump

Kotlin has three structural jump expressions:
- return. By default returns from the nearest enclosing function or anonymous function.
- break. Terminates the nearest enclosing loop.
- continue. Proceeds to the next step of the nearest enclosing loop.

All of these expressions can be used as part of larger expressions:

```
val s = person.name ?: return
```

The type of these expressions is the **Nothing type**.

## Break and Continue Labels

Any expression in Kotlin may be marked with a label. Labels have the form of an identifier followed by the @ sign, for example: abc@, fooBar@ are valid labels. To label an expression, we just put a label in front of it

```
loop@ for (i in 1..100) {
    // ...
}
```

Now, we can qualify a break or a continue with a label:

```
loop@ for (i in 1..100) {
    for (j in 1..100) {
        if (...) break@loop
    }
}
```

A *break* qualified with a label jumps to the execution point right after the loop marked with that label. A continue proceeds to the next iteration of that loop.

## Return at Labels

With function literals, local functions and object expression, functions can be nested in Kotlin. Qualified returns allow us to return from an outer function. The most important use case is returning from a lambda expression. Recall that when we write this:

```
fun foo() {
    ints.forEach {
        if (it == 0) return
        print(it)
    }
}
```

The return-expression returns from the nearest enclosing function, i.e. foo. (Note that such non-local returns are supported only for lambda expressions passed to **inline functions**.) If we need to return from a lambda expression, we have to label it and qualify the return:

```
fun foo() {
    ints.forEach lit@ {
        if (it == 0) return@lit
        print(it)
    }
}
```

Now, it returns only from the lambda expression. Oftentimes it is more convenient to use implicits labels: such a label has the same name as the function to which the lambda is passed.

```
fun foo() {
    ints.forEach {
        if (it == 0) return@forEach
        print(it)
    }
}
```

Alternatively, we can replace the lambda expression with an **anonymous function**. A *return* statement in an anonymous function will return from the anonymous function itself.

```
fun foo() {
    ints.forEach(fun(value: Int) {
        if (value == 0) return
        print(value)
    })
}
```

When returning a value, the parser gives preference to the qualified return, i.e.

```
return@a 1
```

means "return **1** at label **@a**" and not "return a labeled expression (**@a 1**)".
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsOne = '''
# Classes

Classes in Kotlin are declared using the keyword class:

```
class Invoice {
    }
```

## Constructors

A class in Kotlin can have a **primary constructor** and one or more **secondary constructors**.

```
class Person constructor(firstName: String) {
    }
```

## Secondary Constructors

The class can also declare **secondary constructors**, which are prefixed with constructor:

```
class Person {
    constructor(parent: Person) {
    parent.children.add(this)
    }
}
```

## Creating instances of classes

To create an instance of a class, we call the constructor as if it were a regular function:

```
 val invoice = Invoice()

    val customer = Customer("Joe Smith")
```

**Note: that Kotlin does not have a new keyword**.

## Inheritance

All classes in Kotlin have a common superclass **Any**, that is a default super for a class with no supertypes declared:

```
 class Example // Implicitly inherits from Any
```

**Any** is not *java.lang.Object*; in particular, it does not have any members other than *equals(), hashCode() and toString()*.

To declare an explicit supertype, we place the type after a colon in the class header:

```
open class Base(p: Int)

    class Derived(p: Int) : Base(p)
```

## Overriding Methods

Kotlin requires explicit annotations for overridable members (we call them open) and for overrides:

```
open class Base {
    open fun v() {}
    fun nv() {}
}
    class Derived() : Base() {
    override fun v() {}
    }
```

The override annotation is required for **Derived.v**(). If it were missing, the compiler would complain.

## Abstract Classes

A class and some of its members may be declared abstract. An abstract member does not have an implementation in its class.

We can override a non-abstract open member with an abstract one

```
open class Base {
    open fun f() {}
    }

    abstract class Derived : Base() {
    override abstract fun f()
    }
// ```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsTwo = '''
# Properties and fields

## Declaring Properties

Classes in Kotlin can have properties. These can be declared as mutable, using the var keyword or read-only using the val keyword.

```
class Address {
    var name: String = ...
    var street: String = ...
    var city: String = ...
    var state: String? = ...
    var zip: String = ...
}
```

To use a property, we simply refer to it by name, as if it were a field in Java:

```
fun copyAddress(address: Address): Address {
    val result = Address() // there's no 'new' keyword in Kotlin
    result.name = address.name // accessors are called
    result.street = address.street
    // ...
    return result
}
```

## Getters and Setters

The full syntax for declaring a property is

```
var <propertyName>[: <PropertyType>] [= <property_initializer>]
    [<getter>]
    [<setter>]
```

The initializer, getter and setter are optional. Property type is optional if it can be inferred from the initializer (or from the getter return type, as shown below).

Examples:

```
var allByDefault: Int? // error: explicit initializer required, default getter and setter implied
var initialized = 1 // has type Int, default getter and setter
```

The full syntax of a read-only property declaration differs from a mutable one in two ways: it starts with **val** instead of **var** and does not allow a setter:

```
val simple: Int? // has type Int, default getter, must be initialized in constructor
val inferredType = 1 // has type Int and a default getter
```

We can write custom accessors, very much like ordinary functions, right inside a property declaration. Here's an example of a custom getter:

```
val isEmpty: Boolean
    get() = this.size == 0
```

A custom setter looks like this:

```
var stringRepresentation: String
    get() = this.toString()
    set(value) {
        setDataFromString(value) // parses the string and assigns values to other properties
    }
```

By convention, the name of the setter parameter is value, but you can choose a different name if you prefer.

Since Kotlin 1.1, you can omit the property type if it can be inferred from the getter:

```
val isEmpty get() = this.size == 0  // has type Boolean
```

If you need to change the visibility of an accessor or to annotate it, but don't need to change the default implementation, you can define the accessor without defining its body:

```
var setterVisibility: String = "abc"
    private set // the setter is private and has the default implementation

var setterWithAnnotation: Any? = null
    @Inject set // annotate the setter with Inject
```

## Backing Fields

Classes in Kotlin cannot have fields. However, sometimes it is necessary to have a backing field when using custom accessors. For these purposes, Kotlin provides an automatic backing field which can be accessed using the field identifier:

```
var counter = 0 // the initializer value is written directly to the backing field
    set(value) {
        if (value >= 0) field = value
    }
```

The **field** identifier can only be used in the accessors of the property.

A backing field will be generated for a property if it uses the default implementation of at least one of the accessors, or if a custom accessor references it through the field identifier.

For example, in the following case there will be no backing field:

```
val isEmpty: Boolean
    get() = this.size == 0
```

## Backing Properties

If you want to do something that does not fit into this "implicit backing field" scheme, you can always fall back to having a backing property:

```
private var _table: Map<String, Int>? = null
public val table: Map<String, Int>
    get() {
        if (_table == null) {
            _table = HashMap() // Type parameters are inferred
        }
        return _table ?: throw AssertionError("Set to null by another thread")
    }
```

In all respects, this is just the same as in Java since access to private properties with default getters and setters is optimized so that no function call overhead is introduced.

## Compile-Time Constants

Properties the value of which is known at compile time can be marked as compile time constants using the const modifier. Such properties need to fulfil the following requirements:

- Top-level or member of an object
- Initialized with a value of type String or a primitive type
- No custom getter

Such properties can be used in annotations:

```
const val SUBSYSTEM_DEPRECATED: String = "This subsystem is deprecated"

@Deprecated(SUBSYSTEM_DEPRECATED) fun foo() { ... }
```

## Late-Initialized Properties

Normally, properties declared as having a non-null type must be initialized in the constructor. However, fairly often this is not convenient. For example, properties can be initialized through dependency injection, or in the setup method of a unit test. In this case, you cannot supply a non-null initializer in the constructor, but you still want to avoid null checks when referencing the property inside the body of a class.

To handle this case, you can mark the property with the **lateinit** modifier:

```
public class MyTest {
    lateinit var subject: TestSubject

    @SetUp fun setup() {
        subject = TestSubject()
    }

    @Test fun test() {
        subject.method()  // dereference directly
    }
}
```

The modifier can only be used on var properties declared inside the body of a class (not in the primary constructor), and only when the property does not have a custom getter or setter. The type of the property must be non-null, and it must not be a primitive type.

Accessing a lateinit property before it has been initialized throws a special exception that clearly identifies the property being accessed and the fact that it hasn't been initialized.

## Delegated Properties

The most common kind of properties simply reads from (and maybe writes to) a backing field. On the other hand, with custom getters and setters one can implement any behaviour of a property. Somewhere in between, there are certain common patterns of how a property may work. A few examples: lazy values, reading from a map by a given key, accessing a database, notifying listener on access, etc.

Such common behaviours can be implemented as libraries using **delegated properties**.
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsThree = '''
# Interfaces

Interfaces in Kotlin are very similar to Java 8.

An interface is defined using the keyword **interface**

```
interface MyInterface {
    fun bar()
    fun foo() {
    // optional body
    }
}
```

## Implementing Interfaces

A class or object can implement one or more interfaces

```
class Child : MyInterface {
    override fun bar() {
    // body
    }
}
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsFour = '''
# Data Classes

We frequently create a class to do nothing but hold data. In such a class some standard functionality is often mechanically derivable from the data. In Kotlin, this is called a data class and is marked as **data**:

```
data class User(val name: String, val age: Int)
```

The compiler automatically derives the following members from all properties declared in the primary constructor:

- equals()/hashCode() pair,
- toString() of the form "User(name=John, age=42)",
- **componentN() functions** corresponding to the properties in their order of declaration,
- copy() function (see below).

If any of these functions is explicitly defined in the class body or inherited from the base types, it will not be generated.

To ensure consistency and meaningful behavior of the generated code, data classes have to fulfil the following requirements:

- The primary constructor needs to have at least one parameter;
- All primary constructor parameters need to be marked as val or var;
- Data classes cannot be abstract, open, sealed or inner;
- (before 1.1) Data classes may only implement interfaces.

Since 1.1, data classes may extend other classes .

On the JVM, if the generated class needs to have a parameterless constructor, default values for all properties have to be specified.

```
data class User(val name: String = "", val age: Int = 0)
```

## Copying

It's often the case that we need to copy an object altering some of its properties, but keeping the rest unchanged. This is what **copy()** function is generated for. For the User class above, its implementation would be as follows:

```
fun copy(name: String = this.name, age: Int = this.age) = User(name, age)
```

This allows us to write

```
val jack = User(name = "Jack", age = 1)
val olderJack = jack.copy(age = 2)
```

## Data Classes and Destructuring Declarations

Component functions generated for data classes enable their use in **destructuring declarations**:

```
val jane = User("Jane", 35)
val (name, age) = jane
println("\$name, \$age years of age") // prints "Jane, 35 years of age"
```

## Standard Data Classes

The standard library provides Pair and Triple. In most cases, though, named data classes are a better design choice, because they make the code more readable by providing meaningful names for properties.




''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsFive = '''
# Sealed Classes

Sealed classes are used for representing restricted class hierarchies, when a value can have one of the types from a limited set, but cannot have any other type. They are, in a sense, an extension of enum classes: the set of values for an enum type is also restricted, but each enum constant exists only as a single instance, whereas a subclass of a sealed class can have multiple instances which can contain state.

To declare a sealed class, you put the sealed modifier before the name of the class. A sealed class can have subclasses, but all of them must be declared in the same file as the sealed class itself. (Before Kotlin 1.1, the rules were even more strict: classes had to be nested inside the declaration of the sealed class).

```
sealed class Expr
data class Const(val number: Double) : Expr()
data class Sum(val e1: Expr, val e2: Expr) : Expr()
object NotANumber : Expr()

fun eval(expr: Expr): Double = when (expr) {
    is Const -> expr.number
    is Sum -> eval(expr.e1) + eval(expr.e2)
    NotANumber -> Double.NaN
}
```

(The example above uses one additional new feature of Kotlin 1.1: the possibility for data classes to extend other classes, including sealed classes.)

Note that classes which extend subclasses of a sealed class (indirect inheritors) can be placed anywhere, not necessarily in the same file.

The key benefit of using sealed classes comes into play when you use them in a **when expression**. If it's possible to verify that the statement covers all cases, you don't need to add an **else** clause to the statement.

```
fun eval(expr: Expr): Double = when(expr) {
    is Expr.Const -> expr.number
    is Expr.Sum -> eval(expr.e1) + eval(expr.e2)
    Expr.NotANumber -> Double.NaN
    // the `else` clause is not required because we've covered all the cases
}
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsSix = '''
# Generics

As in Java, classes in Kotlin may have type parameters:

```
class Box(t: T) {
    var value = t
}
```

In general, to create an instance of such a class, we need to provide the type arguments:

```
val box: Box = Box(1)
```

But if the parameters may be inferred, e.g. from the constructor arguments or by some other means, one is allowed to omit the type arguments:

```
val box = Box(1) // 1 has type Int, so the compiler figures out that we are talking about Box
```

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsSeven = '''
# Nested Classes

Classes can be nested in other classes

```
class Outer {
    private val bar: Int = 1
    class Nested {
    fun foo() = 2
    }
}

    val demo = Outer.Nested().foo() // == 2
```

## Inner classes

A class may be marked as inner to be able to access members of outer class. Inner classes carry a reference to an object of an outer class:

```
class Outer {
    private val bar: Int = 1
    inner class Inner {
    fun foo() = bar
    }
}

    val demo = Outer().Inner().foo() // == 1 
```

## Anonymous inner classes

Anonymous inner class instances are created using an object expression:

```
window.addMouseListener(object: MouseAdapter() {
    override fun mouseClicked(e: MouseEvent) {
    // ...
    }

    override fun mouseEntered(e: MouseEvent) {
    // ...
    }
})
``` 
If the object is an instance of a functional Java interface (i.e. a Java interface with a single abstract method), you can create it using a lambda expression prefixed with the type of the interface:

```
 val listener = ActionListener { println("clicked") }
```

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsEight = '''
# Enum Classes

The most basic usage of enum classes is implementing type-safe enums

```
enum class Direction {
    NORTH, SOUTH, WEST, EAST
    }
```

Each enum constant is an object. Enum constants are separated with commas.

## Initialization

Since each enum is an instance of the enum class, they can be initialized

```
 enum class Color(val rgb: Int) {
    RED(0xFF0000),
    GREEN(0x00FF00),
    BLUE(0x0000FF)
    }
```

## Anonymous Classes
Enum constants can also declare their own anonymous classes

```
enum class ProtocolState {
    WAITING {
    override fun signal() = TALKING
    },

    TALKING {
    override fun signal() = WAITING
    };

    abstract fun signal(): ProtocolState
    }
```

with their corresponding methods, as well as overriding base methods. Note that if the enum class defines any members, you need to separate the enum constant definitions from the member definitions with a semicolon, just like in Java.


''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsNine = '''
# Delegation

## Class Delegation
The **Delegation pattern** has proven to be a good alternative to implementation inheritance, and Kotlin supports it natively requiring zero boilerplate code. A class Derived can inherit from an interface Base and delegate all of its public methods to a specified object:

```
interface Base {
    fun print()
}

class BaseImpl(val x: Int) : Base {
    override fun print() { print(x) }
}

class Derived(b: Base) : Base by b

fun main(args: Array<String>) {
    val b = BaseImpl(10)
    Derived(b).print() // prints 10
}
```

The by-clause in the supertype list for Derived indicates that b will be stored internally in objects of Derived and the compiler will generate all the methods of Base that forward to b.
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String classesAndObjectsTen = '''
# Delegated Properties

There are certain common kinds of properties, that, though we can implement them manually every time we need them, would be very nice to implement once and for all, and put into a library. Examples include

- lazy properties: the value gets computed only upon first access,
- observable properties: listeners get notified about changes to this property,
- storing properties in a map, instead of a separate field for each property.

To cover these (and other) cases, Kotlin supports *delegated properties*:

```
class Example {
    var p: String by Delegate()
}
```

The syntax is: **val/var <property name>: <Type> by <expression>**. The expression after by is the delegate, because **get()** (and **set()**) corresponding to the property will be delegated to its **getValue()** and **setValue()** methods. Property delegates don’t have to implement any interface, but they have to provide a **getValue()** function (and **setValue()** — for *var's*). For example:

```
class Delegate {
    operator fun getValue(thisRef: Any?, property: KProperty<*>): String {
        return "\$thisRef, thank you for delegating '\${property.name}' to me!"
    }

    operator fun setValue(thisRef: Any?, property: KProperty<*>, value: String) {
        println("\$value has been assigned to '\${property.name} in \$thisRef.'")
    }
}
```

When we read from **p** that delegates to an instance of **Delegate**, the **getValue()** function from **Delegate** is called, so that its first parameter is the object we read p from and the second parameter holds a description of p itself (e.g. you can take its name). For example:

```
val e = Example()
println(e.p)
```

This prints

```
Example@33a17727, thank you for delegating ‘p’ to me!
```

Similarly, when we assign to **p**, the **setValue()** function is called. The first two parameters are the same, and the third holds the value being assigned:

```
e.p = "NEW"
```

This prints

```
NEW has been assigned to ‘p’ in Example@33a17727.
```

Note that since Kotlin 1.1 you can declare a delegated property inside a function or code block, it shouldn't necessarily be a member of a class.

## Standard Delegates

The Kotlin standard library provides factory methods for several useful kinds of delegates.

## Lazy

**lazy()** is a function that takes a lambda and returns an instance of **Lazy<T>** which can serve as a delegate for implementing a lazy property: the first call to **get()** executes the lambda passed to **lazy()** and remembers the result, subsequent calls to **get()** simply return the remembered result.

```
val lazyValue: String by lazy {
    println("computed!")
    "Hello"
}

fun main(args: Array<String>) {
    println(lazyValue)
    println(lazyValue)
}
```

This example prints:

```
computed!
Hello
Hello
```

By default, the evaluation of lazy properties is **synchronized**: the value is computed only in one thread, and all threads will see the same value. If the synchronization of initialization delegate is not required, so that multiple threads can execute it simultaneously, pass **LazyThreadSafetyMode.PUBLICATION** as a parameter to the **lazy()** function. And if you're sure that the initialization will always happen on a single thread, you can use **LazyThreadSafetyMode.NONE** mode, which doesn't incur any thread-safety guarantees and the related overhead.

## Observable

**Delegates.observable()** takes two arguments: the initial value and a handler for modifications. The handler gets called every time we assign to the property (after the assignment has been performed). It has three parameters: a property being assigned to, the old value and the new one:

```
import kotlin.properties.Delegates

class User {
    var name: String by Delegates.observable("<no name>") {
        prop, old, new ->
        println("\$old -> \$new")
    }
}

fun main(args: Array<String>) {
    val user = User()
    user.name = "first"
    user.name = "second"
}
```

This example prints:

```
<no name> -> first
first -> second
```

If you want to be able to intercept an assignment and "veto" it, use **vetoable()** instead of **observable()**. The handler passed to the vetoable is called before the assignment of a new property value has been performed.

## Storing Properties in a Map

One common use case is storing the values of properties in a map. This comes up often in applications like parsing JSON or doing other “dynamic” things. In this case, you can use the map instance itself as the delegate for a delegated property.

```
class User(val map: Map<String, Any?>) {
    val name: String by map
    val age: Int     by map
}
```

In this example, the constructor takes a map:

```
val user = User(mapOf(
    "name" to "John Doe",
    "age"  to 25
))
```

Delegated properties take values from this map (by the string keys –– names of properties):

```
println(user.name) // Prints "John Doe"
println(user.age)  // Prints 25
```

This works also for var’s properties if you use a **MutableMap** instead of read-only **Map**:

```
class MutableUser(val map: MutableMap<String, Any?>) {
    var name: String by map
    var age: Int     by map
}
```

## Local Delegated Properties (since 1.1)

You can declare local variables as delegated properties. For instance, you can make a local variable lazy:

```
fun example(computeFoo: () -> Foo) {
    val memoizedFoo by lazy(computeFoo)

    if (someCondition && memoizedFoo.isValid()) {
        memoizedFoo.doSomething()
    }
}
```

The **memoizedFoo** variable will be computed on the first access only. If **someCondition** fails, the variable won't be computed at all.

## Property Delegate Requirements

Here we summarize requirements to delegate objects.

For a **read-only** property (i.e. a val), a delegate has to provide a function named **getValue** that takes the following parameters:

- thisRef — must be the same or a supertype of the property owner (for extension properties — the type being extended),
- property — must be of type **KProperty<*>** or its supertype,

this function must return the same type as property (or its subtype).

For a **mutable** property (a var), a delegate has to additionally provide a function named **setValue** that takes the following parameters:

- thisRef — same as for **getValue()**,
- property — same as for **getValue()**,
- new value — must be of the same type as a property or its supertype.

**getValue()** and/or **setValue()** functions may be provided either as member functions of the delegate class or extension functions. The latter is handy when you need to delegate property to an object which doesn't originally provide these functions. Both of the functions need to be marked with the **operator** keyword.

The delegate class may implement one of the interfaces **ReadOnlyProperty** and **ReadWriteProperty** containing the required operator methods. These interfaces are declared in the Kotlin standard library:

```
interface ReadOnlyProperty<in R, out T> {
    operator fun getValue(thisRef: R, property: KProperty<*>): T
}

interface ReadWriteProperty<in R, T> {
    operator fun getValue(thisRef: R, property: KProperty<*>): T
    operator fun setValue(thisRef: R, property: KProperty<*>, value: T)
}
```

## Translation Rules

Under the hood for every delegated property the Kotlin compiler generates an auxiliary property and delegates to it. For instance, for the property prop the hidden property prop\$delegate is generated, and the code of the accessors simply delegates to this additional property:

```
class C {
    var prop: Type by MyDelegate()
}

// this code is generated by the compiler instead:
class C {
    private val prop\$delegate = MyDelegate()
    var prop: Type
        get() = prop\$delegate.getValue(this, this::prop)
        set(value: Type) = prop\$delegate.setValue(this, this::prop, value)
}
```

The Kotlin compiler provides all the necessary information about **prop** in the arguments: the first argument **this** refers to an instance of the outer class **C** and **this::prop** is a reflection object of the **KProperty** type describing prop itself.

Note that the syntax **this::prop** to refer a **bound callable reference** in the code directly is available only since Kotlin 1.1.

## Providing a delegate (since 1.1)

By defining the **provideDelegate** operator you can extend the logic of creating the object to which the property implementation is delegated. If the object used on the right hand side of **by** defines **provideDelegate** as a member or extension function, that function will be called to create the property delegate instance.

One of the possible use cases of **provideDelegate** is to check property consistency when the property is created, not only in its getter or setter.

For example, if you want to check the property name before binding, you can write something like this:

```
class ResourceLoader<T>(id: ResourceID<T>) {
    operator fun provideDelegate(
            thisRef: MyUI,
            prop: KProperty<*>
    ): ReadOnlyProperty<MyUI, T> {
        checkProperty(thisRef, prop.name)
        // create delegate
    }

    private fun checkProperty(thisRef: MyUI, name: String) { ... }
}

fun <T> bindResource(id: ResourceID<T>): ResourceLoader<T> { ... }

class MyUI {
    val image by bindResource(ResourceID.image_id)
    val text by bindResource(ResourceID.text_id)
}
```

The parameters of **provideDelegate** are the same as for **getValue*:

- **thisRef** — must be the same or a supertype of the property owner (for extension properties — the type being extended),
- **property** — must be of type **KProperty<*>** or its supertype.

The **provideDelegate** method is called for each property during the creation of the **MyUI** instance, and it performs the necessary validation right away.

Without this ability to intercept the binding between the property and its delegate, to achieve the same functionality you'd have to pass the property name explicitly, which isn't very convenient:

```
// Checking the property name without "provideDelegate" functionality
class MyUI {
    val image by bindResource(ResourceID.image_id, "image")
    val text by bindResource(ResourceID.text_id, "text")
}

fun <T> MyUI.bindResource(
        id: ResourceID<T>,
        propertyName: String
): ReadOnlyProperty<MyUI, T> {
   checkProperty(this, propertyName)
   // create delegate
}
```

In the generated code, the **provideDelegate** method is called to initialize the auxiliary **prop\$delegate** property. Compare the generated code for the property declaration **val prop: Type by MyDelegate()** with the generated code above (when the **provideDelegate** method is not present):

```
class C {
    var prop: Type by MyDelegate()
}

// this code is generated by the compiler
// when the 'provideDelegate' function is available:
class C {
    // calling "provideDelegate" to create the additional "delegate" property
    private val prop\$delegate = MyDelegate().provideDelegate(this, this::prop)
    val prop: Type
        get() = prop\$delegate.getValue(this, this::prop)
}
```

Note that the **provideDelegate** method affects only the creation of the auxiliary property and doesn't affect the code generated for getter or setter.

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String functionsAndLambdasOne = '''
# Functions

## Function Declarations

Functions in Kotlin are declared using the fun keyword

```
fun double(x: Int): Int {
}
```

## Function Usage

Calling functions uses the traditional approach

```
val result = double(2)
```

Calling member functions uses the dot notation

```
Sample().foo() // create instance of class Sample and calls foo
```

## Infix notation

Functions can also be called using infix notations when

- They are member functions or **extension functions**
- They have a single parameter
- They are marked with the *infix* keyword

```
// Define extension to Int
infix fun Int.shl(x: Int): Int {
...
}

// call extension function using infix notation

1 shl 2

// is the same as

1.shl(2)
```

## Parameters

Function parameters are defined using Pascal notation, i.e. name: type. Parameters are separated using commas. Each parameter must be explicitly typed.

```
fun powerOf(number: Int, exponent: Int) {
...
}
```

## Default Arguments

Function parameters can have default values, which are used when a corresponding argument is omitted. This allows for a reduced number of overloads compared to other languages.

```
fun read(b: Array<Byte>, off: Int = 0, len: Int = b.size()) {
...
}
```

Default values are defined using the = after type along with the value.

Overriding methods always use the same default parameter values as the base method. When overriding a method with default parameters values, the default parameter values must be omitted from the signature:

```
open class A {
    open fun foo(i: Int = 10) { ... }
}

class B : A() {
    override fun foo(i: Int) { ... }  // no default value allowed
}
```

## Named Arguments

Function parameters can be named when calling functions. This is very convenient when a function has a high number of parameters or default ones.

Given the following function

```
fun reformat(str: String,
             normalizeCase: Boolean = true,
             upperCaseFirstLetter: Boolean = true,
             divideByCamelHumps: Boolean = false,
             wordSeparator: Char = ' ') {
...
}
```

we could call this using default arguments

```
reformat(str)
```

However, when calling it with non-default, the call would look something like

```
reformat(str, true, true, false, '_')
```

With named arguments we can make the code much more readable

```
reformat(str,
    normalizeCase = true,
    upperCaseFirstLetter = true,
    divideByCamelHumps = false,
    wordSeparator = '_'
)
```

and if we do not need all arguments

```
reformat(str, wordSeparator = '_')
```

Note that the named argument syntax cannot be used when calling Java functions, because Java bytecode does not always preserve names of function parameters.

## Unit-returning functions

If a function does not return any useful value, its return type is Unit. Unit is a type with only one value - Unit. This value does not have to be returned explicitly

```
fun printHello(name: String?): Unit {
    if (name != null)
        println("Hello \${name}")
    else
        println("Hi there!")
    // `return Unit` or `return` is optional
}
```

The **Unit** return type declaration is also optional. The above code is equivalent to

```
fun printHello(name: String?) {
    ...
}
```

## Single-Expression functions

When a function returns a single expression, the curly braces can be omitted and the body is specified after a = symbol

```
fun double(x: Int): Int = x * 2
```

Explicitly declaring the return type is **optional** when this can be inferred by the compiler

```
fun double(x: Int) = x * 2
```

## Explicit return types
Functions with block body must always specify return types explicitly, unless it's intended for them to return **Unit**, *in which case it is optional*. Kotlin does not infer return types for functions with block bodies because such functions may have complex control flow in the body, and the return type will be non-obvious to the reader (and sometimes even for the compiler).

## Variable number of arguments (Varargs)

A parameter of a function (normally the last one) may be marked with **vararg** modifier:

```
fun <T> asList(vararg ts: T): List<T> {
    val result = ArrayList<T>()
    for (t in ts) // ts is an Array
        result.add(t)
    return result
}
```

allowing a variable number of arguments to be passed to the function:

```
val list = asList(1, 2, 3)
```

Inside a function a **vararg**-parameter of type **T** is visible as an array of **T** i.e. the ts variable in the example above has type **Array<out T>**.

Only one parameter may be marked as vararg. If a vararg parameter is not the last one in the list, values for the following parameters can be passed using the named argument syntax, or, if the parameter has a function type, by passing a lambda outside parentheses.

When we call a **vararg-function**, we can pass arguments one-by-one, e.g. **asList(1, 2, 3)**, or, if we already have an array and want to pass its contents to the function, we use the **spread** operator (prefix the array with *):

```
val a = arrayOf(1, 2, 3)
val list = asList(-1, 0, *a, 4)
```

## Function Scope

In Kotlin functions can be declared at top level in a file, meaning you do not need to create a class to hold a function, like languages such as Java, C# or Scala. In addition to top level functions, Kotlin functions can also be declared local, as member functions and extension functions.

## Local Functions

Kotlin supports local functions, i.e. a function inside another function

```
fun dfs(graph: Graph) {
    fun dfs(current: Vertex, visited: Set<Vertex>) {
        if (!visited.add(current)) return
        for (v in current.neighbors)
            dfs(v, visited)
    }

    dfs(graph.vertices[0], HashSet())
}
```

Local function can access local variables of outer functions (i.e. the closure), so in the case above, the visited can be a local variable

```
fun dfs(graph: Graph) {
    val visited = HashSet<Vertex>()
    fun dfs(current: Vertex) {
        if (!visited.add(current)) return
        for (v in current.neighbors)
            dfs(v)
    }

    dfs(graph.vertices[0])
}
```

## Member Functions

A member function is a function that is defined inside a class or object

```
class Sample() {
    fun foo() { print("Foo") }
}
```

Member functions are called with dot notation

```
Sample().foo() // creates instance of class Sample and calls foo
```

## Generic Functions

Functions can have generic parameters which are specified using angle brackets before the function name

```
fun <T> singletonList(item: T): List<T> {
    // ...
}
```

## Tail recursive functions

Kotlin supports a style of functional programming known as **tail recursion**. This allows some algorithms that would normally be written using loops to instead be written using a recursive function, but without the risk of stack overflow. When a function is marked with the tailrec modifier and meets the required form, the compiler optimises out the recursion, leaving behind a fast and efficient loop based version instead.

```
tailrec fun findFixPoint(x: Double = 1.0): Double
        = if (x == Math.cos(x)) x else findFixPoint(Math.cos(x))
```

This code calculates the fixpoint of cosine, which is a mathematical constant. It simply calls Math.cos repeatedly starting at 1.0 until the result doesn't change any more, yielding a result of 0.7390851332151607. The resulting code is equivalent to this more traditional style:

```
private fun findFixPoint(): Double {
    var x = 1.0
    while (true) {
        val y = Math.cos(x)
        if (x == y) return y
        x = y
    }
}
```

To be eligible for the tailrec modifier, a function must call itself as the last operation it performs. You cannot use tail recursion when there is more code after the recursive call, and you cannot use it within try/catch/finally blocks. Currently tail recursion is only supported in the JVM backend.

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String functionsAndLambdasTwo = '''
# Higher-Order Functions and Lambdas

## Higher-Order Functions

A higher-order function is a function that takes functions as parameters, or returns a function. A good example of such a function is **lock()** that takes a lock object and a function, acquires the lock, runs the function and releases the lock:

```
fun <T> lock(lock: Lock, body: () -> T): T {
    lock.lock()
    try {
        return body()
    }
    finally {
        lock.unlock()
    }
}
```

Let's examine the code above: **body** has a **function type:** () -> **T**, so it's supposed to be a function that takes no parameters and returns a value of type **T**. It is invoked inside the try-block, while protected by the **lock**, and its result is returned by the **lock()** function.

If we want to call **lock()**, we can pass another function to it as an argument.

```
fun toBeSynchronized() = sharedResource.operation()

val result = lock(lock, ::toBeSynchronized)
```

Another, often more convenient way is to pass a **lambda expression**:

```
val result = lock(lock, { sharedResource.operation() })
```

Lambda expressions are described in more detail below, but for purposes of continuing this section, let's see a brief overview:

- A lambda expression is always surrounded by curly braces,
- Its parameters (if any) are declared before -> (parameter types may be omitted),
- The body goes after -> (when present).

In Kotlin, there is a convention that if the last parameter to a function is a function, and you're passing a lambda expression as the corresponding argument, you can specify it outside of parentheses:

```
lock (lock) {
    sharedResource.operation()
}
```

Another example of a higher-order function would be map():

```
fun <T, R> List<T>.map(transform: (T) -> R): List<R> {
    val result = arrayListOf<R>()
    for (item in this)
        result.add(transform(item))
    return result
}
```

This function can be called as follows:

```
val doubled = ints.map { value -> value * 2 }
```

Note that the parentheses in a call can be omitted entirely if the lambda is the only argument to that call.

## it: implicit name of a single parameter

One other helpful convention is that if a function literal has only one parameter, its declaration may be omitted (along with the ->), and its name will be it:

```
ints.map { it * 2 }
```
These conventions allow to write **LINQ-style** code:

```
strings.filter { it.length == 5 }.sortBy { it }.map { it.toUpperCase() }
```

## Underscore for unused variables (since 1.1)

If the lambda parameter is unused, you can place an underscore instead of its name:

```
map.forEach { _, value -> println("\$value!") }
```

### Destructuring in Lambdas (since 1.1)

## Lambda Expressions and Anonymous Functions

A lambda expression or an anonymous function is a "function literal", i.e. a function that is not declared, but passed immediately as an expression. Consider the following example:

```
max(strings, { a, b -> a.length < b.length })
```

Function **max** is a higher-order function, i.e. it takes a function value as the second argument. This second argument is an expression that is itself a function, i.e. a function literal. As a function, it is equivalent to

```
fun compare(a: String, b: String): Boolean = a.length < b.length
```

## Function Types

For a function to accept another function as a parameter, we have to specify a function type for that parameter. For example the abovementioned function max is defined as follows:

```
fun <T> max(collection: Collection<T>, less: (T, T) -> Boolean): T? {
    var max: T? = null
    for (it in collection)
        if (max == null || less(max, it))
            max = it
    return max
}
```

The parameter **less** is of type (**T, T**) -> **Boolean**, i.e. a function that takes two parameters of type T and returns a **Boolean**: true if the first one is smaller than the second one.

In the body, line 4, **less** is used as a function: it is called by passing two arguments of type **T**.

A function type is written as above, or may have named parameters, if you want to document the meaning of each parameter.

```
val compare: (x: T, y: T) -> Int = ...
```

## Lambda Expression Syntax

The full syntactic form of lambda expressions, i.e. literals of function types, is as follows:

```
val sum = { x: Int, y: Int -> x + y }
```

A lambda expression is always surrounded by curly braces, parameter declarations in the full syntactic form go inside parentheses and have optional type annotations, the body goes after an -> sign. If the inferred return type of the lambda is not **Unit**, the last (or possibly single) expression inside the lambda body is treated as the return value.

If we leave all the optional annotations out, what's left looks like this:

```
val sum: (Int, Int) -> Int = { x, y -> x + y }
```

It's very common that a lambda expression has only one parameter. If Kotlin can figure the signature out itself, it allows us not to declare the only parameter, and will implicitly declare it for us under the name it:

```
ints.filter { it > 0 } // this literal is of type '(it: Int) -> Boolean'
```

We can explicitly return a value from the lambda using the **qualified return** syntax. Otherwise, the value of the last expression is implictly returned. Therefore, the two following snippets are equivalent:

```
ints.filter {
    val shouldFilter = it > 0
    shouldFilter
}

ints.filter {
    val shouldFilter = it > 0
    return@filter shouldFilter
}
```

Note that if a function takes another function as the last parameter, the lambda expression argument can be passed outside the parenthesized argument list.

## Anonymous Functions

One thing missing from the lambda expression syntax presented above is the ability to specify the return type of the function. In most cases, this is unnecessary because the return type can be inferred automatically. However, if you do need to specify it explicitly, you can use an alternative syntax: an anonymous function.

```
fun(x: Int, y: Int): Int = x + y
```

An anonymous function looks very much like a regular function declaration, except that its name is omitted. Its body can be either an expression (as shown above) or a block:

```
fun(x: Int, y: Int): Int {
    return x + y
}
```

The parameters and the return type are specified in the same way as for regular functions, except that the parameter types can be omitted if they can be inferred from context:

```
ints.filter(fun(item) = item > 0)
```

The return type inference for anonymous functions works just like for normal functions: the return type is inferred automatically for anonymous functions with an expression body and has to be specified explicitly (or is assumed to be Unit) for anonymous functions with a block body.

Note that anonymous function parameters are always passed inside the parentheses. The shorthand syntax allowing to leave the function outside the parentheses works only for lambda expressions.

One other difference between lambda expressions and anonymous functions is the behavior of **non-local returns**. A return statement without a label always returns from the function declared with the fun keyword. This means that a return inside a lambda expression will return from the enclosing function, whereas a return inside an anonymous function will return from the anonymous function itself.

## Closures

A lambda expression or anonymous function (as well as a **local function** and an **object expression**) can access its closure, i.e. the variables declared in the outer scope. Unlike Java, the variables captured in the closure can be modified:

```
var sum = 0
ints.filter { it > 0 }.forEach {
    sum += it
}
print(sum)
```

## Function Literals with Receiver

Kotlin provides the ability to call a function literal with a specified receiver object. Inside the body of the function literal, you can call methods on that receiver object without any additional qualifiers. This is similar to extension functions, which allow you to access members of the receiver object inside the body of the function. One of the most important examples of their usage is **Type-safe Groovy-style builders**.

The type of such a function literal is a function type with receiver:

```
sum : Int.(other: Int) -> Int
```

The function literal can be called as if it were a method on the receiver object:

```
1.sum(2)
```

The anonymous function syntax allows you to specify the receiver type of a function literal directly. This can be useful if you need to declare a variable of a function type with receiver, and to use it later.

```
val sum = fun Int.(other: Int): Int = this + other
```

Lambda expressions can be used as function literals with receiver when the receiver type can be inferred from context.

```
class HTML {
    fun body() { ... }
}

fun html(init: HTML.() -> Unit): HTML {
    val html = HTML()  // create the receiver object
    html.init()        // pass the receiver object to the lambda
    return html
}


html {       // lambda with receiver begins here
    body()   // calling a method on the receiver object
}
```

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String functionsAndLambdasThree = '''
# Inline Functions

Using **higher-order functions** imposes certain runtime penalties: each function is an object, and it captures a closure, i.e. those variables that are accessed in the body of the function. Memory allocations (both for function objects and classes) and virtual calls introduce runtime overhead.

But it appears that in many cases this kind of overhead can be eliminated by inlining the lambda expressions. The functions shown below are good examples of this situation. I.e., the **lock()** function could be easily inlined at call-sites. Consider the following case:

```
lock(l) { foo() }
```

Instead of creating a function object for the parameter and generating a call, the compiler could emit the following code

```
l.lock()
try {
    foo()
}
finally {
    l.unlock()
}
```

Isn't it what we wanted from the very beginning?

To make the compiler do this, we need to mark the lock() function with the **inline** modifier:

```
inline fun lock<T>(lock: Lock, body: () -> T): T {
    // ...
}
```

The **inline** modifier affects both the function itself and the lambdas passed to it: all of those will be inlined into the call site.

Inlining may cause the generated code to grow, but if we do it in a reasonable way (do not inline big functions) it will pay off in performance, especially at "megamorphic" call-sites inside loops.

## noinline

In case you want only some of the lambdas passed to an inline function to be inlined, you can mark some of your function parameters with the noinline modifier:

```
inline fun foo(inlined: () -> Unit, noinline notInlined: () -> Unit) {
    // ...
}
```
Inlinable lambdas can only be called inside the inline functions or passed as inlinable arguments, but **noinline** ones can be manipulated in any way we like: stored in fields, passed around etc.

Note that if an inline function has no inlinable function parameters and no reified type parameters, the compiler will issue a warning, since inlining such functions is very unlikely to be beneficial (you can suppress the warning if you are sure the inlining is needed).

## Non-local returns

In Kotlin, we can only use a normal, unqualified return to exit a named function or an anonymous function. This means that to exit a lambda, we have to use a **label**, and a bare return is forbidden inside a lambda, because a lambda can not make the enclosing function return:

```
fun foo() {
    ordinaryFunction {
        return // ERROR: can not make `foo` return here
    }
}
```

But if the function the lambda is passed to is inlined, the return can be inlined as well, so it is allowed:

```
fun foo() {
    inlineFunction {
        return // OK: the lambda is inlined
    }
}
```

Such returns (located in a lambda, but exiting the enclosing function) are called non-local returns. We are used to this sort of constructs in loops, which inline functions often enclose:

```
fun hasZeros(ints: List<Int>): Boolean {
    ints.forEach {
        if (it == 0) return true // returns from hasZeros
    }
    return false
}
```

Note that some inline functions may call the lambdas passed to them as parameters not directly from the function body, but from another execution context, such as a local object or a nested function. In such cases, non-local control flow is also not allowed in the lambdas. To indicate that, the lambda parameter needs to be marked with the crossinline modifier:

```
inline fun f(crossinline body: () -> Unit) {
    val f = object: Runnable {
        override fun run() = body()
    }
    // ...
}
```

**break** and **continue** are not yet available in inlined lambdas, but we are planning to support them too

## Reified type parameters

Sometimes we need to access a type passed to us as a parameter:

```
fun <T> TreeNode.findParentOfType(clazz: Class<T>): T? {
    var p = parent
    while (p != null && !clazz.isInstance(p)) {
        p = p.parent
    }
    @Suppress("UNCHECKED_CAST")
    return p as T?
}
```

Here, we walk up a tree and use reflection to check if a node has a certain type. It’s all fine, but the call site is not very pretty:

```
treeNode.findParentOfType(MyTreeNode::class.java)
```

What we actually want is simply pass a type to this function, i.e. call it like this:

```
treeNode.findParentOfType<MyTreeNode>()
```

To enable this, inline functions support *reified type parameters*, so we can write something like this:

```
inline fun <reified T> TreeNode.findParentOfType(): T? {
    var p = parent
    while (p != null && p !is T) {
        p = p.parent
    }
    return p as T?
}
```

We qualified the type parameter with the **reified** modifier, now it’s accessible inside the function, almost as if it were a normal class. Since the function is inlined, no reflection is needed, normal operators like !is and as are working now. Also, we can call it as mentioned above: **myTree.findParentOfType<MyTreeNodeType>()**.

Though reflection may not be needed in many cases, we can still use it with a reified type parameter:

```
inline fun <reified T> membersOf() = T::class.members

fun main(s: Array<String>) {
    println(membersOf<StringBuilder>().joinToString("\n"))
}
```

Normal functions (not marked as inline) can not have reified parameters. A type that does not have a run-time representation (e.g. a non-reified type parameter or a fictitious type like **Nothing**) can not be used as an argument for a reified type parameter.

## Inline properties (since 1.1)

The **inline** modifier can be used on accessors of properties that don't have a backing field. You can annotate individual property accessors:

```
val foo: Foo
    inline get() = Foo()

var bar: Bar
    get() = ...
    inline set(v) { ... }
```

You can also annotate an entire property, which marks both of its accessors as inline:

```
inline var bar: Bar
    get() = ...
    set(v) { ... }
```

At the call site, inline accessors are inlined as regular inline functions.

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String othersOne = '''
# Collections

Unlike many languages, Kotlin distinguishes between mutable and immutable collections (lists, sets, maps, etc). Precise control over exactly when collections can be edited is useful for eliminating bugs, and for designing good APIs.

It is important to understand up front the difference between a read only view of a mutable collection, and an actually immutable collection. Both are easy to create, but the type system doesn't express the difference, so keeping track of that (if it's relevant) is up to you.

The Kotlin **List<out T>** type is an interface that provides read only operations like **size, get** and so on. Like in Java, it inherits from **Collection<T>** and that in turn inherits from **Iterable<T>**. Methods that change the list are added by the **MutableList<T>** interface. This pattern holds also for **Set<out T>/MutableSet<T>** and **Map<K, out V>/MutableMap<K, V>**.

We can see basic usage of the list and set types below:

```
val numbers: MutableList<Int> = mutableListOf(1, 2, 3)
val readOnlyView: List<Int> = numbers
println(numbers)        // prints "[1, 2, 3]"
numbers.add(4)
println(readOnlyView)   // prints "[1, 2, 3, 4]"
readOnlyView.clear()    // -> does not compile

val strings = hashSetOf("a", "b", "c", "c")
assert(strings.size == 3)
```

Kotlin does not have dedicated syntax constructs for creating lists or sets. Use methods from the standard library, such as **listOf(), mutableListOf(), setOf(), mutableSetOf()**. Map creation in NOT performance-critical code can be accomplished with a simple idiom: **mapOf(a to b, c to d)**

Note that the **readOnlyView** variable points to the same list and changes as the underlying list changes. If the only references that exist to a list are of the read only variety, we can consider the collection fully immutable. A simple way to create such a collection is like this:

```
val items = listOf(1, 2, 3)
```

Currently, the **listOf** method is implemented using an array list, but in future more memory-efficient fully immutable collection types could be returned that exploit the fact that they know they can't change.

Note that the read only types are covariant. That means, you can take a **List<Rectangle>** and assign it to **List<Shape>** assuming Rectangle inherits from Shape. This wouldn't be allowed with the mutable collection types because it would allow for failures at runtime.

Sometimes you want to return to the caller a snapshot of a collection at a particular point in time, one that's guaranteed to not change:

```
class Controller {
    private val _items = mutableListOf<String>()
    val items: List<String> get() = _items.toList()
}
```

The **toList** extension method just duplicates the lists items, thus, the returned list is guaranteed to never change.

There are various useful extension methods on lists and sets that are worth being familiar with:

```
val items = listOf(1, 2, 3, 4)
items.first() == 1
items.last() == 4
items.filter { it % 2 == 0 }   // returns [2, 4]

val rwList = mutableListOf(1, 2, 3)
rwList.requireNoNulls()        // returns [1, 2, 3]
if (rwList.none { it > 6 }) println("No items above 6")  // prints "No items above 6"
val item = rwList.firstOrNull()
```

… as well as all the utilities you would expect such as sort, zip, fold, reduce and so on.

Maps follow the same pattern. They can be easily instantiated and accessed like this:

```
val readWriteMap = hashMapOf("foo" to 1, "bar" to 2)
println(readWriteMap["foo"])  // prints "1"
val snapshot: Map<String, Int> = HashMap(readWriteMap)Collections
```
''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String othersTwo = '''
# Ranges

Range expressions are formed with rangeTo functions that have the operator form .. which is complemented by in and !in. Range is defined for any comparable type, but for integral primitive types it has an optimized implementation. Here are some examples of using ranges

```
if (i in 1..10) { // equivalent of 1 <= i && i <= 10
    println(i)
}
```
Integral type ranges (**IntRange, LongRange, CharRange**) have an extra feature: they can be iterated over. The compiler takes care of converting this analogously to Java's indexed for-loop, without extra overhead.

```
for (i in 1..4) print(i) // prints "1234"

for (i in 4..1) print(i) // prints nothing
```

What if you want to iterate over numbers in reverse order? It's simple. You can use the **downTo()** function defined in the standard library

```
for (i in 4 downTo 1) print(i) // prints "4321"
```

Is it possible to iterate over numbers with arbitrary step, not equal to 1? Sure, the step() function will help you

```
for (i in 1..4 step 2) print(i) // prints "13"

for (i in 4 downTo 1 step 2) print(i) // prints "42"
```

To create a range which does not include its end element, you can use the **until** function:

```
for (i in 1 until 10) { // i in [1, 10), 10 is excluded
     println(i)
}
```
## How it works

Ranges implement a common interface in the library: **ClosedRange<T>**.

**ClosedRange<T>** denotes a closed interval in the mathematical sense, defined for comparable types. It has two endpoints: **start** and **endInclusive**, which are included in the range. The main operation is **contains**, usually used in the form of *in/!in* operators.

Integral type progressions (**IntProgression, LongProgression, CharProgression**) denote an arithmetic progression. Progressions are defined by the **first** element, the **last** element and a non-zero **step**. The first element is **first**, subsequent elements are the previous element plus **step**. The **last** element is always hit by iteration unless the progression is empty.

A progression is a subtype of **Iterable<N>**, where **N** is **Int**, **Long** or **Char** respectively, so it can be used in for-loops and functions like **map, filter**, etc. Iteration over **Progression** is equivalent to an indexed *for*-loop in Java/JavaScript:

```
for (int i = first; i != last; i += step) {
  // ...
}
```
For integral types, the .. operator creates an object which implements both **ClosedRange<T>** and ***Progression**. For example, **IntRange** implements **ClosedRange<Int>** and extends **IntProgression**, thus all operations defined for **IntProgression** are available for **IntRange** as well. The result of the **downTo()** and **step()** functions is always a ***Progression**.

Progressions are constructed with the **fromClosedRange** function defined in their companion objects:

**IntProgression.fromClosedRange(start, end, step)**

The **last** element of the progression is calculated to find maximum value not greater than the **end** value for positive **step** or minimum value not less than the **end** value for negative **step** such that **(last - first) % step == 0**.

## Utility functions

### rangeTo()

The **rangeTo()** operators on integral types simply call the constructors of ***Range** classes, e.g.:

```
class Int {
    //...
    operator fun rangeTo(other: Long): LongRange = LongRange(this, other)
    //...
    operator fun rangeTo(other: Int): IntRange = IntRange(this, other)
    //...
}
```

Floating point numbers **(Double, Float)** do not define their **rangeTo** operator, and the one provided by the standard library for generic Comparable types is used instead:

```
    public operator fun <T: Comparable<T>> T.rangeTo(that: T): ClosedRange<T>
```

The range returned by this function cannot be used for iteration.

### downTo()

The **downTo()** extension function is defined for any pair of integral types, here are two examples:

```
fun Long.downTo(other: Int): LongProgression {
    return LongProgression.fromClosedRange(this, other.toLong(), -1L)
}

fun Byte.downTo(other: Int): IntProgression {
    return IntProgression.fromClosedRange(this.toInt(), other, -1)
}
```

### reversed()

The **reversed()** extension functions are defined for each ***Progression** classes, and all of them return reversed progressions.

```
fun IntProgression.reversed(): IntProgression {
    return IntProgression.fromClosedRange(last, first, -step)
}
```

### step()

**step()** extension functions are defined for ***Progression** classes, all of them return progressions with modified **step** values (function parameter). The step value is required to be always positive, therefore this function never changes the direction of iteration.

```
fun IntProgression.step(step: Int): IntProgression {
    if (step <= 0) throw IllegalArgumentException("Step must be positive, was: \$step")
    return IntProgression.fromClosedRange(first, last, if (this.step > 0) step else -step)
}

fun CharProgression.step(step: Int): CharProgression {
    if (step <= 0) throw IllegalArgumentException("Step must be positive, was: \$step")
    return CharProgression.fromClosedRange(first, last, if (this.step > 0) step else -step)
}
```

Note that the **last** value of the returned progression may become different from the **last** value of the original progression in order to preserve the invariant **(last - first) % step == 0**. Here is an example:

```
(1..12 step 2).last == 11  // progression with values [1, 3, 5, 7, 9, 11]
(1..12 step 3).last == 10  // progression with values [1, 4, 7, 10]
(1..12 step 4).last == 9   // progression with values [1, 5, 9]
```

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String othersThree = '''
# Equality

In Kotlin there are two types of equality:

- Referential equality (two references point to the same object)
- Structural equality (a check for equals())

## Referential equality

Referential equality is checked by the === operation (and its negated counterpart !==). a === b evaluates to true if and only if a and b point to the same object.

## Structural equality

Structural equality is checked by the == operation (and its negated counterpart **!**=). By convention, an expression like **a == b** is translated to

```
a?.equals(b) ?: (b === null)
```

I.e. if a is not **null**, it calls the **equals(Any?)** function, otherwise (i.e. **a** is **null**) it checks that **b** is referentially equal to **null**.

Note that there's no point in optimizing your code when comparing to **null** explicitly: **a == null** will be automatically translated to **a === null**.



''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String othersFour = '''
# Operator overloading

Kotlin allows us to provide implementations for a predefined set of operators on our types. These operators have fixed symbolic representation (like + or *) and fixed precedence. To implement an operator, we provide a member function or an extension function with a fixed name, for the corresponding type, i.e. left-hand side type for binary operations and argument type for unary ones. Functions that overload operators need to be marked with the operator modifier.

Further we describe the conventions that regulate operator overloading for different operators.

## Unary operations

### Unary prefix operators
| Expression  |	Translated to   |
| :---------: | :---------:
| +a	        | a.unaryPlus()   |
| -a	        | a.unaryMinus()  |
| !a	        | a.not()         |

This table says that when the compiler processes, for example, an expression **+a**, it performs the following steps:

- Determines the type of a, let it be **T**.
- Looks up a function **unaryPlus()** with the **operator** modifier and no parameters for the receiver **T**, i.e. a member function or an extension function.
- If the function is absent or ambiguous, it is a compilation error.
- If the function is present and its return type is **R**, the expression **+a** has type **R**.

Note that these operations, as well as all the others, are optimized for Basic types and do not introduce overhead of function calls for them.

### Increments and decrements
| **Expression**	| **Translated to**     |
| :---------:     | :---------:           |
| a++	            | a.inc() + see below   |
| a--	            | a.dec() + see below   |

The **inc()** and **dec()** functions must return a value, which will be assigned to the variable on which the **++** or **--** operation was used. They shouldn't mutate the object on which the **inc** or **dec** was invoked.

The compiler performs the following steps for resolution of an operator in the *postfix* form, e.g. **a++**:

- Determines the type of **a**, let it be **T**.
- Looks up a function **inc()** with the **operator** modifier and no parameters, applicable to the receiver of type **T**.
- Checks that the return type of the function is a subtype of **T**.

The effect of computing the expression is:

- Store the initial value of **a** to a temporary storage **a0**,
- Assign the result of **a.inc()** to **a**,
- Return **a0** as a result of the expression.

For **a--** the steps are completely analogous.

For the *prefix* forms **++a** and **--a** resolution works the same way, and the effect is:

- Assign the result of **a.inc()** to **a**,
- Return the new value of **a** as a result of the expression.

## Binary operations

### Arithmetic operators

| Expression	| Translated to                     |
| :---------: | :---------:                       |
| a + b	      | a.plus(b)                         |
| a - b	      | a.minus(b)                        |
| a * b	      | a.times(b)                        |
| a / b	      | a.div(b)                          |
| a % b	      | a.rem(b), a.mod(b) (deprecated)   |
| a..b	      | a.rangeTo(b)                      |

For the operations in this table, the compiler just resolves the expression in the *Translated* to column.

Note that the **rem** operator is supported since Kotlin 1.1. Kotlin 1.0 uses the **mod** operator, which is deprecated in Kotlin 1.1.

### 'In' operator

| Expression	| Translated to   |
| :---------: | :---------:     |
| a in b	    | b.contains(a)   |
| a !in b	    | !b.contains(a)  |

For **in** and **!in** the procedure is the same, but the order of arguments is reversed.

### Indexed access operator

| Expression	          | Translated to           |
| :---------:           | :---------:             |
| a[i]	                | a.get(i)                |
| a[i, j]	              | a.get(i, j)             |
| a[i_1, ..., i_n]	    | a.get(i_1, ..., i_n)    |
| a[i] = b	            | a.set(i, b)             |
| a[i, j] = b	          | a.set(i, j, b)          |
| a[i_1, ..., i_n] = b	| a.set(i_1, ..., i_n, b) |

Square brackets are translated to calls to **get** and **set** with appropriate numbers of arguments.

### Invoke operator

| Expression	      | Translated to           |
| :---------:       | :---------:             |
| a()	              | a.invoke()              |
| a(i)	            | a.invoke(i)             |
| a(i, j)	          | a.invoke(i, j)           |
| a(i_1, ..., i_n)	| a.invoke(i_1, ..., i_n) |

Parentheses are translated to calls to **invoke** with appropriate number of arguments.

### Augmented assignments

| Expression	| Translated to     |
| :---------: | :---------:       |
| a += b	    | a.plusAssign(b)   |
| a -= b	    | a.minusAssign(b)  |
| a *= b	    | a.timesAssign(b)  |
| a /= b	    | a.divAssign(b)    |
| a %= b	    | a.modAssign(b)    |

For the assignment operations, e.g. **a += b**, the compiler performs the following steps:

- If the function from the right column is available
-- If the corresponding binary function (i.e. **plus()** for **plusAssign())** is available too, report error (ambiguity).
-- Make sure its return type is **Unit**, and report an error otherwise.
-- Generate code for **a.plusAssign(b)**
- Otherwise, try to generate code for **a = a + b** (this includes a type check: the type of **a + b** must be a subtype of **a**).

Note: assignments are *NOT* expressions in Kotlin.

### Equality and inequality operators

| Expression	|  Translated to                  |
| :---------: | :---------:                     |
| a == b	    | a?.equals(b) ?: (b === null)    |
| a != b	    | !(a?.equals(b) ?: (b === null)) |

Note: === and !== (identity checks) are not overloadable, so no conventions exist for them

The == operation is special: it is translated to a complex expression that screens for **null**s. **null == null** is always true, and **x == null** for a non-null **x** is always false and won't invoke **x.equals()**.

### Comparison operators

| Expression	| Translated to       |
| :---------: | :---------:         |
| a > b	      | a.compareTo(b) > 0  |
| a < b	      | a.compareTo(b) < 0  |
| a >= b	    | a.compareTo(b) >= 0 |
| a <= b	    | a.compareTo(b) <= 0 |

All comparisons are translated into calls to **compareTo**, that is required to return **Int**.

## Infix calls for named functions

We can simulate custom infix operations by using infix function calls.

''';

///////////////////////////////////////////////////////////////////////////////////////////////////////
const String othersFive = '''
# Null Safety

## Nullable types and Non-Null Types

Kotlin's type system is aimed at eliminating the danger of null references from code, also known as the **The Billion Dollar Mistake**.

One of the most common pitfalls in many programming languages, including Java, is that of accessing a member of a null reference, resulting in a null reference exception. In Java this would be the equivalent of a **NullPointerException** or NPE for short.

Kotlin's type system is aimed to eliminate **NullPointerException**'s from our code. The only possible causes of NPE's may be

- An explicit call to throw NullPointerException()
- Usage of the !! operator that is described below
- External Java code has caused it
- There's some data inconsistency with regard to initialization (an uninitialized this available in a constructor is used somewhere)

In Kotlin, the type system distinguishes between references that can hold null (nullable references) and those that can not (non-null references). For example, a regular variable of type **String** can not hold null:

```
var a: String = "abc"
a = null // compilation error
```

To allow nulls, we can declare a variable as nullable string, written **String?**:

```
var b: String? = "abc"
b = null // ok
```
Now, if you call a method or access a property on a, it's guaranteed not to cause an NPE, so you can safely say

```
val l = a.length
```

But if you want to access the same property on b, that would not be safe, and the compiler reports an error:

```
val l = b.length // error: variable 'b' can be null
```

But we still need to access that property, right? There are a few ways of doing that.

## Checking for *null* in conditions

First, you can explicitly check if b is null, and handle the two options separately:

```
val l = if (b != null) b.length else -1
```

The compiler tracks the information about the check you performed, and allows the call to length inside the if. More complex conditions are supported as well:

```
if (b != null && b.length > 0) {
    print("String of length \${b.length}")
} else {
    print("Empty string")
}
```

Note that this only works where **b** is immutable (i.e. a local variable which is not modified between the check and the usage or a member val which has a backing field and is not overridable), because otherwise it might happen that **b** changes to null after the check.

## Safe Calls

Your second option is the safe call operator, written ?.:

```
b?.length
```
This returns **b.length** if **b** is not null, and null otherwise. The type of this expression is **Int?**.

Safe calls are useful in chains. For example, if Bob, an Employee, may be assigned to a Department (or not), that in turn may have another Employee as a department head, then to obtain the name of Bob's department head (if any), we write the following:

```
bob?.department?.head?.name
```

Such a chain returns null if any of the properties in it is null.

To perform a certain operation only for non-null values, you can use the safe call operator together with let:

```
val listWithNulls: List<String?> = listOf("A", null)
for (item in listWithNulls) {
     item?.let { println(it) } // prints A and ignores null
}
```

## Elvis Operator

When we have a nullable reference r, we can say "if r is not null, use it, otherwise use some non-null value **x"**:

```
val l: Int = if (b != null) b.length else -1
```

Along with the complete if-expression, this can be expressed with the Elvis operator, written ?::

```
val l = b?.length ?: -1
```

If the expression to the left of ?: is not null, the elvis operator returns it, otherwise it returns the expression to the right. Note that the right-hand side expression is evaluated only if the left-hand side is null.

Note that, since throw and return are expressions in Kotlin, they can also be used on the right hand side of the elvis operator. This can be very handy, for example, for checking function arguments:

```
fun foo(node: Node): String? {
    val parent = node.getParent() ?: return null
    val name = node.getName() ?: throw IllegalArgumentException("name expected")
    // ...
}
```

## The !! Operator

The third option is for NPE-lovers. We can write **b!!**, and this will return a non-null value of **b** (e.g., a **String** in our example) or throw an NPE if b is null:

```
val l = b!!.length
```

Thus, if you want an NPE, you can have it, but you have to ask for it explicitly, and it does not appear out of the blue.

## Safe Casts

Regular casts may result into a ClassCastException if the object is not of the target type. Another option is to use safe casts that return null if the attempt was not successful:

```
val aInt: Int? = a as? Int
```

## Collections of Nullable Type

If you have a collection of elements of a nullable type and want to filter non-null elements, you can do so by using **filterNotNull**.

```
val nullableList: List<Int?> = listOf(1, 2, null, 4)
val intList: List<Int> = nullableList.filterNotNull()
```
''';
