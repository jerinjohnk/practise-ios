# Tinder Clone - League of Legends

![Demo Link 1](../Resources/TinderClone/gif/InitialRun1.0.gif)
<br/>
<br/>
![Demo Link 2](../Resources/TinderClone/gif/InitialRun1.1.gif)
<br/>
<br/>

## Description 

A simple Tinder Clone iOS application- using League of Legends characters.<br/>
Its written in **Swift 5** language using **MVVM** design pattern.<br/>
It includes Login/Sign up, Swipe, Match etc functionalities.


## Cocoapods

- Firebase - All user data is saved in firebase.
- SDWebImage - Its used for image caching.
- JGProgressHUD - To show progress view during async tasks.


If you want to try you can clone the project or simply download.
Don't forget to update pod files or install.

## Xcode environment
- Swift 5
- Xcode Version 11.6 (11E708)

## Run Project
- pod install
- Create a project on Firebase.
    - Make sure under *Authentication-> Sign-in* section `Email/Password` is enabled<br/>
    ![AuthenticationImage](https://github.com/jerinjohnk/practise-ios/blob/master/Resources/TinderClone/FirebaseSettings/Authentication.png)
    - Make sure under *Storage-> Rules* section code line is updated to <br/>
    `allow read, write: if request.auth != null || request.auth == null;`

    ![StorageImage](https://github.com/jerinjohnk/practise-ios/blob/master/Resources/TinderClone/FirebaseSettings/Storage.png)
    - Download **GoogleService-Info.plist** and place it `TinderClone/TinderClone/GoogleService-Info.plist` and include it in project.

