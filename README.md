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

<center> <h3> Copyright © 2019 NJU.py. All rights reserved.

<center> <h3>All rights reserved.

# Introduction

Design patterns provide us with a general reusable solution to a common design problem.  They are reusable  since they are tested again and again in design problems. My partner and me use desgin patterns to deal with the atcual requirment problems. Our thoughts and part of the implementations are listed as followed. The system is a model app in swift3.x, including a basic UI. I strongly recommend that you use Xcode to compile the whole project for it is only a small model without many tests.  And it is a example for green hands in ios to 



# Design patterns applied 

# 

## Component1

We use **strategy pattern** to meet the requirments in this part. The requirment itself is not complex: Develop different borrowing methods for different user objects and **new methods or adjustments** can be accommodated. In such case, more attention are focused on the borrowing methods, and the 

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

- Why we use **strategy pattern** ?

**strategy pattern**  is an object behavioral pattern, mainly for a set of algorithms, each of which is encapsulated into a separate class with a common interface, so that they can be replaced with each other. **strategy pattern** allows the algorithm to change without affecting the client. In general, **strategy pattern** is useful when an application needs to implement a particular service or function, and the program has multiple implementations. According to the requirement, document formats reading is a part of a class that changes frequently or may change in the future. It is suitable to encapsulate document formats reading into a separate class with a common interface for future extension.

- How we use **strategy pattern**?

According to the requirement,document formats reading is a part of a class that changes frequently or may change in the future. Because of  this reason, we extract the document formats reading as an interface and then include an instance of this object in the class, so that the instance of the class can call the behavior of the class that implements the interface at runtime.

There are three objects in the strategy pattern:

(1) Environment object: A reference to an interface or abstract class defined in an abstract policy is implemented in this class. In our system, Environment object is ReaderContext Class.

(2) Abstract strategy object: It can be implemented by an interface or an abstract class. In our system,Abstract strategy object is Reader.

(3) Specific strategy object: It encapsulates different algorithms that implement the same function. In our system,there are three specific strategy objects. They are DocReader , PDFReader and EPUBReader.

- Advantanges of using **strategy pattern**?

Because of using **strategy pattern**, we can dynamically change the behavior of an object. We don't need to worry about  addition and modification of document formats reading. we follow the principle of opening to the extension and closing the revision to make our app more extensible. For adding a document formats reading, we only need to create a new class which implements Reader interface and don't need to modify client code.For modifying a document formats reading,we only need to modify corresponding concrete document formats reading class  and also don't need to modify client code.

Besides, we also think **factory** **method** **pattern** is suitable to Component3. Compared to **strategy pattern**, we do insist that **strategy pattern** is more suitable so we select **strategy pattern** and abandon **factory** **method** **pattern**. Next, we will explain to you the benefits of **factory** **method** **pattern**and reasons why it is not as good as **strategy pattern**.

* 


By **factory** **method** **pattern**, our system can return instances of different Reader classes depending on the parameters. **Factory** **method** **pattern** specifically defines a ReaderFactory class to be responsible for creating instances of Reader classes, and the created instances have a common parent class(In our system , it's Reader class).The factory class contains the necessary judgment logic to determine when to create an instance of the Reader class. In that case,the client can dispense with the responsibility of directly creating the Reader object and only "consume" the Reader class.**Factory** **method** **pattern** implements the separation of responsibilities through this approach, which provides specialized factory classes for creating specific Reader objects.The client does not need to know the class name of the specific Reader class created, and only needs to know the parameters corresponding to the specific Reader class.  In all,  Separating the creation of a Reader from the business processing of the Reader itself make our system reduce the degree of coupling of the system, making it relatively easy to modify both. 


* Why we abandon **factory** **method** **pattern** and select **strategy pattern**?

**strategy pattern **focuses on behavior and the encapsulation of the algorithm but **factory** **method** **pattern** focuses on creating the objects that are needed.For document formats reading,we do argue it behaviour not creating objects. In addition to it,The factory class(ReaderFactory) can only create Reader  classes that may be used. If a new Reader class is added, the factory class must be modified, which violates the opening and closing principle.When there are many Reader types, the factory logic may be too complicated, which is not conducive to system expansion and maintenance. Because of these reasons, we do select **strategy pattern** not **factory** **method** **pattern**.

**PS**:In our system's specific implementation, we combine **strategy pattern** with **factory** **method** **pattern**, and initialize it in the factory mode in the context class initialization. 

 **Let us explain to you  the advantages of combining the two patterns.**（这里需不需要放上代码截图呀）
If the Main function is a client, then every time we add an algorithm, we have to modify it once on the client side, adding an else if, causing unnecessary trouble. So, in the current situation, we first know the existing DocReader,PDFReader and EPUBReader three algorithms, but we are not sure which algorithm to use at runtime, and in order to isolate the client and business logic code, we can create the client creation algorithm. The business logic of the class is transferred to the Cotent class and a method of creating an algorithm factory is added.


## Component4

Obviously, **observer pattern** matches the requirments very well,

 