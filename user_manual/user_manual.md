# DCU LibraryApp - SeatGrab User Manual
---
---
##### Available on Android
---

---
### Table of Contents
---
1. Introduction
2. Ethics
3. Installation
4. Log in as student 
5. Student reads Map
6. Student reserves a seat
7. Student leaves seat unexpectedly
8. Student returns to seat within time limit
9. Student does not return within time limit
10. Student is finished with seat
11. Student adds information to study planner
12. Student removes information from study planner
13. Student checks library opening hours
14. Student logs out
15. Log in as administrator
16. Admin reads seat map
17. Admin removes user from seat
18. Admin logs out
 
# 1. Introduction
---
The need for this system arose from past experiences of wasting time in the DCU library by checking every corner just trying to find a seat, and in particular to find no seat at all when exams are looming (busiest time of year). Another motivation for this app is to prevent library users from reserving seats for their friends, which is a massive issue in DCU library. This system will save users time and money as they will be able to plan when to go to the library when seats are available.

Our solution tackles the problems outlined above, through NFC technology, a database and hardware available on smartphones. Using our application, a user will have to scan an NFC tag that is stuck to the desk and reserve the given seat. This action will update the live map, available on the application, changing the colour of the seat from green (available) to red (occupied). This process will allow users to check at any time how busy the library is, and whether or not their favourite seat(s) are occupied or not. Once users have completed the process of occupying a seat, the [accelerometer](https://www.livescience.com/40102-accelerometers.html) in their phone is activated. If a large value is detected by the accelerometer (which is set at such a value that the user is likely to be walking as walking returns high values), the user will be notified that they have left their seat. They will be given a time limit in which they need to return in. If they do not return in their time limit, the admin will be notified of their absence and their belongings will be returned to the front desk and their seat will be made available.
Users may also set study goals in the study planner section of the app. Here they may set and remove targets that they set for themselves. Their information will be wiped after a three month period, in order to comply with GDPR.

---
# 2. Ethics
---
Our application does not require, nor ask for personal user information. We do not have accounts for users. As all students in DCU possess a Gmail account, and this application is for DCU students, we use Google sign in to acquire access to our application. Once a DCU Gmail account is recognised, users are then forwarded to input their DCU email and password credentials. We do not store user email or password information in our database as there is no need for this information. The only user information that is stored is user email. User email is stored so that users may access their study planner information. User email is not shared with any third parties. Only developers of the application have access to the user emails that are stored in the database. As mentioned previously, user email and study planner information is wiped every three months, as to comply with GDPR. 

---
# 3. Installation
---

---
# 4. Log in as student
---
**Prerequisites for logging in as a student**
1. Must have Android phone or iPhone 7 or higher.
2. DCU email, and DCU username and password.

**Logging in as student**
1. Click into application.
2. Tap button "Log in as student".
3. Enter DCU email, and press "next".
4. Enter DCU email and password and press "Login".
5. Upon succesfully completing the above steps, the user will be brought to the home page of the application.

---
# 5. Student reads map
---
1. To navigate to the Map page from the Home page of the application, click the "Seat Map" button on the bottom navigation bar of the screen.
2. At the top of the page, the percentage of occupied seats is printed. Below is the map of all seats. A red seat indicates an occupied seat. A green seat indicates an available seat.

---
# 6. Student reserves a seat
---
1. The student user should be at the desired, available desk that they wish to occupy.
2. From the home page, the user should tap the animated icon at the bottom of the screen, below the instructions box. A pop up will appear, reminding the student to turn on NFC in their phone.
3. The user will be navigated to a new page. A list of instructions will appear at the bottom of the screen. The user must follow these instructions to succesfully reserve a seat.
 
---
# 7. Student leaves seat unexpectedly
---
1. The user has moved their phone with enough force to trigger a pop up message, notifying them that they have left their seat. The message displays the time the user left their seat, and the time they must return by.

---
# 8. Student returns to seat within time limit
---
1. The user returns to their seat within their set time limit. 
2. The user must scan their phone again over the NFC tag, and reserve their seat again to restore their status to normal.

---
# 9. Student does not return within time limit
--- 
1. The student has not returned to their seat within their set time limit, having been previously notified.
2. The admin is notified that the student's seat has been unoccupied for over the time limit.
3. The admin staff removes the belongings at that desk, which are stored with the library staff at the information desk.
4. The student's desk is made available on the map for other students to use.

---
# 10. Student is finished with seat
---
1. When the student has finished their session in the library, to make their seat free again, they simply press the '3. Click here to clear up your seat for someone else ' button on the seat reserve page of the application.
 
---
# 11. Student adds information to study planner
---
1. To access the study planner, press the 'Study Planner' button on the bottom navigation bar. 
2. To add to the planner, press the plus sign icon in the top right corner of the study planner page. Simply add information to the 'Module name' field and add information to the 'To do list' field below. Once all information is added, press the "add module" button at the bottom right corner of the form.

---
# 12. Student removes information from study planner
---
1. To remove information from the study planner, simply hold down over a list entry for five seconds. To confirm the entry has been deleted, press the refresh button in the top right corner of the page.

---
# 13. Student checks library opening hours
---
1. To check the library opening hours, press the "Library hours" button on the bottom navigation bar of the screen.
2. A screen with the DCU logo will appear.
3. Scroll down the page until presented with the library opening hours for the week.

---
# 14. Student logs out
---
1. To log out of the application, press the stickman icon at the top right corner of the screen.
2. The user will be brought back to the login page of the application.

---
# 15. Log in as administrator
---
1. To log in as an administrator, click "Login as admin", at the login screen.
2. The correct password will need to be inputted.
3. Upon successfully logging in as administrator, the admin will be navigated to the administrator seat map page.

---
# 16. Admin reads seat map
---
1. The administrator map can be accessed by pressing the "Check Map" button on the bottom navigation bar of the screen.
2. A seat map will be available. Seats can be one of four colours.
2.1 Green: The seat is available and not occupied.
2.2 Blue: The seat is occupied, and the student is sitting at their desk.
2.3 Orange: The seat is occupied, the student has left their desk, but they still have time to return to their desk.
2.4 Red: The seat is occupied, the student has left their desk, and they have not returned in the time limit. The admin should remove the belongings of this student.

---
# 17. Admin removes user from seat
---
1. To remove a user from their seat, the admin must navigate to the "Alter Map" page, by pressing this button on the bottom navigation bar.
2. The admin will be presented with the status of all seats.
3. When a seat becomes red, and the belongings have been removed, simply tap on the tile that is red. This resets all values of the desk, thus making it available once again.

---
# 18. Admin logs out
---
1. To log out of the application, press the stickman icon at the top right corner of the screen.
2. The user will be brought back to the login page of the application.












