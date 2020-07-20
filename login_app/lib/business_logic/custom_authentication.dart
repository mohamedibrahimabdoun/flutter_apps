class Custom_Authentication {
  String userName;
  String password;


  bool isAuthenticated() {
    if (this.userName == 'a' && this.password == 'a') {
      return true;
    } else {
      return false;
    }
  }
}
