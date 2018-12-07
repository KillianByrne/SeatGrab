**CA326**

**FUNCTIONAL SPECIFICATION DOCUMENT**

**KILLIAN BYRNE &amp; JOHN GRIFFIN**

**GROUP**
































**Table of contents**

1. **Introduction**                                                           
    - 1.1 Overview ...3
    - 1.2 Business context      ...4
    - 1.3 Glossary    ...5
2. **General Description**

    - 2.1 System Functions                                                        ...6

    - 2.2 User Characteristics and Objectives                                ...7

    - 2.3 Operational Scenarios                                                ...8/9/10

    - 2.4 Constraints                                                                ...11

3. **Functional Requirements**

    - 3.1 External Requirements                                                ...12

    - 3.2 User Opens Application                                                ...12/13

    - 3.3 User/ Administrative Login                                                ...13/14

    - 3.4 Reserving a seat                                                        …14/15

    - 3.5 Read map for users / administrative staff                        ...15/16

    - 3.6 Vacating seat for users/ administrative staff                        ...16/17

    - 3.7 User takes a break                                                        ...17/18

    - 3.8 User updates study planner                                                ...18/19

    - 3.9 User opts into &#39;Notification Free Mode&#39;                                ...19

4. **System Architecture**

5.**High-Level Design**

6. **Preliminary Schedule**

    - 6.1 Gantt Diagram 18/01/2019 - 21/02/2019

    - 6.2 Gantt Diagram 21/02/2019 - 11/03/2019

7. **Appendices**















**Section 1: Introduction**

**1.1 - Overview:**

- --This system provides users with an interactive map of the seats that are available or unavailable in the library (most relevant to University libraries). Users will make seats reserved by logging in to the library application on their phone, and then tapping their phone off an NFC tag that will be placed on the right hand side of their chosen desk. The interactive map on the application will then be updated and the seat they are in will appear red on the interactive map, informing other users that this seat is no longer available. Users will not be able to &#39;book&#39; a seat remotely.
- --The need for this system arose from past experiences of wasting time in the DCU library by checking every corner just trying to find a seat, and in particular to find no seat at all when exams are looming (as the number of students increases as time decreases in relation to exams). Another reason for this app is to prevent library users from reserving seats for their friends, which is a massive issue in DCU library. This system will save users time and money as they will be able to plan when to go to the library when seats are available.
- --This system will also give users the option to take a study break for periods of 5, 10, 15 or 30 minutes (maximum). Users must return within this time limit or else their seat will become available for library workers to make available on the library application and then other users may take their seat. There is a need for this function as currently, a sunbed-like system exists in the DCU library where students place their belongings on the desk and then leave for long periods of time.
- --The map itself will consist of an interactive coloured seats with four different colour of seats: Blue for an available seat with a charger, green for an available seat without a charger and red for a seat that is currently being used by a student and yellow for a seat that is reserved but the student is currently on a break.
- --The books may be removed from the desk at the discretion of the librarian by a student who has gone over their break by 15 minutes. The librarian may place books in the lost and found, tap their phone off the NFC tag which would reserve up seats.
- --For the &quot;study free&quot; zones in the library we propose that the app block all notifications, except for calls as some users may need to receive these for emergencies etc.
- --Our app will be intuitive and precognitive. It has to feel natural to users so basing our UI off existing websites and applications that users currently use is very important to us. Some users may not be technologically competent and this is fine, we will provide for them. It has to be as natural as checking an email or sending a message to a friend. We do not want the app to seem like it&#39;s representing the library, we want it to seem like its representing the users and there to serve them. This will be a key point in getting the users to use the app.
- --Our app will also be adaptable to many libraries and spaces and easy for the institutions/businesses to implement. Another key point if the app is to grow.



**1.2 - Business context:**

We genuinely believe as a group that this has a huge business potential. Our system of NFC reservation, while it may exist currently, is not being used in any libraries which it should be. We believe the system could be sold to libraries around Ireland, and even abroad as a cheap and easy solution to library overcrowding. This is only one benefit of the app, knowing how many users are seated and standing based on gate entrance numbers - current seats reserved has insurance and safety benefits for the colleges. The application not only applies to libraries but for instance schools. Students use their phones in class from the ages of about 12 (or even younger in some cases) all the way up to college level. Rather than trying an ostrich strategy of ignoring the problem, this could be a solution to accept they have phones and make progress with it. If the phone is on the tag we could add a setting to stop all notifications appearing on their screen, and teachers could tell from the interactive map who has removed their phone. This is only one example of how our application could be marketed to a number of institutions and work incredibly well. The prices charged could be changed from institution to institution but it is not unreasonable to ask for a sizeable fee if we do manage to solve a well known problem that the university encounters. To put into perspective how relevant this is currently, a recent email from DCU libraries, dated 01/12/2018 to the student body reads:

