/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Convenience initializers
 A convenience initializer is a secondary initializer that provides a convenient way to create an instance of a class, struct, or enum by calling another designated initializer already defined in the same type. Convenience initializers are optional and help to simplify the initialization process by providing default values or reducing code duplication
 */

import Foundation


code(for: "Struct Convenience initializers") {
    struct Person {
        var name: String
        var age: Int
        var married: Bool
        // recreate memberwise initializer
        init(name: String, age: Int, married: Bool) {
            self.name = name
            self.age = age
            self.married = married
        }
        // create an initializer that will default married status to true
        init(name: String, age: Int) {
            self.init(name: name, age: age, married: true)
        }

    }
    let p1 = Person(name: "Julie", age: 19)
    print(p1.married)

}

code(for: "Rewrite as a Class") {
    class Person {
        var name: String
        var age: Int
        var married: Bool
        // recreate memberwise initializer
        init(name: String, age: Int, married: Bool) {
            self.name = name
            self.age = age
            self.married = married
        }
        // create an initializer that will default married status to true
        /// Person who is married
        convenience init(name: String, age: Int) {
            self.init(name: name, age: age, married: true)
        }
    }
    let p1 = Person(name: "Henry", age: 24)
    print(p1.married)
}
/*:
[< Previous](@previous)                    [Home](Introduction)
*/
