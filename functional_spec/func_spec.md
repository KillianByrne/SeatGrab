# Table of Contents
1. **Introduction**
.. 1.1 Overview
.. 1.2 Business context
.. 1.3 Glossary.
2. **General Description**
.. 2.1 Product / System Functions
.. 2.2 User Characteristics and Objectives
.. 2.3 Operational Scenarios
.. 2.4 Constraints.
3. **Functional Requirements**
4. **System Architecture**
5. **High-Level Design**
6. **Preliminary Schedule**
7. **Appendices.**

# Section 1: Introduction

**1.1 - Overview:**
This system provides students with an interactive map of the seats that are available or unavailable in the DCU library. Students will make seats unavailable by logging in to the DCU library application on their phone’s, and then tapping their phone off an NFC tag that will be planted on the desk. The interactive map on the application will then be updated and the seat they are in will appear red on the interactive map, informing other students that this seat is no longer available. Students will not be able to ‘book’ a seat like a customer can book a table at a restaurant as this would not be efficient.
The need for this system arose from past experiences of wasting time in the library by checking every corner just trying to find a seat, and in particular to find no seat at all when exams are looming (as the number of students increases as time decreases in relation to exams). This system will save students time and money as they will be able to plan when to go to the library when seats are available.
This system will also give students the option to take a study break for periods of 5, 10, 15 or 30 minutes (maximum). Students must return within this time limit or else their seat will become available on the DCU library application and other students may take their seat. There is a need for this function as currently, a sunbed-like system exists in the library where students place their belongings on the desk and then leave for long periods of time. 

**1.2 - Business context:**


**1.3 - Glossary:**

Dart: an object oriented language, developed by Google, that is used to build web, server and mobile applications.
Flutter: an open source web development kit, developed by Google, used to develop applications for ios and android. 
Firebase: a mobile and web application development platform and a Backend as a service.
Backend as a service: a model for providing web and mobile application developers with a way to link their applications to a backend cloud storage, and also to APIs that are exposed to back end applications.
NFC: Near field technology. A set of communication protocols that enable two electronic devices to establish communication by typically bringing them within 4 cm of each other.

# Section 2: General Description

**2.1 - System function:**

**User functionality system:**


**2.2 - User characteristics and objectives:**


**2.3 - Operational scenarios:**

*Michael (student) logs in to the system:*

Current system state: System is waiting for Michael to input his details.
Informal scenario: Michael inputs his login details that he acquired when he joined DCU.
Next scenario: Michael loads the interactive map.


*Michael loads the interactive map:*

Current system state: System has loaded the interactive map.
Informal scenario: Michael uses the map to look for a spare seat in the library at present time.
Next scenario: Michael returns to the home page.

*Michael returns to the home page:*

Current system state: System has loaded the home page.
Informal scenario: Michael has determined that there are several free seats in the library. He decides he will go to the library.
Next scenario: Michael chooses the ‘scan a seat’ option on the app.

*Michael chooses the ‘scan a seat’ option on the app.*

Current system state: System has loaded the user interface for the ‘scan a seat’ option.
Informal scenario: Michael has arrived to a spare seat on the first floor of the library, he is ready to reserve this seat.
Next scenario: Michael scans his phone on the NFC tag on the table.

*Michael scans his phone on the NFC tag on the table:*

Current system state: System is waiting Michael to either scan an NFC tag from a library desk in DCU, or to load the interactive map.
Informal scenario: Michael scans his phone off the NFC tag that is attached to the desk in the DCU library.
Next scenario: Michael chooses to take a break of 15 minutes.

*Michael chooses to take a break of 15 minutes:*

Current system state: The option of a 15 minute break has been chosen, so a countdown timer of 15 minutes is set.
Informal scenario: Michael goes on his break.
Next scenario: Michael returns from his break. 

*Michael returns from his break:*

Current system state: The countdown timer is still running and has not run over its permitted time, 
Informal scenario: Michael returns to his desk, and places his phone on the nfc tag. The timer ends and the study break is over.
Next scenario: Michael does not return from his study break.

*Michael does not return from his study break:*

Current system state: The countdown timer hits zero and Michael has gone over his permitted time for study break. The system releases the desk and updates the interactive map, changing the colour of this desk from red to green.
Informal scenario: The desk is now free for other students to use.
Next scenario: Michael finishes his study.

*Michael finishes his study:*

Current system state: System releases this seat, and the map is updated, changing the desk that Michael was occupying from red to green.
Informal scenario: The seat is now available for other students to use.
Next scenario: -

1.
2.
3.


