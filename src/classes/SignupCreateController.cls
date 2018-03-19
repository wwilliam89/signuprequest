public with sharing class SignupCreateController {
 
  // the contact record you are adding values to
  public SignupRequest signup {
    get {
      if (signup == null)
        signup = new signuprequest();
      return signup;
    }
    set;
  }
 
  public SignupCreateController() {
    // blank constructor
  }
 
  // save button is clicked
  public PageReference save() {
 
    try {
      insert signup; // inserts the new record into the database
    } catch (DMLException e) {
      ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error creating new signup.'));
      return null;
    }
 
    // if successfully inserted new contact, then displays the thank you page.
    return Page.Signup_Create_Thankyou;
  }
 
}