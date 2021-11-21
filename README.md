# Uber - Lyft - Bolt - Clone - Rider

An open source blueprint to your next logistics/delivery app development. This projects incorporates the [breaking changes](https://firebase.google.com/docs/cloud-messaging/migrate-v1) after Google's migration from legacy HTTP to HTTP v1 for cloud messaging.
It relies on the [Provider package](https://pub.dev/packages/provider) for statement management and it was designed using the MVC layout.

<div>
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/bolt%20logo.png" alt="feed example" height="200">
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/uber%20logo.png" alt="feed example" width="200">
</div>


## Implementation Guide

To deploy this project:

### 1 Firebase Panel 
* Create Firebase Project from https://console.firebase.google.com.
* Import the file google-service.json into your project as the instructions say.
* Change Pay Plan to either Flame or Blaze
* Go to Firebase -> Registration and activate Login/Registrtion with email.

### 2 Google maps 
* Add your project to the [Google API console](https://console.cloud.google.com/apis?pli=1) 
* Activate google Maps API 
* Activate google Places API 
* Add google maps API key to the lib/main.dart file 

### 3 Google Oauth
* Get a temporary Oauth to enable you send notifications to the Driver App. Legacy Firebase codes have been updated [here](https://firebase.google.com/docs/cloud-messaging/migrate-v1).

    
## Screenshots

<div>
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/uber%20rider%20login.png" alt="feed example" width="200">
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/rider%20drawer.png" alt="feed example" width="200">
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/rider%20request.png" alt="feed example" width="200">
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/uber%20rider%20request1.png" alt="feed example" width="200">
<img src="https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/uber%20rider%20request2.png" alt="feed example" width="200">
 
</div>


!(https://github.com/seanFlutter/Resources/blob/main/Uber-bolt-lyft/lyft%20rider%20demo.gif)
  
## Tech Stack

**Framework:** Flutter

**Server:** Firebase

**IDE:** Android Studio

## Thanks

Uchenna Nnodim.

  
