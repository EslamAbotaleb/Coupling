//
//  Property Injection.swift
//
//
//  Created by Eslam on 20/01/2025.
//
// MARK: - Step two from IOC Into Dependency Injection using property injection
/*
protocol PaymentService {
    func processPayment()
}

class PaymentServiceImpl: PaymentService {
    func processPayment() {
        print("Payment processed!")
    }
}
class UserService {
    private var paymentService: PaymentService
    init() {}
    func createUser() {
        paymentService.processPayment()  // Using injected PaymentService
    }
}

// 1. Create the PaymentService instance
let paymentService = PaymentServiceImpl()

// 2. Create the UserService instance
let userService = UserService()

// 3. Inject the PaymentService via the property (injecting after instantiation)
userService.paymentService = paymentService

// 4. Now you can use the injected dependency
userService.createUser()  // This will print "Payment processed!"
*/
