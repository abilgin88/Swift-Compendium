/*
 Privacy and License Details

 Playground authored by Abdullah Bilgin.

 Privacy:
 This Swift Playground does not collect or store any user data. It is designed for educational purposes, and all computations are performed locally on your device.

 License:
 This Swift Playground is provided under the MIT License. Feel free to use, modify, and distribute the code for both personal and commercial projects. For more details, see the accompanying LICENSE file or visit: https://opensource.org/licenses/MIT
*/
import Cocoa
import Foundation

//:## Basic Challenges
//: Challenge 1: Employee Information
class Employee {
    var employeeID: Int
    var name: String
    var salary: Double
    
    init(employeeID: Int, name: String, salary: Double) {
        self.employeeID = employeeID
        self.name = name
        self.salary = salary
    }
    
    func displayInformation() {
        print("Employee ID: \(employeeID), Name: \(name), Salary: \(salary)")
    }
}

// Testing the challenges
let employee = Employee(employeeID: 1, name: "John Doe", salary: 50000)
employee.displayInformation()
//: Challenge 2: Rectangle Properties
class Rectangle {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func calculatePerimeter() -> Double {
        return 2 * (length + width)
    }
}
// Testing the challenges
let rectangle = Rectangle(length: 5, width: 3)
print("Rectangle Perimeter: \(rectangle.calculatePerimeter())")
//: Challenge 3: Temperature Conversion
class TemperatureConverter {
    var celsius: Double
    var fahrenheit: Double
    
    init(celsius: Double, fahrenheit: Double) {
        self.celsius = celsius
        self.fahrenheit = fahrenheit
    }
    
    func convertToCelsius() {
        celsius = (fahrenheit - 32) * 5 / 9
    }
    
    func convertToFahrenheit() {
        fahrenheit = (celsius * 9 / 5) + 32
    }
}
// Testing the challenges
let temperatureConverter = TemperatureConverter(celsius: 0, fahrenheit: 32)
temperatureConverter.convertToCelsius()
temperatureConverter.convertToFahrenheit()
//: Challenge 4: Product Inventory
class Product {
    var productName: String
    var price: Double
    var quantityInStock: Int
    
    init(productName: String, price: Double, quantityInStock: Int) {
        self.productName = productName
        self.price = price
        self.quantityInStock = quantityInStock
    }
    
    func calculateTotalValue() -> Double {
        return price * Double(quantityInStock)
    }
}
// Testing the challenges
let product = Product(productName: "Widget", price: 10.0, quantityInStock: 100)
print("Total Product Value: \(product.calculateTotalValue())")
//: Challenge 5: Vehicle Details
class Vehicle {
    var make: String
    var model: String
    var year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
    
    func printDetails() {
        print("Make: \(make), Model: \(model), Year: \(year)")
    }
}
// Testing the challenges
let vehicle = Vehicle(make: "Toyota", model: "Camry", year: 2022)
vehicle.printDetails()
//:## Intermediate Challenges
//: Challenge 6: Square Properties
extension Rectangle {
    var areaOfSquare: Double {
        return length * length
    }
}
// Testing the challenges
let squareArea = rectangle.areaOfSquare
print("Area of the Square: \(squareArea)")
//: Challenge 7: Bank Account Transactions
class BankAccount {
    var accountBalance: Double
    var transactions: [Double]
    
    init(accountBalance: Double, transactions: [Double]) {
        self.accountBalance = accountBalance
        self.transactions = transactions
    }
    
    var totalBalance: Double {
        return accountBalance + transactions.reduce(0, +)
    }
}
// Create a bank account with initial balance and transactions
let initialBalance = 1000.0
let transactions = [50.0, -20.0, 30.0]
let bankAccount = BankAccount(accountBalance: initialBalance, transactions: transactions)

// Access the totalBalance computed property
let totalBalance = bankAccount.totalBalance

// Print the result
print("Total Account Balance: \(totalBalance)")

//: Challenge 8: Email Validation
class EmailValidator {
    var emailAddress: String
    
    init(emailAddress: String) {
        self.emailAddress = emailAddress
    }
    
    var isValidEmail: Bool {
        // Implement email validation logic (this is an example, detail is not important in the challenge)
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: emailAddress)
    }
}
// Create an email validator with an email address
let emailValidator = EmailValidator(emailAddress: "example@example.com")

// Access the isValidEmail computed property
let isValidEmail = emailValidator.isValidEmail

