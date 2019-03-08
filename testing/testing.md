# DCU LibraryApp Testing

---
### Table of contents
1. Ethical approval
2. 
3. Widget Testing
4. Manual testing
5. User testing
6. System testing
7. Heuristic evaulation

---

# 1. Ethical Approval

We seeked ethical approval as we are of the opinion that User testing is a vital part of the testing process, and we wanted to ensure the participant was protected through all stages of the testing process, as well as the user of the system. Ethical approval also allows the option for real users to log in to the system, which encourages real world capabilities.

---

# 2.

---

# 3. Widget Testing
 
In order to check if our Study Page widget was being displayed correctly we utilized some widget tests. This ensured the data we needed was being displayed correctly on the study page, and also if functions were working correctly. A sample of the tests and the results to those  tests are shown below.

![](testing/images/widget_tests.PNG)
![](testing/images/widget_tests_passed.PNG)



---

# 4. Manual testing

Manual testing was prevelant throughout the development of the application. Manual testing was perhaps the most consistently useful type of testing throughout the development of the application. Learning a new language and learning how to use a new framework had it's difficulties, but through use of Android studio's "hot reload" feature with an emulator or Android phone, manual testing increased our understanding of how everything was working. "Hot reload" is useful because it does not build the gradle or download dependencies within the project, it only reloads any dart files that have changed since the last upload. So a hot reload along with several print statements was the key for solving many of our largest problems encountered along the way. A simple print statement frequently provided the insight needed when our expectations of the output of our script did not meet the reality of the output. No doubt many errors and bugs were caught early on due to the efficiency of manual testing in Android Studio. Manual testing proved useful in particular with the accelerometer and NFC tags. Printing out accelerometer values to the screen of the phone was key when we were trying to gauge what is a reasonable value to detect within a student's phone that will determine they have left their seat. This involved walking around with the phone, and observing how much the values change with movement. A similar process of ouputting the "NFCData" (is a type) values for scanning different tags and gauging how long the tags typically take to be read by the phone. 

---

# 5. User Testing

