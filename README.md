<center>  
    <h1> Nanjing University</h1>

<center> 
    <h1>Software Systems Design & Architecture 
</center>

<center><h1>Assignment 3: Library Info APP</h1>

<center> <h1>In Software Engineering Institute

<center> <h2>by 161250096 Yu Pan<br>
                &nbsp;&nbsp;&nbsp;&nbsp;161250029 Yu Ge
</center>

<center> <h3>Mail: panyuyuyu@outlook.com

<center> <h3>Copyright © 2019 NJU.py. All rights reserved.

<center> <h3>All rights reserved.

# Introduction

Design patterns provide us with a general reusable solution to a common design problem.  They are reusable  since they are tested again and again in design problems. My partner and me use desgin patterns to deal with the atcual requirment problems. Our thoughts and part of the implementations are listed as followed. The system is a model app in swift3.x, including a basic UI. I strongly recommend that you use Xcode to compile the whole project for it is only a small model without many tests.  



# Design patterns applied 

## Component1

We use **strategy pattern** to meet the requirments in this part. The requirment itself is not complex: Develop different borrowing methods for different user objects and **new methods or adjustments** can be accommodated. 

* Why we use **strategy pattern** ?

**strategy pattern**  is an object behavioral pattern, mainly for a set of algorithms, each of which is encapsulated into a separate class with a common interface, so that they can be replaced with each other. **strategy pattern** allows the algorithm to change without affecting the client. In general, **strategy pattern** is useful when an application needs to implement a particular service or function, and the program has multiple implementations. According to the requirement, borrowing method is a part of a class that changes frequently or may change in the future. It is suitable to encapsulate borrowing method into a separate class with a common interface for future extension.

* How we use **strategy pattern**?

According to the requirement, borrowing method is a part of a class that changes frequently or may change in the future. Because of  this reason, we extract the borrowing method as an interface and then include an instance of this object in the class, so that the instance of the class can call the behavior of the class that implements the interface at runtime.

There are three objects in the strategy pattern:

(1) Environment object: A reference to an interface or abstract class defined in an abstract policy is implemented in this class. In our system, Environment object is BorrowService Class.

(2) Abstract strategy object: It can be implemented by an interface or an abstract class. In our system,Abstract strategy object is BorrowMethod.

(3) Specific strategy object: It encapsulates different algorithms that implement the same function. In our system,there are three specific strategy objects. They are CommonBorrowMethod , StudentBorrowMethod and TeacherBorrowMethod.

* Advantanges of using **strategy pattern**?

Because of using **strategy pattern**, we can dynamically change the behavior of an object. We don't need to worry about  addition and adjustment of borrowing method. we follow the principle of opening to the extension and closing the revision to make our app more extensible. For adding a new borrowing method, we only need to create a new class which implements BorrowMethod interface and don't need to modify client code.For adjusting a borrowing method,we only need to modify corresponding concrete BorrowingMethod class  and also don't need to modify client code.

## Component2

**Visitor pattern** is applied in this part.



## Component3

We use **strategy pattern** again in this part, but some differences between component.



## Component4

Obviously, **observer pattern** matches the requirments very well,

 