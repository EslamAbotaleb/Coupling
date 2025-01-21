import Foundation

//MARK: - Tightly Coupled

/// PaymentService Module
public class PaymentService {

    public init() {}

    public func processPayment(amount: Double) {
        print("Processing payment of \(amount) dollars.")
    }
    public func refundPayment(amount: Double) {
        print("Refunding payment of \(amount) dollars.")
    }
}
/// EmailService Module
public class EmailService {
    public init() {}
    public func sendWelcomeEmail(to email: String) {
        print("Sending welcome email to \(email)")
    }
}


/// UserService Module
public class UserService {

    //MARK: - call direct concurrent implementation class for PaymentService
    private var paymentService: PaymentService
    //MARK: - call direct concurrent implementation class for EmailService
    private var emailService: EmailService

    public init() {
        // Directly creating the dependency (PaymentService) inside the constructor
        self.paymentService = PaymentService()
        self.emailService = EmailService()
    }

    public func createUser(name: String, email: String) {
        print("User \(name) created with email: \(email)")
        // Tightly coupling by directly using the PaymentService to handle some action
        paymentService.processPayment(amount: 100.0)
    }
    public func deleteUser(name: String) {
        print("User \(name) deleted.")
    }
    //MARK: - function not related yet to UserService
    public func sendWelcomeEmail(to email: String) {
        print("Sending welcome email to \(email)")
    }
}


//MARK: - Implemenation
// Create the UserService instance directly
let userService = UserService()

// Use UserService to create a user, which also creates a payment via PaymentService
userService.createUser(name: "John Doe", email: "john.doe@example.com")

// Use UserService to delete a user
userService.deleteUser(name: "John Doe")

// Use UserService to send a welcome email
userService.sendWelcomeEmail(to: "john.doe@example.com")

/*
 So from this In case of need to change in the future from PaymentService into new implementation, like a PaypalPaymentService or StripePaymentService will hard to maintenance in this module UserService
 */
