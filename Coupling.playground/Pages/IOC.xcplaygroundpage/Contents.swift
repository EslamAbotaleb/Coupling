//
//  IOC.swift
//
//
//  Created by Eslam on 20/01/2025.
//
// MARK: - Step one will deal with Inversion Of Control (IOC)
/// IOC responsible for control instantiate  object

class UserService {

    //MARK: - 
    //MARK: - Define property as injection protocol instead of pass direct concurrent implementation class
    private var paymentService: PaymentService
    
    // Injected via constructor
    /// inject protoc lwwithout concrete implment
    init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }

    func displayPayment() {
        paymentService.processPayment()  // Using the injected PaymentService
    }
}

