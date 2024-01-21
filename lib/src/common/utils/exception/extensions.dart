import '../../../../locales/localization/l10n.dart';

extension HttpStatusCodeExtension on int {
  String get httpMessage {
    switch (this) {
      case 400:
        return Localization.current.http400Error;
      case 401:
        return Localization.current.http401Error;
      case 403:
        return Localization.current.http403Error;
      case 404:
        return Localization.current.http404Error;
      case 409:
        return Localization.current.http409Error;
      case 408:
        return Localization.current.http408Error;
      case 415:
        return Localization.current.http415Error;
      case 429:
        return Localization.current.http429Error;
      case 500:
        return Localization.current.http500Error;
      case 501:
        return Localization.current.http501Error;
      case 502:
        return Localization.current.http501Error;
      case 503:
        return Localization.current.http503Error;
    }
    return Localization.current.unknownError;
  }
}
