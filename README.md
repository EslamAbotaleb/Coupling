# Software Design Principles

This project demonstrates various **Software Design Principles** focused on **Dependency Injection** and **Coupling**. Below are the key concepts explained in detail:

---

## 1. Tightly Coupled

**Tightly Coupled** refers to a scenario where components or classes in a system are highly dependent on one another. In tightly coupled systems, changes in one component often require changes in another, which makes the system harder to maintain, modify, or extend. High interdependency leads to increased complexity and a higher risk of bugs when updating or refactoring code.

---

## 2. Loosely Coupled

**Loosely Coupled** refers to a design where components or classes in a system are independent of each other. In loosely coupled systems, changes in one component typically do not affect others, which increases flexibility, maintainability, and scalability. It allows components to be more easily replaced, modified, or extended without impacting the entire system.

---

## 3. Inversion of Control (IoC)

**Inversion of Control (IoC)** is a design principle where the control of object creation and the flow of the program is transferred to an external framework or container, rather than being handled within the classes themselves. The benefit of IoC is that it decouples the components in a system, making it more flexible and easier to test. Instead of the class managing its dependencies, the dependencies are provided by an external system or container.

---

## 4. Dependency Injection (DI)

**Dependency Injection** is a form of **Inversion of Control** where dependencies are provided to a class from the outside, rather than being created within the class itself. The primary goal of Dependency Injection is to decouple the class from its dependencies, making the system more modular, testable, and easier to maintain.

### 4.1 Constructor Injection

**Constructor Injection** is a method of **Dependency Injection** where dependencies are provided through the constructor of a class. This ensures that all dependencies are available when the object is created and that the object’s state is fully initialized before use. Constructor Injection is often preferred because it enforces that the required dependencies are provided at object creation time.

### 4.2 Method Injection

**Method Injection** is a form of **Dependency Injection** where dependencies are provided through a method call. This allows dependencies to be injected only when they are needed, providing flexibility and potentially reducing the amount of memory usage. However, it can make the class behavior harder to follow, as dependencies are not consistently available throughout the object's lifecycle.

### 4.3 Property Injection

**Property Injection** is a method of **Dependency Injection** where dependencies are injected into an object's public properties or fields after the object has been created. This can provide flexibility by allowing dependencies to be changed or added after the object is instantiated. However, it may lead to inconsistent states if the dependencies are not properly set before use.

---

## 5. Dependency Inversion Principle (DIP)

The **Dependency Inversion Principle (DIP)** is one of the five SOLID principles of object-oriented design. It states that high-level modules should not depend on low-level modules; both should depend on abstractions. Additionally, abstractions should not depend on details; instead, details should depend on abstractions. This principle encourages the decoupling of high-level business logic from low-level implementation details, making the system more flexible and easier to maintain. The goal of DIP is to make high-level modules independent of low-level modules, reducing the impact of changes in low-level modules on the high-level business logic.

---

By adhering to these principles, you can design systems that are more flexible, maintainable, and scalable. Dependency Injection, along with Inversion of Control and Dependency Inversion, allows you to build loosely coupled systems that are easier to test, extend, and modify.
