//
//  LoseelyCoupled.swift
//  
//
//  Created by Eslam on 20/01/2025.
//
// MARK: - Step one will deal with Inversion Of Control (IOC)
/// IOC responsible for control instantiate  object

class UserService {
    //MARK: - Define property as injection protocol instead of pass direct concurrent implementation class
    private var paymentService: PaymentService

    // Injected via constructor
    init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }

    func createUser() {
        paymentService.processPayment()  // Using the injected PaymentService
    }
}