User testing is a crucial part of testing software. User testing gives developers feedback as to whether the user can use the software, if not why so, and what problems were encountered or identified. This is also a useful exercise for developers to take on a different point of view of the application, and the different opinions that come with these points of view. It is very easy for a developer to neglect elements of the UI or functionality if there is no diversity of opinion.
It is important to note that we seeked ethical approval in order to carry out user testing. Our ethical approval submission can be found on this project page, in the "docs" repo, "docs/ethics.pdf". Before participants could complete the survey, they were presented with our plain language statement and had to complete our informed consent form. This can be observed  [here](https://docs.google.com/forms/d/e/1FAIpQLSdiHchtnUTVw6HJivAAIYsN8HhsHhFUvVQk2JiZsWLSjW6Fzw/viewform)
The user testing was carried out with an anonymous survey. Participants used the application then filled out an accompanying survey. Accompanying the survey, was a plain language statement and an informed consent form for participants of the survey. The ethical approval form can be found in the docs repo, under "docs/ethics.pdf". In the survey we asked the participants' several questions after they had used the application to complete tasks within the app. We asked the participants did they find the design of the application effective? ie how easy was it to use. We asked them did the system serve the function they desired from it. We asked was the UI confusing/ impact negatively upon the user's experience. We asked, if anything, what did they find difficult using the application. We asked did they feel any parts of the applcation were unnecessary and would they add anything to the application.
The results from the testing are displayed below.

Out of ten, how would you rate the design of our system: (1-10)

![](testing/images/survey1chrt1.png)

If you have any positive or negative comments about the design of the application, please leave them here:
- home page delays process of adding a seat
- How to reserve seats is unclear
- Love the design of it
- UI looks good, colour scheme is effective 

How would you rate the ease of use out of 10: (1-10)

![](testing/images/survey1chrt2.png)

If you have any positive or negative comments about the ease of us of the application, please leave them here:

- process of reserving a seat was confusing
- home page delayed the process
- could be less clicks to reserve a seat

Does the system function as you require:

![](testing/images/survey1chrt3.png)

If you chose "No" to the previous question, please mention why so, below:
- 0 responses

What did you find difficult, if anything, using this application:

- reserving a seat
- Reserving the seat itself
- scanning a tag was confusing as i have never done this before
- 
Is there anything you would add to the application, that you think is necessary:

- busy times of the library
- a profile to show details such as total time spent in library, most common time, most used seat etc
- Make the reservation button clearer

What parts, if any, did you find unnecessary in the application:
 
- home page
- The main screen button
- who is sitting at what desk
- home page was unnecessary

User testing did force us to take on board feedback from users as problems were brought to our attention. Overall, the feedback was what we would have hoped for as we recieved positive responses from participants, problems were brought to our attention and opinions were taken on board. It was clear that there was room to improve.

As seen above, we recieved several comments mentioning that our home page was hindering the efficiency of reserving a seat. We also recieved comments suggesting to remove the home page. We took this feedback on board and changed the design of the application to how it is now. We removed the old home page from the application, made the instructions more clear and provided more pop up updates to users to help them know what stage in the process they are at. 

Once we had re-designed the application with the survey participants' opinion's on board, we invited the same participants back to complete the same survey again. The user's took part in the same process as before: participants maneouvred through our application, making use of the functionalities of the application and when they finished they were asked to fill out the same survey as before. We were extremely pleased with the results from the second survey. Participants reported an improvement in the reservation process compared to their first use of the app, and reported their approval of the removal of the old home page. This was reflected in their quantatative results of the usability and design of the survey. The results were more concentrated towards the higher end of the scale from 7-9, in comparison to the previous survey where results varied from 4-10. 
Aside from the improvement detailed above, this survey also provided us with ideas for future work with this application. We recieved great suggestions from participants. There may be issues with GDPR with tracking what users occupy what seat etc. as that would collect personal data from the user. We do intend to follow up with adding some sort of analytical tool that will present the user with the occupancy rate throughout the day and busy areas of the library too.

Out of ten, how would you rate the design of our system: (1-10)

![](testing/images/survey2chrt1.png)

If you have any positive or negative comments about the design of the application, please leave them here:

- good colour scheme
- application is smooth to use
- found it easy to move around the app without getting lost

How would you rate the ease of use out of 10: (1-10)

![](testing/images/survey2chrt2.png)

If you have any positive or negative comments about the ease of us of the application, please leave them here:
- reserve a seat process quicker than last time
- scanning process seems simpler
- reservation process is quicker than the old process

Does the system function as you require:

![](testing/images/survey2chrt3.png)

If you chose "No" to the previous question, please mention why so, below:

- -

What did you find difficult, if anything, using this application:0 responses

- -

Is there anything you would add to the application, that you think is necessary:

- busy times of library 
- most used seat, most frequent hour etc

What parts, if any, did you find unnecessary in the application:

--

Our survey can be found [here](https://docs.google.com/forms/d/e/1FAIpQLSdiHchtnUTVw6HJivAAIYsN8HhsHhFUvVQk2JiZsWLSjW6Fzw/viewform)


# 6. System testing: 
System testing can only be done when all components of the system are integrated. When the system was integrated, the system was tested to look for flaws. On our first attempt, we discovered that the system was not in fact, perfect, and errors were found using this system testing. Here is the example of our first system test:

- Succeeded entering DCU student Gmail address: Success
- Failed entering non DCU student Gmail address: Success
- Succeeded entering correct DCU username and password: Success
- Failed entering incorrect DCU username and password: Success
- Successful student login navigates to home page: Success
- Seat Map updates in real time for student to observe: Success
- Library occupancy rate is displayed at top of seat map page: Success
- Successful navigation to Study planner page using bottom navigation bar: Success
- Study planner successfully adds new module, and is visible after reload: Success
- Module is deleted after pressing down the selected module and pressing the refresh button: Success 
- Library times page is displayed upon pressing the Library times button on the bottom naviagtion bar: Success
- Library times are displayed from the library times page after using the downward scroll bar: Success
- NFC is activated in application when "Start NFC is pressed": Success
- NFC tag is read by the phone and seat number is displayed on screen: Success
- NFC tag is not read by phone when it has not been activated: Success
- NFC tag updates database succesfully: Success
- Accelerometer activates successfully after user occupies seat: Success
- Accelerometer does not activate before occupying seat: Success
- Accelerometer deactivates when seat rescanned/removed: Success
- Database is updated when accelerometer detects set value is exceeded: Success
- Database does not trigger when accelerometer value has not been exceeded: Success
- Pop up window appears when user breaks accelerometer set value: Success
- Pop up window informs user of time limit to return to seat by: Success
- Database updates when user does not return within time limit: Success
- Database returns user to normal status if they return within time limit: Success
- User vacates seat and database updates desk status to available: Success
- User logs out of system and is brought back to login page: Success
- Admin succesfully logs in with correct passcode: Success
- Admin fails log in using incorrect passcode: Success
- Successful admin log in brings user to administrator seat map: Success
- Failed admin login brings user back to admin login page: Success
- Seat map is fully visible to admin on administrator seat map page: Success
- Admin successfully navigates to Alter map page by pressing the Alter map button on bottom navigation bar: Success
- Admin taps the list tile with "Remove user" and database succesfully removes user: Success
- Admin succesfully logs out and is navigated back to the home screen: Success

On first attempt, this test notified us of bugs with changing the status of a desk from occupied to available and the accelerometer not turning off when a seat has been made available. Fixing the status of a recently made available desk was an easy fix. The accelerometer took more time because we had only used the accelerometer on one page that did not navigate away. The bug was fixed eventually. This was a useful piece of system testing that identified a bug before we could present it to people.

---
# 7. Heuristic evaluation

Having completed Human computer interaction in semester one this year, we felt that this module had useful information that we could apply to our project. We learnt about Nielsen's 10 principles for interaction design. These principles are applicable to us due to the high amount of user interaction in our application. 

7.1 Visibility of system status

- This principle states that the user needs to be informed about what is happening and/or what they are doing within the application. We recieved feedback in our user testing to make the user more informed about where they are in the seat reservation process. The feedback was taken on board and we included more pop ups to the reservation process and included clearer instructions of their status. The user is now informed when they have successfully reserved a seat, when they have left their seat, and when the admin has been notified of their absence.

INSERT PICTURE HERE

7.2 Match between system and real world

- This principle states that the system should speak the user's language and concepts should be familiar to the user, rather than technical concepts that the target audience would be unfamiliar with. A well designed system that follows real world conventions will make the learning process for the user as easy as possible. This was brought to our attention during the user testing. User's complained that the reservation process took too many clicks. Previously we required the user to scan the tag, then click another button to update the database. This was altered so that when the button is pressed, the application waits for the tag to be scanned, and then updates the database. Once this feature was added, and a second survey was done (see User Testing), the results of the ease of use increased in comparison to the first survey. We can recognise that the old implementation is alien to the average application user as they are not aware of having to manually update a datdbase.

INSERT PICTURE

7.3 User control and freedom

- This principle states a system must be able to support undo and redo functions as a user can make a mistake. We have a bottom navigation bar in our application that allows free navigation between all pages. This allows to change back to any page they were on previously.

INSERT IMAGE

7.4 Consistency and standards
- Users should not have to wonder whether different words, situations, or actions mean the same thing. This principle is demonstrated with our consistent UI design throughout the application, with clear instructions and labelling throughout reservation process and administrator removal process, and the clear labelling for the two different logins on the login page.

INSERT IMAGE

7.5 Error prevention
- Effective design will not inform users of errors, but instead prevent errors from occuring. This is demonstrated when incrementing and decrementing the total count of the occupancy in the library. Users are presented with occupancy rate at the top of the map page in the application. We identified several use cases in which the count could decrement below zero or increment above 9 (total number of seats used for proof of concept). Conditions were successfully put in place to prevent this error from occurring (if statements were used to check the count before adding or subtracting from the count). 

INSERT IMAGE

7.6 Recognition rather than recall
- This principle states that the system should seek to minimize the user's memory load by making objects, actions, and options visible. The user should not have to remember information from one part of the dialogue to another. Instructions for use of the system should be visible or easily retrievable whenever appropriate. This principle was applicable to the reservation process. As previously mentioned, we reduced the number of clicks required for the user to scan and reserve a seat. The design was changed so that the user simply needed to click a button to trigger the whole process. This principle was also applicable to the administrator removal process. The administrator is presented with a list of all seats. When conditions are met for the admin to remove the user, text is outputted "Tap to remove user" is alongside the seat number. 

INSERT IMAGE

7.7 Flexibility and ease of use
- Accelerators may often speed up the interaction for the expert user so that the system can cater to both inexperienced and experienced users. This principle applies to the Study planner section. Once a user has logged in their study details, the data is saved in the database and can be accessed at any time. This removes the need for the user to have to add in the same study details over and over again. A potential application of this principle to our application would be to add favourite seats, but this did not fit into our functionality. We require the user to be physically standing at the desk to remove users trying to book a seat. 

INSERT IMAGE

7.8 Aesthetic and minimalist design
- This principle refers to only including relevant pieces of dialogue on the page for the user. Any needless dialogue hinders the overall user experience. This principle was applied when removing a page from the application. Previously there was a home page which would lead the reservation page. The home page was needless, and only increased the number of clicks required to get to the required reservation page. This principle was also referenced to when designing the UI. Several UI designs were made until we arrived at the current design. The process involved trying to remove anything unnecessary from the design.

INSERT IMAGE

7.9 Help users recognize, diagnose and recover from errors
- This principle states that error messages should be expressed in plain language (no codes), precisely indicate the problem, and constructively suggest a solution. This principle is demonstrated when the user enters the wrong DCU email and password. An error message informs them that the information is incorrect.

INSERT IMAGE

7.10 Help and documentation
- This principle simply states that help and doumentation must be available to the user. Our user manual can be found [here](https://gitlab.computing.dcu.ie/byrnek68/2019-ca326-byrnek68-libraryapp/blob/master/user_manual/user_manual.md). The user manual provides documentation on all possible use cases of the application and how to perform each task possible within the application.











