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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get welcomemessage {
    return Intl.message(
      'Welcome to',
      name: 'welcomemessage',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals with top quality.`
  String get welcomemessagedetails {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals with top quality.',
      name: 'welcomemessagedetails',
      desc: '',
      args: [],
    );
  }

  /// `Search & Shop`
  String get secondonboardingmessage {
    return Intl.message(
      'Search & Shop',
      name: 'secondonboardingmessage',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest carefully selected fruits. Check details, images, and reviews to ensure you choose the perfect fruit.`
  String get secondonboardingmessagedetails {
    return Intl.message(
      'We offer you the finest carefully selected fruits. Check details, images, and reviews to ensure you choose the perfect fruit.',
      name: 'secondonboardingmessagedetails',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startnow {
    return Intl.message(
      'Start Now',
      name: 'startnow',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message(
      'Sign In',
      name: 'signin',
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

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signgoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signgoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get signfacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'signfacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signinapple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signinapple',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgetpassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get dosignup {
    return Intl.message(
      'Create an Account',
      name: 'dosignup',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get donthaveaccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'donthaveaccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullname {
    return Intl.message(
      'Full Name',
      name: 'fullname',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get haveaccountalready {
    return Intl.message(
      'Already have an account?',
      name: 'haveaccountalready',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newaccount {
    return Intl.message(
      'New Account',
      name: 'newaccount',
      desc: '',
      args: [],
    );
  }

  /// `Our Terms & Conditions`
  String get conditions {
    return Intl.message(
      'Our Terms & Conditions',
      name: 'conditions',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to`
  String get applyconditions {
    return Intl.message(
      'By creating an account, you agree to',
      name: 'applyconditions',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning!..`
  String get goodmorning {
    return Intl.message(
      'Good Morning!..',
      name: 'goodmorning',
      desc: '',
      args: [],
    );
  }

  /// `Search for .....`
  String get searchfor {
    return Intl.message(
      'Search for .....',
      name: 'searchfor',
      desc: '',
      args: [],
    );
  }

  /// `Best Sellers`
  String get bestseller {
    return Intl.message(
      'Best Sellers',
      name: 'bestseller',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
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

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Search Results`
  String get searchresults {
    return Intl.message(
      'Search Results',
      name: 'searchresults',
      desc: '',
      args: [],
    );
  }

  /// `Oops... This information is not available at the moment`
  String get emptysearch {
    return Intl.message(
      'Oops... This information is not available at the moment',
      name: 'emptysearch',
      desc: '',
      args: [],
    );
  }

  /// `No search results found`
  String get notresultsearch {
    return Intl.message(
      'No search results found',
      name: 'notresultsearch',
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

  /// `Mark all as read`
  String get markallread {
    return Intl.message(
      'Mark all as read',
      name: 'markallread',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get neew {
    return Intl.message(
      'New',
      name: 'neew',
      desc: '',
      args: [],
    );
  }

  /// `Earlier`
  String get inoldtime {
    return Intl.message(
      'Earlier',
      name: 'inoldtime',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Our Products`
  String get ourproducts {
    return Intl.message(
      'Our Products',
      name: 'ourproducts',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get cartshopping {
    return Intl.message(
      'Shopping Cart',
      name: 'cartshopping',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get addtocart {
    return Intl.message(
      'Add to Cart',
      name: 'addtocart',
      desc: '',
      args: [],
    );
  }

  /// `Calory`
  String get calory {
    return Intl.message(
      'Calory',
      name: 'calory',
      desc: '',
      args: [],
    );
  }

  /// `Gram`
  String get gram {
    return Intl.message(
      'Gram',
      name: 'gram',
      desc: '',
      args: [],
    );
  }

  /// `Organic`
  String get organic {
    return Intl.message(
      'Organic',
      name: 'organic',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get pound {
    return Intl.message(
      'EGP',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `You have`
  String get have {
    return Intl.message(
      'You have',
      name: 'have',
      desc: '',
      args: [],
    );
  }

  /// `Products in your cart`
  String get productincart {
    return Intl.message(
      'Products in your cart',
      name: 'productincart',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summery {
    return Intl.message(
      'Summary',
      name: 'summery',
      desc: '',
      args: [],
    );
  }

  /// `Write a comment..`
  String get addcomment {
    return Intl.message(
      'Write a comment..',
      name: 'addcomment',
      desc: '',
      args: [],
    );
  }

  /// `Recommended`
  String get recommended {
    return Intl.message(
      'Recommended',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get onereview {
    return Intl.message(
      'Review',
      name: 'onereview',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method`
  String get paymentmethod {
    return Intl.message(
      'Please select a payment method',
      name: 'paymentmethod',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Pay Now`
  String get paynow {
    return Intl.message(
      'Pay Now',
      name: 'paynow',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Save Address`
  String get saveaddress {
    return Intl.message(
      'Save Address',
      name: 'saveaddress',
      desc: '',
      args: [],
    );
  }

  /// `Floor number, Apartment number ..`
  String get floornumber {
    return Intl.message(
      'Floor number, Apartment number ..',
      name: 'floornumber',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cod {
    return Intl.message(
      'Cash on Delivery',
      name: 'cod',
      desc: '',
      args: [],
    );
  }

  /// `Pickup from store`
  String get recievefromplace {
    return Intl.message(
      'Pickup from store',
      name: 'recievefromplace',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary:`
  String get order {
    return Intl.message(
      'Order Summary:',
      name: 'order',
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

  /// `Subtotal:`
  String get subtotal {
    return Intl.message(
      'Subtotal:',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get deliveryaddress {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryaddress',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirmorder {
    return Intl.message(
      'Confirm Order',
      name: 'confirmorder',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get ordernumber {
    return Intl.message(
      'Order Number',
      name: 'ordernumber',
      desc: '',
      args: [],
    );
  }

  /// `Ordered on`
  String get orderedin {
    return Intl.message(
      'Ordered on',
      name: 'orderedin',
      desc: '',
      args: [],
    );
  }

  /// `Number of Orders`
  String get numberoforders {
    return Intl.message(
      'Number of Orders',
      name: 'numberoforders',
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

  /// `My Orders`
  String get myorders {
    return Intl.message(
      'My Orders',
      name: 'myorders',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logout {
    return Intl.message(
      'Log Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Personal Profile`
  String get personalprofile {
    return Intl.message(
      'Personal Profile',
      name: 'personalprofile',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get Favorites {
    return Intl.message(
      'Favorites',
      name: 'Favorites',
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

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutus {
    return Intl.message(
      'About Us',
      name: 'aboutus',
      desc: '',
      args: [],
    );
  }

  /// `Add a New Payment Method`
  String get addnewpaymentmethod {
    return Intl.message(
      'Add a New Payment Method',
      name: 'addnewpaymentmethod',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log out?`
  String get wantlogout {
    return Intl.message(
      'Do you want to log out?',
      name: 'wantlogout',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get confirm {
    return Intl.message(
      'Yes',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get savechanges {
    return Intl.message(
      'Save Changes',
      name: 'savechanges',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalinformation {
    return Intl.message(
      'Personal Information',
      name: 'personalinformation',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changepassword {
    return Intl.message(
      'Change Password',
      name: 'changepassword',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currentpassword {
    return Intl.message(
      'Current Password',
      name: 'currentpassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newpassword {
    return Intl.message(
      'New Password',
      name: 'newpassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmpassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// ` / kilo`
  String get kilo {
    return Intl.message(
      ' / kilo',
      name: 'kilo',
      desc: '',
      args: [],
    );
  }

  /// `expiry`
  String get expiry {
    return Intl.message(
      'expiry',
      name: 'expiry',
      desc: '',
      args: [],
    );
  }

  /// `In Cart`
  String get incart {
    return Intl.message(
      'In Cart',
      name: 'incart',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get createnewpassword {
    return Intl.message(
      'Create New Password',
      name: 'createnewpassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, just enter your phone number and we will send you a verification code.`
  String get hintforgetpassword {
    return Intl.message(
      'Don\'t worry, just enter your phone number and we will send you a verification code.',
      name: 'hintforgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phonenumber {
    return Intl.message(
      'Phone Number',
      name: 'phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get checkcode {
    return Intl.message(
      'Verify Code',
      name: 'checkcode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendcode {
    return Intl.message(
      'Resend Code',
      name: 'resendcode',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get titleforgetpass {
    return Intl.message(
      'Forgot Password',
      name: 'titleforgetpass',
      desc: '',
      args: [],
    );
  }

  /// `want to delete the product?`
  String get needdeleteproduct {
    return Intl.message(
      'want to delete the product?',
      name: 'needdeleteproduct',
      desc: '',
      args: [],
    );
  }

  /// `No products in the cart`
  String get noprodincart {
    return Intl.message(
      'No products in the cart',
      name: 'noprodincart',
      desc: '',
      args: [],
    );
  }

  /// `field required`
  String get fieldrequired {
    return Intl.message(
      'field required',
      name: 'fieldrequired',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get passwordnotmatch {
    return Intl.message(
      'Password does not match',
      name: 'passwordnotmatch',
      desc: '',
      args: [],
    );
  }

  /// `This email does not exist`
  String get emailnotfound {
    return Intl.message(
      'This email does not exist',
      name: 'emailnotfound',
      desc: '',
      args: [],
    );
  }

  /// `You must accept the terms and conditions`
  String get havetoaccept {
    return Intl.message(
      'You must accept the terms and conditions',
      name: 'havetoaccept',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myprofile {
    return Intl.message(
      'My Profile',
      name: 'myprofile',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kilogarm {
    return Intl.message(
      'kg',
      name: 'kilogarm',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder Name`
  String get cardowner {
    return Intl.message(
      'Cardholder Name',
      name: 'cardowner',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardnumber {
    return Intl.message(
      'Card Number',
      name: 'cardnumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiration Date`
  String get expirydate {
    return Intl.message(
      'Expiration Date',
      name: 'expirydate',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Add a New Card`
  String get addnewcard {
    return Intl.message(
      'Add a New Card',
      name: 'addnewcard',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
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
  Future<S> load(Locale locale) => S.load(locale);
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
