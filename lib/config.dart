// ignore_for_file: non_constant_identifier_names

String DEV = "DEV";
String PROD = "PROD";

class Config {
  Map<String, String> configuration = {};
  static final String DB_HOST = DEV;
  Map<String, String>? config() {
    if (DB_HOST == DEV) {
      configuration = {"env":DEV,"url":"http://127.0.0.1:3000/"};
    } else if (DB_HOST == PROD) {
      configuration = {"env":PROD,"url":"https://portfoliobackend-o3w8.onrender.com/"};
    }
    return configuration;
  }
}
