# FinalMSAppCenter
Implemented iOS app which does the following using App Center SDK.

A simple application that contains two buttons. One button (clickButton) changes its color, another button (crashButton) crashes the application. Due to such a simple functionality, we will be able to test the functionality of the service.

Integration of the library MS AppCenter allowed:
- Track sessions and events produced in the app,
- Quickly track and fix crushes in the app,
- Use updates via MS AppCenter in the application

In the AppDelegate class, place AppCenter.start (secretKey: {YOUR SECRET}, services: []). This allows us to launch the services that we want to use in our application.The secret code helps us associate our AppCenter with our app. It is unique for each app.In the array, we use the services that we need: [Analytics.self, Crashes.self, Distribute.self].
- If we want to track a specific action in the app, we need to put Analytics.trackEvent ("Description") in the required method.(In the app, the ViewController class has the buttonIsClick () method),
- If we want to track crashes in the app, we just need to start the service.(In the app, the AppDelegate class has the didFinishLaunchingWithOptions method (AppCenter.start (secretKey: {YOUR SECRET}, services: [Crashes.self]))),
- If you want to receive updates for your app, you just need to start the service.(In the app, the AppDelegate class has the didFinishLaunchingWithOptions method (AppCenter.start (secretKey: {YOUR SECRET}, services: [Distribute.self]))).
<<<<<<< HEAD

screenshots/Screenshot 2021-05-28 at 1.48.46 PM.png
screenshots/Screenshot 2021-05-28 at 1.49.02 PM.png 
screenshots/Screenshot 2021-05-28 at 1.49.12 PM.png 
screenshots/Screenshot 2021-05-28 at 1.49.46 PM.png

=======
>>>>>>> 72417576a32c32db613c4048e1d0f4f96000cf35
 I wanted to add screenshots, but something went wrong
