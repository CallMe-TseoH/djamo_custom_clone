class SecurityTextKey{
  SecurityTextKey._();
  static const _securityKey = "App.modules.security.";
  static const logout = _securityKey+"logout";
  static const hello = _securityKey+"hello";
  static const forgotPassword = _securityKey+"forgot.password";
  static const composeSecretCode = _securityKey+"compose.secret.code";
}