// Print the result
print("Is Valid Email: \(isValidEmail)")
//: Challenge 9: User Authentication
class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    var isStrongPassword: Bool {
        // Simple password strength check: minimum length of 8 characters
        return password.count >= 8
    }
}
// Create a user with a username and password
let user = User(username: "john_doe", password: "SecurePassword123")

// Access the isStrongPassword computed property
let isStrongPassword = user.isStrongPassword

// Print the result
print("Is Strong Password: \(isStrongPassword)")
//: Challenge 10: Circle Intersection
class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    var doCirclesIntersect: Bool {
        // Implement circle intersection logic
        return true
    }
    
    var areaOfIntersection: Double {
        // Implement area of intersection calculation
        return 0.0
    }
}
// Create two circles with different radii
let circle1 = Circle(radius: 5)
let circle2 = Circle(radius: 8)

// Access the doCirclesIntersect and areaOfIntersection computed properties
let circlesIntersect = circle1.doCirclesIntersect
let areaOfIntersection = circle1.areaOfIntersection

// Print the results
print("Do Circles Intersect: \(circlesIntersect)")
print("Area of Intersection: \(areaOfIntersection)")
//:## Advanced Challenges
//: Challenge 11: Real-time Stock Prices
class Stock {
    var currentStockPrice: Double {
        didSet {
            print("Stock price updated to \(currentStockPrice)")
        }
    }
    
    init(currentStockPrice: Double) {
        self.currentStockPrice = currentStockPrice
    }
    
    var percentageChange: Double {
        // Implement percentage change calculation
        return 0.0
    }
}
// Create a stock with an initial stock price
var stock = Stock(currentStockPrice: 100.0)

// Update the stock price (triggering the didSet observer)
stock.currentStockPrice = 120.0

// Access the percentageChange computed property
let percentageChange = stock.percentageChange

// Print the results
print("Percentage Change: \(percentageChange)%")

//: Challenge 12: Custom Date Formatting
extension Employee {
    var formattedBirthdate: String {
        // Implement custom date formatting logic
        return "January 1, 2000" // Placeholder date
    }
}

// Access the formattedBirthdate computed property
let formattedBirthdate = employee.formattedBirthdate

// Print the result
print("Formatted Birthdate: \(formattedBirthdate)")

//: Challenge 13: Database Integration
class DatabaseModel {
    var dataModel: String {
        didSet {
            // Implement database update logic
            print("Database updated with new data model: \(dataModel)")
        }
    }
    
    init(dataModel: String) {
        self.dataModel = dataModel
    }
}
// Create a database model with an initial data model
var databaseModel = DatabaseModel(dataModel: "Version 1")

// Update the data model (triggering the didSet observer)
databaseModel.dataModel = "Version 2"

// Print the result (will trigger the didSet observer)
// The message "Database updated with new data model: Version 2" should be printed.
//: Challenge 14: Multi-step Transaction Approval
class Transaction {
    var transactionAmount: Double
    var approvalStatus: Bool {
        didSet {
            // Implement multi-step approval process
            print(approvalStatus ? "Transaction approved" : "Transaction rejected")
        }
    }
    
    init(transactionAmount: Double, approvalStatus: Bool) {
        self.transactionAmount = transactionAmount
        self.approvalStatus = approvalStatus
    }
}
// Create a transaction with an initial amount and approval status
var transaction = Transaction(transactionAmount: 500.0, approvalStatus: false)

// Update the approval status (triggering the didSet observer)
transaction.approvalStatus = true

// Print the result (will trigger the didSet observer)
// The message "Transaction approved" should be printed.

//: Challenge 15: Smart Home Automation
class SmartHomeDevice {
    var deviceStatus: Bool {
        didSet {
            // Implement smart home automation actions
            print(deviceStatus ? "Device turned on" : "Device turned off")
        }
    }
    
    var powerConsumption: Double
    
    init(deviceStatus: Bool, powerConsumption: Double) {
        self.deviceStatus = deviceStatus
        self.powerConsumption = powerConsumption
    }
}
// Create a smart home device with an initial device status and power consumption
var smartHomeDevice = SmartHomeDevice(deviceStatus: false, powerConsumption: 10.0)

// Update the device status (triggering the didSet observer)
smartHomeDevice.deviceStatus = true

// Print the result (will trigger the didSet observer)
// The message "Device turned on" should be printed.
