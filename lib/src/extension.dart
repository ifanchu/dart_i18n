library dart_i18n;

String _defaultLocalizationFile = '';
String _defaultLocalizationDir = '';
String _currentLocalization = '';

void setDefaultLocalizationFile(String path) {
  _defaultLocalizationFile = path;
}

extension I18N on String {

  /// Return the localized string without arguments.
  String get localized {
    return '';
  }

  /// Returns the localized string with arguments. Each argument matches a {} in
  /// the translation string.
  String localize(List<String> args) {
    return '';
  }

}
