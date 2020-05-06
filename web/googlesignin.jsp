<%-- 
    Document   : si
    Created on : 26 Oct, 2016, 5:54:30 PM
    Author     : Paritosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta name="google-signin-client_id" content="877338160426-044o9cgaem9im539olnf81nv6b6fjps5.apps.googleusercontent.com">
    </head>
    <body>
        <div id="my-signin2"></div>
        <script>
            function onSuccess(googleUser) {
                console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
                var profile = googleUser.getBasicProfile();
                console.log("inside signin");
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.getEmail());
                window.location = "https://www.facebook.com";
            }
            function onFailure(error) {
                console.log(error);
            }
            function renderButton() {
                gapi.signin2.render('my-signin2', {
                    'scope': 'profile email',
                    'width': 240,
                    'height': 50,
                    'longtitle': true,
                    'theme': 'dark',
                    'onsuccess': onSuccess,
                    'onfailure': onFailure
                });
            }
        </script>

        <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
        <script>
              function signOut() {
                  var auth2 = gapi.auth2.getAuthInstance();
                  auth2.signOut().then(function () {
                      console.log('User signed out.');
                  });
              }
              console.log("Out of function.");
              function onSignIn(googleUser) {
                  var profile = googleUser.getBasicProfile();
                  console.log("inside signin");
                  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                  console.log('Name: ' + profile.getName());
                  console.log('Image URL: ' + profile.getImageUrl());
                  console.log('Email: ' + profile.getEmail());
              }
             
               gapi.auth2.init();
               if (auth2.isSignedIn.get()) {
               var profile = auth2.currentUser.get().getBasicProfile();
               console.log('ID: ' + profile.getId());
               console.log('Full Name: ' + profile.getName());
               console.log('Given Name: ' + profile.getGivenName());
               console.log('Family Name: ' + profile.getFamilyName());
               console.log('Image URL: ' + profile.getImageUrl());
               console.log('Email: ' + profile.getEmail());
               window.location="http://www.facebook.com";
               }
        </script>

    </body>
</html>
