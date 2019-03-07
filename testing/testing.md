# DCU LibraryApp Testing

---
### Table of contents
1. Ethical approval
2.
3.
4. Manual testing
5. User testing
6. 

---

# 1. Ethical Approval

We seeked ethical approval as we are of the opinion that User testing is a vital part of the testing process, and we wanted to ensure the participant was protected through all stages of the testing process, as well as the user of the system. Ethical approval also allows the option for real users to log in to the system, which encourages real world capabilities.

---

# 2.

---

# 3.

---

# 4. Manual testing

Manual testing was prevelant throughout the development of the application. Through use of Android studio's "hot reload" feature with an emulator or Android phone, manual testing proved a quick and efficient way to test if the output was what we desired. A simple print statement frequently provided the insight needed when our expectations of the output of our script did not meet the reality of the output. No doubt many errors and bugs were caught early on due to the efficiency of manual testing in Android Studio. 

---

# 5. User Testing

User testing is a crucial part of testing software. User testing gives developers feedback as to whether the user can use the software, if not why so, and what problems were encountered or identified. This is also a useful exercise for developers to take on a different point of view of the application, and the different opinions that come with these points of view. It is very easy for a developer to neglect elements of the UI or functionality if there is no diversity of opinion.
It is important to note that we seeked ethical approval in order to carry out user testing. Our ethical approval submission can be found on this project page, in the "docs" repo, "docs/ethics.pdf".
The user testing was carried out with an anonymous survey. Accompanying the survey, was a plain language statement and an informed consent form for participants of the survey. The ethical approval form can be found in the docs repo, under "docs/ethics.pdf". In the survey we asked the participants' several questions after they had used the application to complete tasks within the app. We asked the participants did they find the design of the application effective? ie how easy was it to use. We asked them did the system serve the function they desired from it. We asked was the UI confusing/ impact negatively upon the user's experience. We asked, if anything, what did they find difficult using the application. We asked did they feel any parts of the applcation were unnecessary and would they add anything to the application.
The results from the testing are displayed below.

User testing did force us to take on board feedback from users as problems were brought to our attention. Overall, the feedback was what we would have hoped for as we recieved very positive responses from participants and a problem was brought to our attention which we could fix before submitting the prject. 

We recieved several comments mentioning that our home page was hindering the efficiency of reserving a seat. We also recieved comments suggesting to remove the home page. The feedback is included below:



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

This test notified us of bugs 


---