## Developing Our Smart Contract-Based Truck Sharing Mobile Application on Android
Developing our smart contract-based truck sharing mobile app involved several key steps to ensure a robust, secure, and user-friendly experience. Here’s a detailed overview of how we accomplished this:

### 1. User Interface (UI) Design
Technology: Flutter

Design and Develop UI: We created responsive and intuitive screens for user registration, login, truck listings, order creation, and tracking.
Cross-Platform: Using Flutter, we ensured seamless functionality across various Android devices.
Example Flutter Code for Login Screen:

### 2. Backend Server Setup
Technology: Node.js, Express.js

Server Configuration: We set up a backend server to handle API requests and manage data.
Database Integration: MongoDB was used to store non-blockchain data such as user profiles and app settings.
API Development: We developed RESTful APIs for user authentication, truck data, and order management.
Example Node.js Code for User Authentication API:

### 3. Ethereum Blockchain Integration
Technology: Ethereum, Web3.js

Smart Contracts: We wrote and deployed smart contracts in Solidity for user registration, truck listing, and order management.
Blockchain Interaction: Using Web3.js, we enabled the app to interact securely with Ethereum smart contracts.
Example  Smart Contract:

### 4. Google Maps and Places API
Technology: Google Maps API, Google Places API

Location Services: We integrated Google Maps for real-time truck and user location tracking.
Place Searches: The Google Places API was utilized for location searches and distance calculations.
Example Code for Integrating Google Maps in Flutter:

### 5. Data Management with Firebase
Technology: Firebase Firestore, Firebase Authentication

User Authentication: We implemented secure registration and login with Firebase Authentication.
Real-Time Database: Firebase Firestore was used for dynamic data management and synchronization.
Example Code for Firebase Authentication in Flutter:


### 6. Implementation and Testing
Testing: We conducted unit, integration, and user acceptance testing. Our smart contracts were audited for security.
Deployment: We deployed the backend on a cloud platform and published the app on the Google Play Store.

### This will work!
By following these steps, we created a secure, efficient, and user-friendly truck sharing app that leverages blockchain technology for enhanced transparency and data integrity. This approach combined advanced features like real-time tracking and secure data management, setting a new standard for the transportation of oversized goods.

## Evaluating Reliability, Security, and User Experience of a Smart Contract-Based Mobile App
To assess the reliability, security, and user experience (UX) of a smart contract-based mobile app, we can use a combination of metrics and calculations. Below are the explanations and corresponding Python code snippets to compute these metrics.

#### Reliability
Reliability measures how often the app works without failure and how quickly it recovers when it fails.

Mean Time Between Failures (MTBF): This is the average time between system failures.
Mean Time to Repair (MTTR): This is the average time to repair the system after a failure.
Availability (A): This is the proportion of time the system is operational.
#### Security
Security measures how well the app prevents and handles security incidents.

Number of Vulnerabilities (V): The total number of identified security vulnerabilities.
Incident Rate (IR): The frequency of security incidents over time.
Security Effectiveness (SE): The proportion of prevented incidents.
Security Score (SS): A combined score of security metrics.
#### User Experience (UX)
User experience measures how easy and pleasant the app is to use.

System Usability Scale (SUS): A score from user feedback.
Task Success Rate (TSR): The percentage of tasks successfully completed by users.
Average Response Time (ART): The average time the app takes to respond to user actions.
User Experience Score (UXS): A combined score of user experience metrics.


#### Location Data Error is the Mean Location Error (MLE)
The average difference between the reported location and the actual location.
