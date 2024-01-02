class ApiEndPoints {
  static const String baseUrl = "https://giant-pool-l4mxi.ondigitalocean.app";
  static AuthEndPoints authEndPoint = AuthEndPoints();
  static PropertyPoints propertyPoints = PropertyPoints();
}

class AuthEndPoints {
  final String registerWithEmail = "/api/create-user";
  final String loginWithEmail = "/api/login";
}

class PropertyPoints {
  final String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVkIjp0cnVlLCJleHAiOjE3MTY1NTkxMjYsInVzZXJfaWQiOjF9.CamGys67iXELZSGnQcniisKLnLvnn904Rubi8IxocFA";
  final String getProperties = "/api/list-properties";
}
