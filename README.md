Makers Academy Week 1 Project (Boris Bikes)
===========
![200px-barclays_cycle_hire_logo svg](https://cloud.githubusercontent.com/assets/9297921/5564939/ce8d1bc8-8ed2-11e4-8799-8973817ca23b.png)
     
The Project in Week 1 was to design a simple bike rental system based on the London "Boris" bike network. This was designed to be an introduction to the very basics of Object Orientated Programming (OOP) and Object Orientated Design (OOD). 
   
The steps were as follows:  
  
1. Build a Domain Map by writing the problem out in English, and picking suitable candidates to build as *Classes*.  
2. Building ["Class Responsibility Collaberation" (CRC) cards](http://en.wikipedia.org/wiki/Class-responsibility-collaboration_card) to define the classes and what they will do.    
3. Starting the project off by building a GitHub repo and a local directory. 
4. Building the first class: **BIKE**, using RSpec to drive the design with unit testing. Refactoring when tests pass. 
5. Adding a second class: **DOCKING STATION** using the same techniques as for **BIKE**.
6. Adding classes: **VAN** and **GARAGE** again, all test driven and sticking to the CRC cards. 
7. Creating a ruby Module to extract common functionality. Basically amounting to a major refactoring of the code, which is based on another new concept: [**DRY** (Don't repeat yourself)](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself)
8. Lastly, the refactoring of the spec files to contain **Doubles** based on the [London Style of TDD](http://programmers.stackexchange.com/questions/123627/what-are-the-london-and-chicago-schools-of-tdd) which briefly amounts to removing the reliance of other classes when testing an individual class. 
  
###CRC Cards
  
Based on the briefing, the team I worked in identified classes and made the following CRC cards: **Bike**, **Docking Station**, **Van**, & **Garage**. They looked like this:   


**Bike**  
  
| Responsibilities                              | Collaborators  |
| :-------------------------------------------- |:---------------|
| Can be rented                                 | Docking Station| 
| Can be broken                                 | Passenger      |
| Can be fixed                                  | Van            |
|                                               | Garage         |
    
    
**Docking Station**  
  
| Responsibilities                              | Collaborators |
| :-------------------------------------------- |:--------------|
| Should accept/release a bike                  | Bike          | 
| Should have a fixed capacity                  | Van           |
| Should know when full/empty                   |               |
    
    
**Van**  
  
| Responsibilities                               | Collaborators  |
| :--------------------------------------------- |:---------------|
| Should accept/release a bike                   | Bike           | 
| Should have a fixed capacity                   | Garage         |
| Should know when full/empty                    | Docking Station|
| Can move bikes between Docking Station & Garage|                |
    
    
**Garage**  
  
| Responsibilities                               | Collaborators  |
| :--------------------------------------------- |:---------------|
| Should accept/release a bike                   | Bike           | 
| Should have a fixed capacity                   | Garage         |
| Should know when full/empty                    | Docking Station|
| Can fix a broken bike                          |                |
   
   
*Note the similarity in responsibilities between Van/Docking Station/Garage - hints at a possible refactoring later in the project. 
   
### New Concepts/Techniques
   
+ CRC cards, domain models.
+ Using **Modules** in Ruby as part of the refactoring process.
+ Introduction of 'Doubles' during testing. 
+ Using a simple file to load up all classes into IRB (openall.rb in the repo)
+ A general streching of my Ruby programming ability. 
   
### Lessons Learned
   
It become clear at the very early stages that there are many, equally valid ways to approach a problem, and that its rather more important to get the ball rolling than to make the 'perfect' decision after lots of discussion. Get going - you can always change it later.  
   
Time spent on design help keeps a framework throughout the project, and is especially important in group work in order to keep the whole group on track. 

**END**

