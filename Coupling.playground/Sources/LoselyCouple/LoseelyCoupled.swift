//
//  LoseelyCoupled.swift
//  
//
//  Created by Eslam on 20/01/2025.
//
//MARK: - Achieve Loosely Coupling
/*
/// Abstract Model
protocol PaymentService {
    func processPayment()
}
/// Low Level
class PayfortServiceImplemenation: PaymentService {
    func processPayment() {
        print("Processing payment with PayfortServiceImplemenation")
    }
}
/// Low Level
class StripeServiceImplemenation: PaymentService {
    func processPayment() {
        print("Processing payment with StripeServiceImplemenation")
    }
}
/// Low Level
class MondiaMediaServiceImplemenation: PaymentService {
    func processPayment() {
        print("Processing payment with MondiaMediaServiceImplemenation")
    }
}

/// Another Module
class UserService {
    // property from type protocol PaymentService
    private var paymentService: PaymentService

    /// injection for protocol using constructor injection
    init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }
    
    func createUser() {
        paymentService.processPayment()
    }
}

// Client code
let paymentService = PaymentServiceImpl()  // Can easily switch to another implementation
let userService = UserService(paymentService: paymentService)
userService.createUser()  // Calls method on the injected PaymentService
*/
