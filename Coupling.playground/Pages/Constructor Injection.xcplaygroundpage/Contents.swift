//
//  Constructor Injection.swift
//
//
//  Created by Eslam on 20/01/2025.
//


// MARK: - Step two from IOC Into Dependency Injection using constructor injection
/// DI follow IOC

protocol PaymentService {
    func processPayment()
}

class PaymentServiceImpl: PaymentService {
    func processPayment() {
        print("Payment processed!")
    }
}
public class MondiaMediaPaymentService: PaymentService {
    func processPayment() {

    }

}
// 2. Inject PaymentService into UserService via constructor (DI)
class UserService {
    private var paymentService: PaymentService

    // constructor injection
    init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }
    func displayPayment() {
        paymentService.processPayment()
    }
}

// 3. Inject dependency when creating UserService instance
let paymentService = PaymentServiceImpl()
let userService = UserService(paymentService: paymentService)

