// private FirebaseUser user;
// user = FirebaseAuth.getInstance().getCurrentUser();
//                 final String email = user.getEmail();
//                 AuthCredential credential = EmailAuthProvider.getCredential(email,oldpass);

//                 user.reauthenticate(credential).addOnCompleteListener(new OnCompleteListener<Void>() {
//                     @Override
//                     public void onComplete(@NonNull Task<Void> task) {
//                         if(task.isSuccessful()){
//                                 user.updatePassword(newPass).addOnCompleteListener(new OnCompleteListener<Void>() {
//                                     @Override
//                                     public void onComplete(@NonNull Task<Void> task) {
//                                         if(!task.isSuccessful()){
//                                             Snackbar snackbar_fail = Snackbar
//                                                     .make(coordinatorLayout, "Something went wrong. Please try again later", Snackbar.LENGTH_LONG);
//                                             snackbar_fail.show();
//                                         }else {
//                                             Snackbar snackbar_su = Snackbar
//                                                     .make(coordinatorLayout, "Password Successfully Modified", Snackbar.LENGTH_LONG);
//                                             snackbar_su.show();
//                                         }
//                                     }
//                                 });
//                         }else {
//                             Snackbar snackbar_su = Snackbar
//                                     .make(coordinatorLayout, "Authentication Failed", Snackbar.LENGTH_LONG);
//                             snackbar_su.show();
//                         }
//                     }
//                 });
//             }
//         }


// Changing password in firebase is bit tricky. 
// it's not like what we usually do for changing password in server side
//  scripting and database. to implement change password functionality in your app,
//   first you need to get the user's email from FirebaseAuth 
//   or prompt user to input email and 
//   after that prompt the user to input old password 
//   because you can't retrieve user's password as Frank van Puffelen said. After 
//   that you need to reauthenticate that. Once reauthentication is done, if successful,
//    you can use updatePassword().
//     I have added a sample below that i used for my own app. Hope, it will help you.