Dear Student,

I&#39;m very pleased to announce a pilot campaign in Cregan library to help increase seat availability during the busy exam period.

We got significant feedback from students in our recent survey who said they often cannot get a seat due to people leaving personal belongings behind to hold that space.

As a result, we will be monitoring this in Cregan from Monday 3rd Dec and clearing desks after **45 minutes of that desk being vacant.** (Personal items will be placed in a storage box for collection, which will be left under or adjacent to the desk)

 In a recent article in the Irish times about college libraries, DCU had by far the worse review:

&quot;Michael: The libraries on both DCU campuses are too small for purposes, with clapped out seats that are rarely free. The student population grew too fast for the size of the library.&quot;.

Would the university pay to reduce the amount of bad publicity its receiving ? Yes, we are sure of this.These clearly show there is a need for this application.



**1.3 - Glossary:**

- Dart: an object oriented language, developed by Google, that is used to build web, server and mobile applications
- Flutter: an open source web development kit, developed by Google, used to develop applications for ios and android.
- Firebase: a mobile and web application development platform and a Backend as a service.
- Backend as a service: a model for providing web and mobile application developers with a way to link their applications to a backend cloud storage, and also to APIs that are exposed to back end applications.
- NFC: Near field technology. A set of communication protocols that enable two electronic devices to establish communication by typically bringing them within 4 cm of each other. In our case,  a tag and a mobile phone.
- SVG: Scalable Vector Graphics is an XML-based vector image format for two-dimensional graphics with support for interactivity and animation.
- SDK: An SDK is a collection of software used for developing applications for a specific device or operating system. Examples of SDKs include the Windows 7 SDK, the Mac OS X SDK, and the iPhone SDK. SDKs typically include an integrated development environment (IDE), which serves as the central programming interface.
- XML: Extensible Markup Language (XML) is a markup language that defines a set of rules for encoding documents in a format that is both human-readable and machine-readable.







**Section 2: General Description**

**2.1 - System function:**

This is our list of main functions for our project. Obviously we are aware that as we progress throughout our projects, some items could be removed and others added and we are open to this.

The main elements we plan to provide are as followed:

- --Provide an interactive map using SVG to the user to check seating availability in the library.
- --Provide an interactive map using SVG to the admin to

help determine library occupancy at any given time and any users reserving desks longer than permitted.

- --Identify seating with different characteristics ie. Charger seat, Mobile free zone, group meeting zone.
- --Reserve seats using NFC technology for users.
- --Free up seats using NFC technology for admins.
- --Providing analytics using Dart to private to the user with study time, subjects studied etc.
- --Provide an optional notification free mode where the student can study without interruption if chosen.
- --A safe way to login for students and admins alike using firebase authentication. This is a service run and managed by google so login to DCU apps will be possible this way and with Googles internal expertise a students information will be safe. Firebase authentication uses SDKs, and ready-made UI libraries to authenticate users to applications.















**2.2 - User characteristics and objectives:**

- --Students: As the system is designed for a university library, we can assume that it is students who will use this application. We will assume the students at least possess a very basic knowledge of smartphone, internet and computer technology as we (students) are required to complete assignments in varying forms of technology. Thus we will assume the average user is capable of downloading a smartphone application, following simple instructions to place their smartphone on the NFC tag, and navigating through a very simple User interface.

- --Our objective is to make the process of occupying an empty desk as quick and easy as possible. We realize that users will not be as willing to participate in this system if the system is over complicated and takes more time than needed (We are keeping in mind that students are in the library to work/study, so a lengthy login system would disturb this). Thus it is important that the user can occupy a desk in the least amount of clicks as possible.

- --Administration Staff: It is very important to us to provide an administration login to the library staff. This gives the staff a basic understanding of what library seats are occupied. We do not intend to reveal the identity of any student in the admin application, only which seats are occupied/need to be vacated due to going over lunch time etc and the power to free seats up if needs be.

