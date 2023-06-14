import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_th.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ht'),
    Locale('pt'),
    Locale('th'),
    Locale('vi')
  ];

  /// This is the English title for each language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get a1languageInEnglish;

  /// Language title, as defined by the original language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get a1languageTitle;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get a1languageNameEn;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get a1languageNameEs;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Haitian Creole'**
  String get a1languageNameHt;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get a1languageNameFr;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get a1languageNamePt;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Thai'**
  String get a1LanguageNameTh;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get a1LanguageNameVi;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Simplified Chinese'**
  String get a1LanguageNameZhcn;

  /// Language title, translated to the current locale
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get a1LanguageNameAr;

  /// Message used in the notification if opened as a PWA
  ///
  /// In en, this message translates to:
  /// **'This app runs best on Android / iOS'**
  String get notificationAppRunsBest;

  /// Message used in the notification if opened as a PWA
  ///
  /// In en, this message translates to:
  /// **'Download Now'**
  String get notificationDownloadNow;

  /// Message for the authorization screen
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get authLogout;

  /// Message for the authorization screen
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get authLogoutDialog;

  /// Message used in navigation
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get navCancel;

  /// Header on Login Page
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Hint for Username Text Box
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// Hint for Password Text Box
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Button Text on Login Page
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// Text for fingerprint button that triggers local authentication
  ///
  /// In en, this message translates to:
  /// **'Or Login with Your Fingerprint'**
  String get localAuthLogin;

  /// Biometric instructions
  ///
  /// In en, this message translates to:
  /// **'Authenticate using your fingerprint'**
  String get biometricInstructions;

  /// Return from failed Biometric Attempt
  ///
  /// In en, this message translates to:
  /// **'Unsuccessful'**
  String get unsuccessfulBiometrics;

  /// Alert message when Biometrics are Unavailable on the Device
  ///
  /// In en, this message translates to:
  /// **'Biometrics not available, please choose another option'**
  String get biometricsUnavailable;

  /// Alert message when Biometrics are Available on the Device but have not been Enrolled
  ///
  /// In en, this message translates to:
  /// **'Biometrics not enrolled. Please choose another option, or enroll Biometrics and then try again.'**
  String get biometricsNotEnrolled;

  /// Platform Exception error when trying to login
  ///
  /// In en, this message translates to:
  /// **'Error trying to login.'**
  String get biometricPlatformException;

  /// Other type of errror that is returned from a Biometric Login attempt
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get biometricOtherException;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'es', 'fr', 'ht', 'pt', 'th', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'ht': return AppLocalizationsHt();
    case 'pt': return AppLocalizationsPt();
    case 'th': return AppLocalizationsTh();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
