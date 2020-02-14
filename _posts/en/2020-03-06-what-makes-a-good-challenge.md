---
date: 2020-03-06
title: What makes a good challenge?
description: ChallengeHub enables a variety of challenge styles. You can do better than multiple-choice!
reading_minutes: 4
categories:
 - ChallengeHub
author_staff_member: james
ref: 2020-03-06-what-makes-a-good-challenge
lang: en
---
ChallengeHub enables a variety of challenge styles. A key innovation at ChallengeHub is the ability for students to check the answers to with ChallengeBot in real time. This gives them a motivational win when they get it right and keeps them in the flow to come at the challenge from a different angle when they get it wrong.
Students do this by entering a number or some text, and ChallengeBot responds by informing the student whether the proposed answer is correct or not. By not knowing the answer ahead of time, deep learning is encouraged as the temptation to work backwards from a given answer is removed. This post outlines examples of what does - and does not - make a good challenge.

\<shortcuts to challenge style headings\>

## Numerical solutions - good!
A unique ability of ChallengeHub is for numerical answers to be specified with a given tolerance. For example:

- Calculate the derivative of ```f(x) = x<sup>2</sup> + 3.5x + 4```
- To check your solution, substitute ```x=2``` into your final answer.
    
In this case, the solution is ```f'(x) = 2x + 3.5```, and so the student would substitute ```x=2``` to obtain 7.5. Although unlikely in this simple example, to account for rounding errors ChallengeHub allows the teacher to specify a tolerance. For example, if the tolerance is 1%, then any answer between 7.425 and 7.525 would be accepted here as being correct. Note that students can also use e-notation for very large or small numbers; for example, entering ```1.3e4``` instead of ```13000```.

There are some cases where a unique check is difficult but a strong indication of the correctness can be achieved. For example, in cases where the final solution is a matrix, the instruction could simply be

- Your final solution will be a 2x2 matrix. To check your answer, add all the numbers in the matrix.

Another example with complex numbers could be:

- Your final solution will be a complex number of the form ```a+bi```. To check your solution, calculate a+10b.

or

- Your final solution will be a complex number of the form ```a+bi```. To check your solution, enter the magnitude of the complex number.

Although this does not generate a unique check, it provides a good immediate indication about correctness for both teacher and student, and can keep students in the flow if they have clearly got the answer wrong. Furthermore, the teacher can review a few challenge logs in the class to ensure correct calculation.

\<tolerance picture\>

### Multiple choice - avoid!

The ideal challenge promotes deep thinking and discussion in the classroom. It discourages random guessing. A common default is for teachers to ask students multiple-choice questions. For example:

- \<The bottom of the two figures at https://upload.wikimedia.org/wikipedia/commons/b/b7/Pendulumphase.png\>
- Considering the above figure, if the initial angle of the pendulum is π and the initial angular velocity is 0 rad/s, what happens to the pendulum?
  - a) The pendulum is stationary
  - b) The pendulum swings back and forth
  - c) The pendulum spins round in one complete loop

In this case, there is a strong temptation for students to simply randomly enter "a", "b" or "c" until they get the answer correct, and then perhaps work backwards to figure out why that answer is correct (resulting in shallow learning) or simply moving on to the next challenge (giving the teacher the false indication that the student understands the concept and is keeping up with the course).

## True/False Binary addition - good!
An alternative to multiple choice is a **True/False binary addition** problem. Considering the same figure, the challenge could instead be:

- Add the points of the following true statements:
- **1 point** An initial angular velocity of 1 unit results in whirring circular motion irrespective of the starting angle.
- **2 points** An initial angular velocity of -2.5 units results in whirring circular motion irrespective of the starting angle.
- **4 points** An initial angle of π/2 combined with an angular velocity of 1 unit results in periodic swinging motion.
- **8 points** An initial angle of π/2 combined with an angular velocity of 1 unit results in circular whirring motion.
- **16 points** An initial angle of 0 combined with an angular velocity of 0 units results in periodic swinging motion.
- **32 points** An initial angle of 0 combined with an angular velocity of 0 units results in a stationary system.
- **64 points** An initial angle of π combined with an angular velocity of 0 units results in a stationary system.
- **128 points** An initial angle of π/2 combined with an angular velocity of 0 units results in a stationary system.
- **256 points** An initial angular velocity of 3 units results in whirring circular motion in the same direction as an initial angular velocity of -3 units.
- **512 points** An initial angular velocity of 3 units results in whirring circular motion in the opposite direction as an initial angular velocity of -3 units.
- Enter your final answer as an integer.

Each statement is a true/false statement, and adding different statements results in a unique sum. The chance of simply randomly guessing the solution has gone from 1/3 to 1/(2<sup>10</sup>).

### Word selection - avoid!
Consider the following challenge:

- Convection is a form of thermal transport. Name the other two.
    
The answer the teacher is looking for in this case is "conduction and radiation". ChallengeBot matches the entire text, so "radiation and conduction" or even "conduction & radiation" would not be matched. Also, this encourages guessing, and so is discouraged.

## Order placement challenges - good!

A way to make use of strings without requiring word ambiguous word selection is to enable pattern matching. For example:

- The following 5 graphs (a,b,c,d,e) correspond to the following 5 equations. Place the graphs in the same order as the equations below.
- Submit your answer in the form abcde.

Here, it is clear how the text should be entered, and with just a 1/120 chance of randomly guessing the answer, learning is encouraged.

## Rating only - ok
In some cases, perhaps where an essay or written paragraph is required, the above options are not appropriate. For such cases, the teacher has the option to simply ask for a difficulty rating upon attempt of the challenge to gauge progress by students.

## Last word
From a teacher's time-management perspective, it's also good to keep in mind a healthy ratio between the time it takes to create a challenge and the time it takes for a student to read relevant resources and complete a challenge, so that both learning *and* teaching efficiency is high.

Overall, ChallengeHub enables some unique challenge styles that encourage deep learning among students. We always encourage \<feedback - link to info?\> and innovations from the teachers we support, so that ChallengeHub can support a growing range of pedagogical styles.
