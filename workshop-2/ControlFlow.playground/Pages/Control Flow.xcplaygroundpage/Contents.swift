//: A key component of programming is logical thinking and being able to break down these large problems/tasks into smaller, individual operations. When a fork crops up in the problem where there are multiple options that need to be considered, this is where conditionals come in.
//:
//: If you stop and think about your day so far,  you will release that our brain processes thousands of these  seemingly insignificant decisions for us almost automatically. Programming will teach you to see all of these small decisions in any problem/routine you encounter.
//:
//: Control Flow is exactly as it states, being able to control the flow of where and when certain code gets called. There are 2 main ways to contorl the flow of your code, using `Conditionals` and/or `Loops`.
//:
//: ## Conditionals
//: When the outcome should be different based on a certain condition, there are a few different ways you can acheive this.
//: ### If /Else
//: As the name implies, this conditional will check if a condition is `true` and do one thing, else (if it is `false`), do something different.
let carColor = "Red"
if carColor == "Red" {
    // If the car color is red
    print("Thats a fast car")
} else {
    // If the car color is anything other than red
    print("Thats a normal speed car")
}
//: In the above example, where we say`carColor == "Red"`, this is the `condition` that we are checking against. Notice there are 2 `==` and not just 1 `=`. The difference between the line `let carColor = "Red"` is that we are _assigning_ a value to the constant `carColor`, `=` means an assignment. When we want to check _if x is equal to y_, we use 2 equals signs (`==`).
//: There are many different types of operators we can use to help us with our conditional checks. Remember, we are checking if the outcome of the check is `yes`
//: * `==` : check for equality, 'is equal to' ie `height == 165`
//: * `!=` : check for inequality, 'is not equal to' ie `red != blue`
//: * `>` :  check for left side being 'greater than' the right side. ie `usaPopulation > australianPopulation`
//: * `<` : check for the left side being 'less than' the right side. ie. `newZealandPopulation < australianPopulation`
//: * `<=`, `>=` : check for 'less than or equal to' and 'greater than or equal to'
//:
//: And sometimes you want to match for more than 1 condition, this is where you can utilise `&& (AND)` and `|| (OR)` to combine multipe checks together. And again, remember the statement below in the braces will only trigger *if all conditions are true*
//: If you want to check that BOTH are true, use `&&` (AND).
let country = "Australia"
let language = "English"

if country == "Australia" && language == "English" {
    // Will only get called if both are true
    print("Australian English")
} else {
    print("Another country and language")
}
//: We can extend the `if/else` statements by using `else if` to include additional checks
if country == "Australia" && language == "English" {
    // Will only get called if both are true
    print("Australian English")
} else if language == "English" {
    print("Another English speaking country")
} else {
    print("Another country and language")
}
//: When using multiple `if else` checks, its handy to remember they will be checked in the order they are written. This is why the above example works when we check for Australia AND English and that is false, we do another more generalized check if the lanage is English as the first condition would fail (ie Canada + English)
//:Now what if we only need one of these checks to be `true` before triggering the code? In this case, we can use the `|| (OR)` check.
let color = "Orange"
if color == "Red" || color == "Blue" || color == "Yellow" {
    print("Primary Color")
} else {
    print("Not a Primary Color")
}
//: Imagine with the above example, that we wanted to do something different if the color was black/white and something else if they chose Green. When you have multiple different cases to check, reading the code (and maintaining it) and be quite tricky.
//: There is another conditional check we can use called a `switch` which we will see shortly
//: ### Enumerated Types
//: Before when we were checking our colors against a String (ie "Blue"), this sort of check can be very error prone as "Blue" and "blue" are not equal in the eyes of a computer. Case sensitivity matters. This is where `Enums` can come in handy. This is a special type of class where the variations of it can only be of a predefined type. In this case, lets use the (very basic) colors we had before.
enum Color {
    case Blue
    case Yellow
    case Red
    case Green
    case Orange
    case Purple
    case Pink
    case Brown
    case Black
    case White
}
//: We can then use it like any other data type (String, Boolean etc) and create a constant/variable with it, but with a small difference. If we delcare the type of the variable to be a `Color`, then when we set a value to it we can use the dot notation. This is doable as we only have a certain number of predefined options to choose from.
var selectedColor: Color = .Black
//: Alternatively, this also works but means we just have to type more
var currentColor: Color = Color.Black
//: In Xplor world, a good example of what we use an enum for would be our User Types: Super Admin, Parent/Guardian, Educator, Provider Admin, Service Admin, Hub Guest.
enum UserType {
    case ParentGuardian
    case Educator
    case SuperAdmin
    case HubGuest
    case ProviderAdmin
    case ServiceAdmin
}

//: ### Switch
//: A `switch` is a very powerful way to handle multiple checks you are doing on the same object. They work especially well with `Enums`. Lets convert those color checks we had above to a switch and add a few more conditions
selectedColor = .Blue
switch selectedColor {
case .Red, .Yellow, .Blue:
    print("\(selectedColor) is a Primary Color")
case .Black, .White:
    print("\(selectedColor) is a Shade")
default:
    print("\(selectedColor)")
}
//: Lets break that code down a little more. `switch selectedColor` is the variable/value you want to check against. For each option, we use the `case` keyword. If there is more than one option which has the same output, we can easily just add a comma between them ie `case .Red, .Yellow, .Blue:`. Dont forget to end the case with a `:`.
//: If we only have 1 line of code we want to run after our check, we do not need the braces `{}`, we can instead indent the code. `default:`will be run when none of the above checks match, its the same as the `else`. You can do a lot with `switches` other than just using `enums`, such as range checks (ie height between 150-180 etc)
//:
//: Lets write a switch for telling us which Xplor users can access Office
