class NavigationRoute extends StatelessElement {
  NavigationRoute(super.widget);

  static void routeBack(BuildContext context) {
    return Navigator.pop(context);
  }

  static Future routeForward(BuildContext context, Widget widget) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static Future<Object?> routeForwardNamed(BuildContext context, String route) {
    return Navigator.pushNamed(context, route);
  }

  static Future routeReplace(BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget));
  }

  static Future<Object?> routeReplaceNamed(BuildContext context, String route) {
    return Navigator.pushReplacementNamed(context, route);
  }

  static Future routeUntil(BuildContext context, Route route) {
    return Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  static Future<Object?> routeUntilNamed(BuildContext context, String route) {
    return Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  }
}