- --The application must be accessible to a large number of users which includes disabled users. This is due to the broad range of users that are in a student body, and each one must be able to use this. This ties back into our idea of a simple user interface. Flutter supports accessibility in three ways:
- --[Large fonts](https://flutter.io/docs/development/accessibility-and-localization/accessibility#large-fonts): Render text widgets with user-specified font font sizes
- --[Screen readers](https://flutter.io/docs/development/accessibility-and-localization/accessibility#screen-reader): Communicate spoken feedback about UI contents
- --[Sufficient contrast](https://flutter.io/docs/development/accessibility-and-localization/accessibility#sufficient-contrast): Render widgets with colors that have sufficient contrast.

These should help when making the application more accessible to users.







**2.3 - Operational scenarios:**

- _Michael (student) logs in to the system:_

    - **Current system state:** System is waiting for Michael to input his details.
    - **Informal scenario:** Michael inputs his login details that he acquired when he joined DCU.
    - **Next scenario:** Michael loads the interactive map.



- _Michael loads the interactive map:_

-
  - **Current system state:** System has loaded the interactive map.
  - **Informal scenario:** Michael uses the map to look for a spare seat in the library at present time.
  - **Next scenario:** Michael returns to the home page.

- _Michael returns to the home page:_

-
  - **Current system state:** System has loaded the home page.
  - **Informal scenario:** Michael has determined that there are several free seats in the library. He decides he will go to the library.
  - **Next scenario:** Michael chooses the &#39;scan a seat&#39; option on the app.







- _Michael chooses the &#39;scan a seat&#39; option on the app._

-
  - **Current system state:** System has loaded the user interface for the &#39;scan a seat&#39; option.
  - **Informal scenario:** Michael has arrived to a spare seat on the first floor of the library, he is ready to reserve this seat.
  - **Next scenario:** Michael scans his phone on the NFC tag on the table.

- _Michael scans his phone on the NFC tag on the table:_

-
  - **Current system state:** System is waiting Michael to either scan an NFC tag from a library desk in DCU, or to load the interactive map.
  - **Informal scenario:** Michael scans his phone off the NFC tag that is attached to the desk in the DCU library.
  - **Next scenario:** Michael chooses to take a break of 15 minutes.

- _Michael chooses to take a break of 15 minutes:_

-
  - **Current system state:** The option of a 15 minute break has been chosen, so a countdown timer of 15 minutes is set.
  - **Informal scenario:** Michael goes on his break.
  - **Next scenario:** Michael returns from his break.

- _Michael returns from his break:_

-
  - **Current system state:** The countdown timer is still running and has not run over its permitted time,
  - **Informal scenario:** Michael returns to his desk, and places his phone on the nfc tag. The timer ends and the study break is over.
  - **Next scenario:** Michael does not return from his study break.

- _Michael does not return from his study break:_

-
  - **Current system state:** The countdown timer hits zero and Michael has gone over his permitted time for study break. The system notifies Michael and the librarian on hand of this. The librarian can now place Michaels belongings on a lost and found trolley, scan their admin application on the NFC tag hence freeing up the study space for another student to use.
  - **Informal scenario:** Admin staff are notified Michael has not returned and they are now able to remove Michael&#39;s belongings.
  - **Next scenario:** Michael&#39;s items are removed by a member of admin staff.

- Michael&#39;s items are removed by a member of admin staff:
  - **Current system state**: The admin staff can see from their map that Michael has not returned from his break. They query the map to recieve Michael&#39;s details, and then remove his belongings and place them under his name.
  - **Informal scenario**: Michael&#39;s belongings are removed, and the map is updated so that now Michael&#39;s desk is free for other students to use.
  - **Next scenario**: Michael  updates his study planner.

- Michael updates his study planner:
  - **Current system state**: Michael has chosen the &#39;Study planner&#39; option from the main menu and the system is waiting for Michael to input his details.
  - **Informal scenario**: Michael is inputting his details into the study planner.
  - **Next scenario**: Michael finishes his study.



- _Michael finishes his study:_

-
  - **Current system state:** System releases this seat, and the map is updated, changing the desk that Michael was occupying from red to green.
  - **Informal scenario:** The seat is now available for other students to use.
  - **Next scenario:** -

























**2.4 - Constraints:**

**Speed and Efficiency** :

Speed and efficiency will be crucial in our application as students may become frustrated with a slow and sluggish application, as they are accustomed to top of the range applications. This may cause compromise graphics as we would like to add in some form of progress &quot;tree&quot; or &quot;growing brain&quot; but whether these will compromise speed remains to be seen. This being said, Flutter normally runs at a constant 60fps and flutter apps run natively compiled code so the app should start quickly regardless.

**Higher-Order language requirements** :

The system will be implemented in dart as it provides cross platform benefits. This is a relatively new language which could be seen as a constraint.

**Industry Protocols** :

The anonymity of our application is very important to us and if a students identity is compromised to the staff of the library it has serious ethical/GDPR drawbacks.

**Hardware Platforms** :

NFC technology. NFC technology has some drawbacks, for example only Iphones above the Iphone 5 are NFC capable. This may be a drawback for us. Flutters NFC reading plugin also supports Android 6.0 and above.

Another hardware constraint we will feel while developing this application is the large variety of smartphones this application must work for. This means that adaptivity will be of huge importance to us while developing this application.

**Time**

As we believe our application is applicable to many libraries, we do not hold enough time to test it on a large scale for many different environments. This will be one big constraint as we believe our application, when shown, may not be able to demonstrate effectively the potential of the application.

**User behaviour**

This is one thing we may not be able to test in a real life library environment, which would prove to be very beneficial. Knowing students habits when using our application and NFC technology would be extremely beneficial to our project as a whole.





**Section 3: Functional Requirements**

**3.1 External Requirements**

**Software Requirements**

The system should run on, and requires the following software:

- --Any android mobile operating system or;
- --Any version of Mac iOS operating system.

**Hardware Requirements**

The application should run on, and requires the following hardware:

- --Any modern NFC capable Android or OS smartphone. Unfortunately this excludes any iphone below the IPhone 6.
- --A pre-programmed NFC tag placed on a desk used for reserving seating.



**3.2 User opens the application**

_Description:_

The user will first have to download the application which we will make available online. Once the user has successfully downloaded the application, they will be given access to a user interface. Here they will be given a number of options like &quot;Sign in&quot;, &quot;About us&quot; and a simple homepage.

_Criticality:_

This is of critical importance to the application. To use this application the user must download it successfully. Therefore it is clear that this is of critical importance.

_Technical issues:_

The process of downloading the application must be quick and easy to use. The homepage interface must be simple and easy to use and students may not be technologically literate enough to use a complicated interface.

_Dependency on other requirements:_

This is the main entry for the user to the system. Without this requirement, all other requirements would fail.



**3.3 User/Administrative login**

_Description:_

The system must be aware of all usernames for the system and the corresponding password for the username. We will use firebase authentication for this as most university use google apps. When on the applications home interface the user will have the option to sign in using a gmail account, which will be a DCU email address. They will then sign in and be given access to the rest of the application.

_Criticality:_

The login is essential for identification and for security purposes. It is important that the administrative staff can identify the user, as administrative staff have the authority to remove personal belongings of users. If there was no way to identify users, there would be no way to identify the user&#39;s belongings when they are collected. The user cannot interact with the system without logging in, and thus cannot occupy a seat, read the interactive map or update their study hours.

_Technical issues:_

No large technical issues are apparent as google&#39;s firebase authentication should work very well and in an incredibly short amount of code, for example here is the code in Java:

FirebaseAuth auth = FirebaseAuth.getInstance();

auth.signInWithEmailAndPassword(email, password)

    .addOnCompleteListener(newOnCompleteListener() {

        @Override

        publicvoid onComplete(Task task) {

            if (task.isSuccessful()) {

                FirebaseUser user = task.getResult().getUser();

                String email = user.getEmail();

                // ...

            }

        }

    });

So this should be very stable. Obviously an issue may be security with users but we are confident that this will not be an issue.

_Dependency with other requirements:_

This requirement depends upon the user successfully opening the application (3.2).





**3.4 Reserving a seat**

_Description_

Here the student has logged into the application and has gained access to the applications interface. They can now reserve a seat if they choose to do so. They are immediately given a choice of &quot;reserve seat&quot; and when they click on this and place the mobile on the NFC tag the system will reserve the seat, hence stopping any other student from doing so. As a requirement, the student should be able to see what exact seat(number and zone) he/she has reserved.  The method we intend to use for this is a database containing each seat and the current state of the seat. This is updated as the NFC  tags are used, which will update the SVG map.

_Criticality_

In regards to the overall system this is of the highest priority. Ensuring the information entering the database is correct will be of paramount importance. If this fails to work the application will not display the right seating information which would be detrimental to the project as a whole.



_Technical Issues_

The code itself must be able to read the NFC tag in question, identify this tag, update the database for that seat then the SVG map should be updated based on the database. If done correctly this should work very well. A possible issue may be if two users try to reserve the same seat, but solutions to this problem will be found while coding the project.



_Dependencies with other requirements_

This requirement depends on the user being able to login to the application successfully. This is crucial as without this the user will not be able to get into the interface to reserve the seat.







**3.5 Read map for users / administrative staff**

_Description:_

The user or administrative staff member has successfully logged in to the library application. They have now successfully navigated from the main menu to the interactive map. They are not capable of reserving a seat from the map. They are only capable of viewing the map of the library to check for the availability of seats. The administrative staff member would have access to the user&#39;s account details. This is because the staff member needs to identify the user&#39;s belongings in the event that the user&#39;s desk is made available by the administrative staff member.

_Criticality:_

This is a critical functional requirement. The aim of the system is to serve the user, and provide them with access to real time information regarding the availability of seats in their library. Without this functional requirement, there would be little reason for the user to use this system. For security purposes it is also essential the staff member has user details.

_Technical issues:_

Providing a functioning, interactive map is essential for this requirement. As this is a critical functional requirement, it is necessary that the implementation of the interactive map is as efficient as possible. The interactive map must update relatively quickly, so that users have as close to real time updates as possible.

_Dependency with other requirements_

This requirement is dependent upon the successful login of the user/ administrative staff member, as the system cannot be utilised without logging in. This is dependent upon user&#39;s successfully occupying seats, and seats becoming unoccupied in a relatively fast period of time, as the faster the information is available to the user, the more beneficial it is to the user.









**3.6 Vacating seat for users / administrative staff**

_Description_

The user should be able to vacate the seat at any given time. This also stands for the administration staff, they should have the power to vacate any seat they need to using their application. With the user they will be given the option whilst the phone is placed on the NFC tag to be able to vacate the seat for other students. The button will say &quot;Vacate Seat&quot;. When clicked the student is then free to remove his/her phone from the tag which will then update the database and as a result update the interactive SVG map. With regards to the admin, they should be able to click &quot;Vacate Seat&quot; on their interface and tap the NFC tag. This should similarly update the database and update the SVG map.

_Criticality_

This is another extremely important part of the application. Being able to vacate the seat will be crucial to the application working effectively. This must work quickly as we know the administration staff will not have time to be waiting around so speed on this aspect will be crucial. This is one of the two most important parts of out of our requirements.

_Technical Issues_

The code must be able to vacate the seat by determining when a user has opted to vacate the seat, update the database and then update the SVG map. This is another crucial aspect. A possible issue may be when an admin has the right to vacate the seat, and we feel this can be solved by determining how long the phone has been removed from the tag and if it&#39;s over a certain time the admin may be able to vacate the seat for other students to use.



_Dependencies with other requirements_

This requirement depends on (3.4) reserving a seat to be working perfectly in order to work properly. In other words, if a seat is not reserved in the first place the admin/ student should/will not be able to vacate that particular seat.





**3.7 User takes break**

_Description_

One important part of our application is the ability for the user to be able to take breaks. There should be a number of options for different length breaks and these should be determined by the library themselves, therefore the ability to change these break times is important. The user should be able to click the &#39;take a break&#39; button, select the length of break he/she is taking (these breaks will be predetermined). This should prevent the seat from automatically being vacated. In regards to the admin staff, they should be able to see who has gone over their break times and they may act on this if they feel the need to do so and vacate the seat for another student to use.

_Criticality_

This is of medium importance as taking a break is only one feature of the application and not the central functionality of the application. This feature could make a huge difference to staff members as it allows them to ensure no-one is taking advantage of the library seats, and it is proof that a student has vacated the seat over the allowed time.

_Technical Issues_

The system timer must work perfectly and a student should be notified if they have gone over their allotted time. Another technical issue would be to restrict the amount of breaks a student is allowed to take to prevent abuse of the break-system. The admin&#39;s must also be able to see which seats are over the allotted time, we are exploring the possibility of putting this on a SVG map.

_Dependencies with other requirements_

This is dependent on the user successfully logging into their account (3.3) and a seat being reserved (3.4) previously by a student so they are able to take a break.









**3.8 User updates study planner**

_Description:_

The user has successfully logged in to the application (3.2) and has navigated to the study section of the application. The user will be presented with the option to &#39;add a subject&#39;. There is no limit to the number of subjects they can have in their planner. The user may also add targets for each of their subjects, such as time studied and topics covered.

_Criticality:_

This is of low importance. The primary function of the application is to provide students with information regarding the availability of desks in the library. This is an optional function for the user. It is more important to ensure that the other functions are working perfectly, than for this function to work.

_Technical issues:_

The application must be able to access the firebase database for the user&#39;s study planner information. The application must also only check and display the user&#39;s information, and not anyone else&#39;s. This must be done relatively quickly also, as it is important not to delay the user.



_Dependencies with other requirements:_

This is dependent upon the user successfully logging into their account within the application (3.3).





**3.9 User opts into &#39;Notification Free Mode&#39;**

_Description_

The user has successfully logged into the application and now he/she decides they would like to study &#39;Notification Free&#39;. This means they will not receive any notifications from social media while this option is turned on. The user will still be able to receive calls due to emergencies etc.

_Criticality_

This is of low importance. It an extra part of the application but not paramount to the implementation of the application itself.

_Technical Issues_

This feature must successfully block any notifications from social media on a users mobile phone. It must also allow certain notifications for example phone calls as many users will need to receive these for emergencies, job interviews etc.

_Dependencies with other requirements_

This is dependent upon the user successfully logging into their account within the application (3.3).










**4. System Architecture**



 ![q4](/uploads/d918ff64ce76b8b4c21049f3b41fd0df/q4.jpg)


**Section 5: High-level design**

**Context diagram:**

This context diagram gives a basic overview of the whole system, with minimal detail. The manner in which the system interacts with external entities can be observed. The aim of this diagram is to provide the reader with a basic understanding of how the system should work.

![High_level_design](/uploads/1f194e4c9a0c2425177e81f8f2bdc6ec/High_level_design.jpg)

**Data flow diagram:**

This data flow diagram should provide a more detailed description of how the system should work, than the context diagram. This diagram should highlight how the functions work within the system.

 ![Data_flow_diagram](/uploads/63d6effda85a6c3634c94cda53f2193e/Data_flow_diagram.jpg)











**6 Preliminary Schedule**

This will provide a preliminary schedule on what needs to be done over the next few months with our third year project and will put some structure on these tasks. This is very preliminary and we have taken into account that other tasks may arise during the project. We believed the best way to do this was by using a gantt diagram. Our official project start date is the 24th of January but have already begun learning the Flutter framework and Dart.



**6.1 Gantt Diagram 18/01/2019-21/02/2019**





 ![gant1](/uploads/b835cd0bd1dc9f8994a0c4340e81e484/gant1.png)




**6.1 Gantt Diagram 21/02/2019-11/03/2019**






![gant2](/uploads/d2ba69c374a0d3c90c45d1dbc72991d0/gant2.png)




**7. Appendix**

- **●●** DCU library article [**https://www.irishtimes.com/student-hub/i-really-like-my-library-it-s-big-and-spacious-and-cosy-1.3700193?utm\_source=Newsletter&amp;utm\_medium=email&amp;utm\_content=Your+college+library%2C+student+protests%2C+Jameson+and+Panti+Bliss&amp;utm\_campaign=student\_hub\_digest**](https://www.irishtimes.com/student-hub/i-really-like-my-library-it-s-big-and-spacious-and-cosy-1.3700193?utm_source=Newsletter&amp;utm_medium=email&amp;utm_content=Your+college+library%2C+student+protests%2C+Jameson+and+Panti+Bliss&amp;utm_campaign=student_hub_digest)
- **●●** Dart language : [https://www.dartlang.org/](https://www.dartlang.org/)
- **●●** Flutter language: https://flutter.io/
- **●●** Firebase : [https://firebase.google.com/](https://firebase.google.com/)
- **●●** [https://www.ebay.com/bhp/nfc-tag](https://www.ebay.com/bhp/nfc-tag)    \&lt;-      Showing price of NFC tags.
- **●●** Interactive flutter course: [https://www.udemy.com/flutter-dart-the-complete-flutter-app-development-course/](https://www.udemy.com/flutter-dart-the-complete-flutter-app-development-course/)