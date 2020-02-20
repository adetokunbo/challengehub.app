---
date: 2020-03-06
title: What makes a good challenge?
description: ChallengeHub enables a variety of challenge styles. You can do better than multiple-choice!
reading_minutes: 3
categories:
 - ChallengeHub
author_staff_member: james
ref: 2020-03-06-what-makes-a-good-challenge
lang: en
---
A powerful feature of ChallengeHub is the ability of students to check their solutions in real time.
Number and text-based solutions are supported which enable a variety of challenge styles.

Students check their solution by sending it to ChallengeBot, which responds by informing the student if it is correct.
Being unable to see the solution before getting it correct ensures the solution cannot be derived backwards.

This post outlines examples of what does - and does not - make a good challenge.

## Numerical solutions — good!
A unique ability of ChallengeHub is for numerical solutions to be specified with a given tolerance.
For example, consider the challenge:

> Calculate the derivative of ```f(x) = x² + 3.5x + 4```.\\
> To check your solution, substitute ```x=2``` into your final solution.

In this case, the solution is ```f'(x) = 2x + 3.5```, and so the student would substitute ```x=2``` to obtain ```7.5```.
A tolerance on the solution can also be specified, such as ```7.5±1%``` or ```7.5±0.1```.
This is particularly useful for complex challenges involving many steps where rounding errors may accumulate.

![Tolerance UI](/images/blog/2020-03-06-tolerance.png){: .framed-image }

There are some cases where a unique check is difficult but a strong indication of the correctness can be achieved.
For example, in cases where the final solution is a matrix, the instruction could be:

> Your final solution will be a 2x2 matrix.\\
> To check your solution, add all the numbers in the matrix.

Another example with complex numbers could be:

> Your final solution will be a complex number of the form ```a+bi```.\\
> To check your solution, calculate a+10b.

or perhaps

> Your final solution will be a complex number of the form ```a+bi```.\\
> To check your solution, enter the magnitude of the complex number.

Although this does not generate a unique check, it provides a good immediate indication about correctness for both teacher and student, and can keep students in the flow if they have clearly got the solution wrong.
If desired, the teacher can still review a few challenge logs in the class to ensure correct calculation.

### Multiple choice — avoid!

The ideal challenge promotes deep thinking and discussion in the classroom.
It discourages random guessing.

A common reflex however is for teachers to ask students multiple-choice questions.
For example:

> ![Pendulum phase](/images/blog/2020-03-06-pendulum-phase.png)
> Considering the above figure, if the initial angle of the pendulum is π and the initial angular velocity is 0 rad/s, what happens to the pendulum?
  - a) The pendulum is stationary
  - b) The pendulum swings back and forth
  - c) The pendulum spins round in one complete loop

In this case, there is a strong temptation for students to randomly enter "a", "b" or "c" until they get the solution correct, and then perhaps work backwards to figure out why that solution is correct.
Other students may even then move on to the next challenge, giving the teacher the false impression that the student understands the concept and is keeping up with the course.

## True/False binary addition — good!
An alternative to multiple choice is a **True/False binary addition** problem.
Considering the same figure, the challenge could instead be:

> Add the points of the following true statements:
> 
> - **1 point** An initial angular velocity of 1 unit results in whirring circular motion irrespective of the starting angle.
> - **2 points** An initial angular velocity of -2.5 units results in whirring circular motion irrespective of the starting angle.
> - **4 points** An initial angle of π/2 combined with an angular velocity of 1 unit results in periodic swinging motion.
> - **8 points** An initial angle of π/2 combined with an angular velocity of 1 unit results in circular whirring motion.
> - **16 points** An initial angle of 0 combined with an angular velocity of 0 units results in periodic swinging motion.
> 
> Enter your final solution as an integer.

Each statement is a true/false statement, and adding different statements results in a unique sum.
The chance of randomly guessing the solution has gone from 1/3 to 1/(2⁵), and can be made even smaller if further options are added.

### Word selection — avoid!
Consider the following challenge:

> Convection is a form of thermal transport. Name the other two.

The solution here is "conduction and radiation".
ChallengeBot matches the entire text, so "radiation and conduction" or even "conduction & radiation" would not be matched.
Furthermore, this also encourages guessing, with the same problems as described earlier.

## Order placement challenges — good!

A way to make use of strings without requiring ambiguous word selection is to enable pattern matching.
For example:

> The following 5 graphs (a,b,c,d,e) correspond to the following 5 equations.
> Place the graphs in the same order as the equations below.\\
> Submit your solution in the form abcde.

Here, it is clear how the text should be entered, and with just a 1/120 chance of randomly guessing the solution, learning is encouraged.

## Rating only
In some cases, perhaps where an essay or written paragraph is required, the above options are not appropriate. For such cases, the teacher has the option to ask for a difficulty rating upon attempt of the challenge to gauge progress by students.

## Last word
From a teacher's time-management perspective, it's also good to keep in mind a healthy ratio between the time it takes to create a challenge and the time it takes for a student to read relevant resources and complete a challenge, so that both learning *and* teaching efficiency is high.

Overall, ChallengeHub enables some unique challenge styles that encourage deep learning among students.
Furthermore, we always welcome feedback and innovations from the teachers we empower, so that a growing range of pedagogical styles can be supported.
