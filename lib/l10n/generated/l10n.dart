// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Delivery App`
  String get deliveryApp {
    return Intl.message(
      'Delivery App',
      name: 'deliveryApp',
      desc: '',
      args: [],
    );
  }

  /// `Please write your phone or email address in order to login into your account`
  String get pleaseWriteYourPhoneOrmail {
    return Intl.message(
      'Please write your phone or email address in order to login into your account',
      name: 'pleaseWriteYourPhoneOrmail',
      desc: '',
      args: [],
    );
  }

  /// `Mobile No. or Email`
  String get mobileNoOrMail {
    return Intl.message(
      'Mobile No. or Email',
      name: 'mobileNoOrMail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgetPass {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Your email address is invalid`
  String get yourEmailIsInvalid {
    return Intl.message(
      'Your email address is invalid',
      name: 'yourEmailIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Your password is too short`
  String get yourPassIstooShort {
    return Intl.message(
      'Your password is too short',
      name: 'yourPassIstooShort',
      desc: '',
      args: [],
    );
  }

  /// `Your mobile number is invalid`
  String get yourPhoneIsInvalid {
    return Intl.message(
      'Your mobile number is invalid',
      name: 'yourPhoneIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter mobile number`
  String get pleaseEnterPhoneNumber {
    return Intl.message(
      'Please enter mobile number',
      name: 'pleaseEnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Your password is required`
  String get yourPasswordIsRequired {
    return Intl.message(
      'Your password is required',
      name: 'yourPasswordIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email or phone number`
  String get pleaseEnterYourPhoneOrEmail {
    return Intl.message(
      'Please enter your email or phone number',
      name: 'pleaseEnterYourPhoneOrEmail',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passIsRequired {
    return Intl.message(
      'Password is required',
      name: 'passIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get nameIsRequired {
    return Intl.message(
      'Name is required',
      name: 'nameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name must has only letters`
  String get nameMustHasOnlyLetters {
    return Intl.message(
      'Name must has only letters',
      name: 'nameMustHasOnlyLetters',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Check your inbox!`
  String get checkUrInbox {
    return Intl.message(
      'Check your inbox!',
      name: 'checkUrInbox',
      desc: '',
      args: [],
    );
  }

  /// `We've been sent an email to the mentioned email address in your inbox please check it in order to reset your password`
  String get weHaveSentEmailCheckItToResetPass {
    return Intl.message(
      'We\'ve been sent an email to the mentioned email address in your inbox please check it in order to reset your password',
      name: 'weHaveSentEmailCheckItToResetPass',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please write your phone or email address in order to login into your account`
  String get pleaseWriteUrPhoneToLogin {
    return Intl.message(
      'Please write your phone or email address in order to login into your account',
      name: 'pleaseWriteUrPhoneToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Your new password`
  String get yourNewPass {
    return Intl.message(
      'Your new password',
      name: 'yourNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirmNewPass {
    return Intl.message(
      'Confirm new password',
      name: 'confirmNewPass',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentPass {
    return Intl.message(
      'Current Password',
      name: 'currentPass',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Password must be the same`
  String get passwordMustBeTheSame {
    return Intl.message(
      'Password must be the same',
      name: 'passwordMustBeTheSame',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address to reset your account password.`
  String get enterEmailAddressToResetPass {
    return Intl.message(
      'Please enter your email address to reset your account password.',
      name: 'enterEmailAddressToResetPass',
      desc: '',
      args: [],
    );
  }

  /// `The forget code is sent to your email`
  String get theForgetCodeIsSent {
    return Intl.message(
      'The forget code is sent to your email',
      name: 'theForgetCodeIsSent',
      desc: '',
      args: [],
    );
  }

  /// `Password is reset successfully, Please login again`
  String get passwordIsResetSuccessfullyLoginAgain {
    return Intl.message(
      'Password is reset successfully, Please login again',
      name: 'passwordIsResetSuccessfullyLoginAgain',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To Delivery App`
  String get welcomeToDeliveryApp {
    return Intl.message(
      'Welcome To Delivery App',
      name: 'welcomeToDeliveryApp',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Idle`
  String get idle {
    return Intl.message(
      'Idle',
      name: 'idle',
      desc: '',
      args: [],
    );
  }

  /// `Invisible`
  String get invisible {
    return Intl.message(
      'Invisible',
      name: 'invisible',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Respond time`
  String get respondTime {
    return Intl.message(
      'Respond time',
      name: 'respondTime',
      desc: '',
      args: [],
    );
  }

  /// `Got Ready`
  String get gotReady {
    return Intl.message(
      'Got Ready',
      name: 'gotReady',
      desc: '',
      args: [],
    );
  }

  /// `Order Missed`
  String get orderMissed {
    return Intl.message(
      'Order Missed',
      name: 'orderMissed',
      desc: '',
      args: [],
    );
  }

  /// `Current Month`
  String get currentMonth {
    return Intl.message(
      'Current Month',
      name: 'currentMonth',
      desc: '',
      args: [],
    );
  }

  /// `Last Months KPI`
  String get lastMonthKpi {
    return Intl.message(
      'Last Months KPI',
      name: 'lastMonthKpi',
      desc: '',
      args: [],
    );
  }

  /// `Kpi`
  String get kpi {
    return Intl.message(
      'Kpi',
      name: 'kpi',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Orders List`
  String get ordersList {
    return Intl.message(
      'Orders List',
      name: 'ordersList',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to exit the app?`
  String get doYouWantToExitTheApp {
    return Intl.message(
      'Do you want to exit the app?',
      name: 'doYouWantToExitTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Order No.`
  String get orderNo {
    return Intl.message(
      'Order No.',
      name: 'orderNo',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Deliver To`
  String get deliverTo {
    return Intl.message(
      'Deliver To',
      name: 'deliverTo',
      desc: '',
      args: [],
    );
  }

  /// `Search by order no.`
  String get searchByOrderNo {
    return Intl.message(
      'Search by order no.',
      name: 'searchByOrderNo',
      desc: '',
      args: [],
    );
  }

  /// `Current Orders`
  String get currentOrders {
    return Intl.message(
      'Current Orders',
      name: 'currentOrders',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get shippingAddress {
    return Intl.message(
      'Shipping Address',
      name: 'shippingAddress',
      desc: '',
      args: [],
    );
  }

  /// `Directions`
  String get directions {
    return Intl.message(
      'Directions',
      name: 'directions',
      desc: '',
      args: [],
    );
  }

  /// `Phone No`
  String get phoneNo {
    return Intl.message(
      'Phone No',
      name: 'phoneNo',
      desc: '',
      args: [],
    );
  }

  /// `Fast Call`
  String get fastCall {
    return Intl.message(
      'Fast Call',
      name: 'fastCall',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Cash On Delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash On Delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Customer Already Paid`
  String get customeAlreadyPaid {
    return Intl.message(
      'Customer Already Paid',
      name: 'customeAlreadyPaid',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Order Items`
  String get orderItems {
    return Intl.message(
      'Order Items',
      name: 'orderItems',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Fees`
  String get shippingFees {
    return Intl.message(
      'Shipping Fees',
      name: 'shippingFees',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Delivering Order`
  String get confirmDeliveringOrder {
    return Intl.message(
      'Confirm Delivering Order',
      name: 'confirmDeliveringOrder',
      desc: '',
      args: [],
    );
  }

  /// `Choose the method of payment`
  String get chooseTheMethodOfPayment {
    return Intl.message(
      'Choose the method of payment',
      name: 'chooseTheMethodOfPayment',
      desc: '',
      args: [],
    );
  }

  /// `Card On Delivery`
  String get cardOnDelivery {
    return Intl.message(
      'Card On Delivery',
      name: 'cardOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Thank You For Delivering Order`
  String get thankUForDeliveringOrder {
    return Intl.message(
      'Thank You For Delivering Order',
      name: 'thankUForDeliveringOrder',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get orderStatus {
    return Intl.message(
      'Order Status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Have you delivered the order?`
  String get haveUDeliveredTheOrder {
    return Intl.message(
      'Have you delivered the order?',
      name: 'haveUDeliveredTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Order Is Delivered`
  String get yesOrderIsDelivered {
    return Intl.message(
      'Yes, Order Is Delivered',
      name: 'yesOrderIsDelivered',
      desc: '',
      args: [],
    );
  }

  /// `No, There Is An Issue With Order`
  String get noThereIsAnIssueWithOrder {
    return Intl.message(
      'No, There Is An Issue With Order',
      name: 'noThereIsAnIssueWithOrder',
      desc: '',
      args: [],
    );
  }

  /// `Issue with the order?`
  String get issueWithTheOrder {
    return Intl.message(
      'Issue with the order?',
      name: 'issueWithTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Please tell us more information regarding your current situation with the customer`
  String get pleaseTellUsMoreInfoAboutSituation {
    return Intl.message(
      'Please tell us more information regarding your current situation with the customer',
      name: 'pleaseTellUsMoreInfoAboutSituation',
      desc: '',
      args: [],
    );
  }

  /// `What's Happened`
  String get whatIsHappened {
    return Intl.message(
      'What\'s Happened',
      name: 'whatIsHappened',
      desc: '',
      args: [],
    );
  }

  /// `Tell Us Your Situation`
  String get tellUsYourSituation {
    return Intl.message(
      'Tell Us Your Situation',
      name: 'tellUsYourSituation',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Successfully Logged in`
  String get successfullyLoggedIn {
    return Intl.message(
      'Successfully Logged in',
      name: 'successfullyLoggedIn',
      desc: '',
      args: [],
    );
  }

  /// `Account Settings`
  String get accountSettings {
    return Intl.message(
      'Account Settings',
      name: 'accountSettings',
      desc: '',
      args: [],
    );
  }

  /// `Change your account settings easily`
  String get changeAccountSettingEasily {
    return Intl.message(
      'Change your account settings easily',
      name: 'changeAccountSettingEasily',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Successfully Logged out`
  String get successfullyLogout {
    return Intl.message(
      'Successfully Logged out',
      name: 'successfullyLogout',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Profile is updated successfully`
  String get profileIsUpdated {
    return Intl.message(
      'Profile is updated successfully',
      name: 'profileIsUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get noDataFound {
    return Intl.message(
      'No Data Found',
      name: 'noDataFound',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check {
    return Intl.message(
      'Check',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Receiving Order`
  String get confirmReceivingOrder {
    return Intl.message(
      'Confirm Receiving Order',
      name: 'confirmReceivingOrder',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for receiving the order`
  String get thankUForReceivingOrder {
    return Intl.message(
      'Thank you for receiving the order',
      name: 'thankUForReceivingOrder',
      desc: '',
      args: [],
    );
  }

  /// `Thank You For Reporting, We Will Review Your Feedback And Will Get Back To You Soon`
  String get thankUForReporting {
    return Intl.message(
      'Thank You For Reporting, We Will Review Your Feedback And Will Get Back To You Soon',
      name: 'thankUForReporting',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications found`
  String get noNotificationFound {
    return Intl.message(
      'No Notifications found',
      name: 'noNotificationFound',
      desc: '',
      args: [],
    );
  }

  /// `Non-Active`
  String get nonActive {
    return Intl.message(
      'Non-Active',
      name: 'nonActive',
      desc: '',
      args: [],
    );
  }

  /// `Your Status`
  String get yourStatus {
    return Intl.message(
      'Your Status',
      name: 'yourStatus',
      desc: '',
      args: [],
    );
  }

  /// `At`
  String get at {
    return Intl.message(
      'At',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get floor {
    return Intl.message(
      'Floor',
      name: 'floor',
      desc: '',
      args: [],
    );
  }

  /// `Flat`
  String get flat {
    return Intl.message(
      'Flat',
      name: 'flat',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
