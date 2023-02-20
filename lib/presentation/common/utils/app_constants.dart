class AppConstants {
  // Colors
  static const int COLOR_PASSWORD_VISIBILITY = 0xFFA5ACBB;
  static const int SUFFIX_TEXT = 0xFF616161;
  static const int COLOR_LIGHT_GREY = 0xFF9EA0A7;
  static const int COLOR_THEME_BLUE = 0xFF2a296e;
  static const int COLOR_BLACK = 0xFF000000;
  static const int COLOR_WHITE = 0xFFFFFFFF;
  static const int COLOR_ORANGE = 0xFFFF6E40;
  static const int COLOR_GREEN = 0xFF4CAF50;
  static const int COLOR_GREY = 0xFF9E9E9E;
  static const int COLOR_RED = 0xFFF44336;
  static const int USER_ROLE_ID = 2;

  //Strings
  static const String SIGN_UP_TEXT = "Signup";
  static const String LOGIN_TEXT = "Login";
  static const String PASSWORD_TEXT = "Password";
  static const String CONFIRM_PASSWORD_TEXT = "Confirm Password";
  static const String EMAIL_TEXT = "Email";
  static const String NAME_TEXT = "Name";
  static const String LEAVE_REASON_TEXT = "Leave Reason";
  static const String SIGN_IN_TEXT = "Sign in";
  static const String ALREADY_HAVE_ACCOUNT_TEXT = "Already have and account ?";
  static const String OK_TEXT = "ok";
  static const String ALERT_TEXT = "Alert";
  static const String DEVELOPER_TEXT = "Developer";
  static const String LEAVE_TITLE_TEXT = "Leave Title";
  static const String LEAVE_TYPE_TEXT = "Leave Type";
  static const String HOLIDAY_NAME_TEXT = "Holiday name";
  static const String LEAVE_TOTAL_DAYS_TEXT = "Total Days";
  static const String START_DATE_TEXT = "Start Date";
  static const String HOLIDAY_DATE_TEXT = "Holiday Date";
  static const String END_DATE_TEXT = "End Date";
  static const String APPLY_FOR_LEAVE_TEXT = "Apply for Leave";
  static const String APPLY_TEXT = "Apply";
  static const String SUBMIT_TEXT = "Submit";
  static const String CANCEL_TEXT = "Cancel";
  static const String MY_LEAVES_TEXT = "My Leaves";
  static const String START_DATE = "Start Date: ";
  static const String END_DATE = "End Date: ";
  static const String FIRST_HALF_TEXT = "First Half";
  static const String SECOND_HALF_TEXT = "Second Half";
  static const String FULL_DAY_TEXT = "Full Day";
  static const String HALF_DAY_TEXT = "Half Day";
  static const String ADMIN_ROLE = "Admin";
  static const String PROJECT_MANAGER_ROLE = "Project Manager";
  static const String DEVELOPER_ROLE = "Developer";
  static const String ADD_LEAVES_TYPE = "Add Leaves Type";
  static const String ADD_HOLIDAYS_TYPE = "Add Holidays";
  static const String HOLIDAYS_TEXT = "Holidays";

  //Navigation Drawer Text
  static const String NAV_LEAVE_LIST = "Leave List";
  static const String NAV_APPLY_FOR_LEAVES = "Apply For Leaves";
  static const String NAV_MY_PROFILE = "My Profile";
  static const String NAV_LOGOUT = "Logout";
  static const String NAV_ADD_LEAVE_TYPE = "Add Leave Type";
  static const String NAV_ADD_HOLIDAYS = "Add Holidays";
  static const String DETAILS_TEXT = "Details";
  static const String LEAVE_REQUEST_TEXT = "Leave Request";
  static const String TOTAL_DAYS = "Total days:";
  static const String DAYS = "12";
  static const String TITLE = "Out of station";
  static const String PADDING = "Padding";
  static const String START = "Start";
  static const String END = "End";
  static const String S_DATE = "10-02-2022";
  static const String E_DATE = "12-02-2022";
  static const String FIRST_HALF = "First half";
  static const String SECOND_HALF = "Second half";
  static const String FULL_DAY = "Full day";

  static const String DETAILS = "Details";
  static const String DELETE = "Delete";
  static const String END_DATE_DATE = "endDate";
  static const String PENDING_TEXT = "Pending";

  //Collections
  static const String COLLECTION_USER = "user";
  static const String COLLECTION_ROLE = "role";
  static const String ROLE = "Role";
  static const String USER_ROLE = "User";
  static const String COLLECTION_USER_LEAVES = "user_leaves";
  static const String COLLECTION_HOLIDAYS = "holidays";
  static const String COLLECTION_LEAVES_TYPE = "leaves_type";

  static const List<String> START_ITEMS = ['First Half', 'Second Half'];
  static const List<String> END_ITEMS = ['First Half', 'Second Half'];
  static const List<String> DAYS_ITEMS = ['Full', 'Half'];

  //Collection's Parameters
  static const String NAME_PARAM = "name";
  static const String EMAIL_PARAM = "email";
  static const String ROLE_ID_PARAM = "role_id";
  static const String MANAGER_ID_PARAM = "manager_id";
  static const String ROLE_NAME_PARAM = "role_name";
  static const String ID_PARAM = "id";
  static const String USER_PARAM = "user";
  static const String USER_ID_PARAM = "userId";
  static const String LEAVE_TITLE_PARAM = "leaveTitle";
  static const String START_DATE_PARAM = "startDate";
  static const String START_DATE_TYPE_PARAM = "startDateType";
  static const String START_DATE_DAY_PARAM = "startDateDay";
  static const String END_DATE_PARAM = "endDate";
  static const String END_DATE_TYPE_PARAM = "endDateType";
  static const String END_DATE_DAY_PARAM = "endDateDay";
  static const String STATUS_PARAM = "status";
  static const String REASON_PARAM = "reason";
  static const String TOTAL_DAYS_PARAM = "totalDays";
  static const String LEAVE_TYPE_PARAM = "leaveType";
  static const String IS_END_DATE_VISIBLE_PARAM = "isEndDateVisible";
  static const String DONT_HAVE_AN_ACCOUNT = "Don't have an account? ";
  static const String PENDING_STATUS = "Pending";
  static const String ROLE_NAME = "roleName";
  static const String TYPE_PARAM = "type";
  static const String DAYS_PARAM = "days";
  static const String HOLIDAY_TITLE_PARAM = "holidayTitle";
  static const String DATE_PARAM = "date";

  //Alert messages
  static const String ALERT_EMPTY_PASSWORD = "Please enter password";
  static const String ALERT_VALID_PASSWORD = "Please enter valid password";
  static const String ALERT_EMPTY_CONFIRM_PASSWORD =
      "Please enter confirm password";
  static const String ALERT_VALID_CONFIRM_PASSWORD =
      "Please enter valid confirm password";
  static const String ALERT_NOT_MATCH_PASSWORD =
      "Password and Confirm Password are must be same";
  static const String ALERT_EMPTY_NAME = "Please enter name";
  static const String ALERT_VALID_NAME = "Please enter valid name";
  static const String ALERT_EMPTY_EMAIL = "Please enter email";
  static const String ALERT_VALID_EMAIL = "Please enter valid email";
  static const String ALERT_CHECK_INTERNET =
      "Please check your internet connection";
  static const String ALERT_NO_USER_FOUND = "No user found for that email";
  static const String ALERT_INVALID_USERNAME_PASSWORD =
      "Invalid username or password";
  static const String ALERT_NO_PERMISSION_BY_ADMIN =
      "You don't have permission for Admin";
  static const String ALERT_SOMETHING_WENT_WRONG =
      "Something went wrong. Try again after sometime.";
  static const String ALERT_SIGNED_UP_SUCCESS = "Signed up successfully";
  static const String ALERT_EMPTY_LEAVE_TITLE = "Please enter leave title";
  static const String ALERT_EMPTY_START_DATE = "Please enter start Date";
  static const String ALERT_EMPTY_HOLIDAY_DATE = "Please enter holiday Date";
  static const String ALERT_EMPTY_LEAVE_REASON = "Please enter leave reason";
  static const String ALERT_EMPTY_FROM_DATE = "Please enter from Date";
  static const String ALERT = "Alert";
  static const String ALERT_LEAVE_REQUESTED = "Applied for Leave Successfully";
  static const String ALERT_TOTAL_DAYS = "Please enter total days";
  static const String ALERT_ONLY_DIGITS = "Please enter only digits";
  static const String LEAVE_TYPE_SUCCESS_MSG = "Leave type added successfully";
  static const String HOLIDAY_SUCCESS_MSG = "Holiday added successfully";
  static const String ALERT_INVALID_USER = "You must be member of our company";

  //Image Path
  static const String APP_LOGO = "assets/images/InfusionLogo.jpeg";
  static const String GOOGLE_LOGO = "assets/images/google.png";
  static const String SUCCESS_GIF = "assets/images/success.gif";
  static const String DRAWER_HEADER_IMAGE = "assets/images/drawer_header.jpg";

  //Date format
  static const String DD_MM_YYYY = "dd-MM-yyyy";
  static const String YYYY_MM_DD = "yyyy-MM-dd";
}
