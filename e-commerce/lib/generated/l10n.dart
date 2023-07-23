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

  /// `Hi`
  String get hi {
    return Intl.message(
      'Hi',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Add new product`
  String get addNewProduct {
    return Intl.message(
      'Add new product',
      name: 'addNewProduct',
      desc: '',
      args: [],
    );
  }

  /// `In Arabic for Arabic speaking customers`
  String get arabicProductName {
    return Intl.message(
      'In Arabic for Arabic speaking customers',
      name: 'arabicProductName',
      desc: '',
      args: [],
    );
  }

  /// `In English for English speaking customers`
  String get englishProductName {
    return Intl.message(
      'In English for English speaking customers',
      name: 'englishProductName',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get productName {
    return Intl.message(
      'Product Name',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Product classification`
  String get productClassification {
    return Intl.message(
      'Product classification',
      name: 'productClassification',
      desc: '',
      args: [],
    );
  }

  /// `Select item`
  String get selectItem {
    return Intl.message(
      'Select item',
      name: 'selectItem',
      desc: '',
      args: [],
    );
  }

  /// `Add Product Images`
  String get addProductImages {
    return Intl.message(
      'Add Product Images',
      name: 'addProductImages',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Something happened`
  String get someThingHappened {
    return Intl.message(
      'Something happened',
      name: 'someThingHappened',
      desc: '',
      args: [],
    );
  }

  /// `Product details`
  String get productDetails {
    return Intl.message(
      'Product details',
      name: 'productDetails',
      desc: '',
      args: [],
    );
  }

  /// `Product Colors`
  String get productColors {
    return Intl.message(
      'Product Colors',
      name: 'productColors',
      desc: '',
      args: [],
    );
  }

  /// `Pick a color!`
  String get pickAColor {
    return Intl.message(
      'Pick a color!',
      name: 'pickAColor',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message(
      'Got it',
      name: 'gotIt',
      desc: '',
      args: [],
    );
  }

  /// `The brand and the industry...`
  String get theBrandAndTheIndustry {
    return Intl.message(
      'The brand and the industry...',
      name: 'theBrandAndTheIndustry',
      desc: '',
      args: [],
    );
  }

  /// `Measurement guide attached`
  String get measurementGuideAttached {
    return Intl.message(
      'Measurement guide attached',
      name: 'measurementGuideAttached',
      desc: '',
      args: [],
    );
  }

  /// `Guide`
  String get guide {
    return Intl.message(
      'Guide',
      name: 'guide',
      desc: '',
      args: [],
    );
  }

  /// `do not apply`
  String get doNotApply {
    return Intl.message(
      'do not apply',
      name: 'doNotApply',
      desc: '',
      args: [],
    );
  }

  /// `menswear`
  String get menswear {
    return Intl.message(
      'menswear',
      name: 'menswear',
      desc: '',
      args: [],
    );
  }

  /// `Women's clothing`
  String get womenClothing {
    return Intl.message(
      'Women\'s clothing',
      name: 'womenClothing',
      desc: '',
      args: [],
    );
  }

  /// `boys clothes`
  String get boysClothes {
    return Intl.message(
      'boys clothes',
      name: 'boysClothes',
      desc: '',
      args: [],
    );
  }

  /// `girls clothes`
  String get girlsClothes {
    return Intl.message(
      'girls clothes',
      name: 'girlsClothes',
      desc: '',
      args: [],
    );
  }

  /// `men's shoes`
  String get menShoes {
    return Intl.message(
      'men\'s shoes',
      name: 'menShoes',
      desc: '',
      args: [],
    );
  }

  /// `women shoes`
  String get womenShoes {
    return Intl.message(
      'women shoes',
      name: 'womenShoes',
      desc: '',
      args: [],
    );
  }

  /// `boys shoes`
  String get boysShoes {
    return Intl.message(
      'boys shoes',
      name: 'boysShoes',
      desc: '',
      args: [],
    );
  }

  /// `girls shoes`
  String get girlsShoes {
    return Intl.message(
      'girls shoes',
      name: 'girlsShoes',
      desc: '',
      args: [],
    );
  }

  /// `Liter`
  String get liter {
    return Intl.message(
      'Liter',
      name: 'liter',
      desc: '',
      args: [],
    );
  }

  /// `Ml`
  String get ml {
    return Intl.message(
      'Ml',
      name: 'ml',
      desc: '',
      args: [],
    );
  }

  /// `ounce`
  String get ounce {
    return Intl.message(
      'ounce',
      name: 'ounce',
      desc: '',
      args: [],
    );
  }

  /// `Toula`
  String get toula {
    return Intl.message(
      'Toula',
      name: 'toula',
      desc: '',
      args: [],
    );
  }

  /// `GM`
  String get gm {
    return Intl.message(
      'GM',
      name: 'gm',
      desc: '',
      args: [],
    );
  }

  /// `KGM`
  String get kgm {
    return Intl.message(
      'KGM',
      name: 'kgm',
      desc: '',
      args: [],
    );
  }

  /// `CM`
  String get cm {
    return Intl.message(
      'CM',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get m {
    return Intl.message(
      'M',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `Product Size`
  String get productSize {
    return Intl.message(
      'Product Size',
      name: 'productSize',
      desc: '',
      args: [],
    );
  }

  /// `product Weight`
  String get productWeight {
    return Intl.message(
      'product Weight',
      name: 'productWeight',
      desc: '',
      args: [],
    );
  }

  /// `Product Dimensions`
  String get productDimensions {
    return Intl.message(
      'Product Dimensions',
      name: 'productDimensions',
      desc: '',
      args: [],
    );
  }

  /// `Marketing phrase for the product`
  String get marketingPhraseForTheProduct {
    return Intl.message(
      'Marketing phrase for the product',
      name: 'marketingPhraseForTheProduct',
      desc: '',
      args: [],
    );
  }

  /// `Available Receive`
  String get availableToReceive {
    return Intl.message(
      'Available Receive',
      name: 'availableToReceive',
      desc: '',
      args: [],
    );
  }

  /// `Available Deliver`
  String get availableToDeliver {
    return Intl.message(
      'Available Deliver',
      name: 'availableToDeliver',
      desc: '',
      args: [],
    );
  }

  /// `Available Shipping`
  String get availableToShipping {
    return Intl.message(
      'Available Shipping',
      name: 'availableToShipping',
      desc: '',
      args: [],
    );
  }

  /// `Retrievable`
  String get retrievable {
    return Intl.message(
      'Retrievable',
      name: 'retrievable',
      desc: '',
      args: [],
    );
  }

  /// `Replaceable`
  String get replaceable {
    return Intl.message(
      'Replaceable',
      name: 'replaceable',
      desc: '',
      args: [],
    );
  }

  /// `Attaching warranty files`
  String get attachingWarrantyFiles {
    return Intl.message(
      'Attaching warranty files',
      name: 'attachingWarrantyFiles',
      desc: '',
      args: [],
    );
  }

  /// `Electrical specifications`
  String get electricalSpecifications {
    return Intl.message(
      'Electrical specifications',
      name: 'electricalSpecifications',
      desc: '',
      args: [],
    );
  }

  /// `Plug type`
  String get plugType {
    return Intl.message(
      'Plug type',
      name: 'plugType',
      desc: '',
      args: [],
    );
  }

  /// `Product additions`
  String get productAdditions {
    return Intl.message(
      'Product additions',
      name: 'productAdditions',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Add Zero if addition is free`
  String get addZeroIfProductFree {
    return Intl.message(
      'Add Zero if addition is free',
      name: 'addZeroIfProductFree',
      desc: '',
      args: [],
    );
  }

  /// `Product additions images`
  String get productAdditionsImages {
    return Intl.message(
      'Product additions images',
      name: 'productAdditionsImages',
      desc: '',
      args: [],
    );
  }

  /// `Product price without additives (without tax):`
  String get productPriceWithoutAdditivesWithoutTax {
    return Intl.message(
      'Product price without additives (without tax):',
      name: 'productPriceWithoutAdditivesWithoutTax',
      desc: '',
      args: [],
    );
  }

  /// `Product code`
  String get productCode {
    return Intl.message(
      'Product code',
      name: 'productCode',
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

  /// `Save Data`
  String get saveData {
    return Intl.message(
      'Save Data',
      name: 'saveData',
      desc: '',
      args: [],
    );
  }

  /// `Add Anther Product`
  String get addAntherProduct {
    return Intl.message(
      'Add Anther Product',
      name: 'addAntherProduct',
      desc: '',
      args: [],
    );
  }

  /// `Product subcategory`
  String get productSubcategory {
    return Intl.message(
      'Product subcategory',
      name: 'productSubcategory',
      desc: '',
      args: [],
    );
  }

  /// `Without minimum or maximum`
  String get withoutMinimumOrMaximum {
    return Intl.message(
      'Without minimum or maximum',
      name: 'withoutMinimumOrMaximum',
      desc: '',
      args: [],
    );
  }

  /// `Write all product specifications in detail such as brand and industry`
  String get writeAllProductSpecificationsInDetailSuchAsBrandAnd {
    return Intl.message(
      'Write all product specifications in detail such as brand and industry',
      name: 'writeAllProductSpecificationsInDetailSuchAsBrandAnd',
      desc: '',
      args: [],
    );
  }

  /// `Choose colors or not applicable`
  String get chooseColorsOrNotApplicable {
    return Intl.message(
      'Choose colors or not applicable',
      name: 'chooseColorsOrNotApplicable',
      desc: '',
      args: [],
    );
  }

  /// `images Colors`
  String get imagesColors {
    return Intl.message(
      'images Colors',
      name: 'imagesColors',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo from color`
  String get takeAPhotoFromColor {
    return Intl.message(
      'Take a photo from color',
      name: 'takeAPhotoFromColor',
      desc: '',
      args: [],
    );
  }

  /// `Choose guide or not apply`
  String get chooseGuideOrNotApply {
    return Intl.message(
      'Choose guide or not apply',
      name: 'chooseGuideOrNotApply',
      desc: '',
      args: [],
    );
  }

  /// `Choose Guide`
  String get chooseGuide {
    return Intl.message(
      'Choose Guide',
      name: 'chooseGuide',
      desc: '',
      args: [],
    );
  }

  /// `Quantity available for each size:`
  String get quantityAvailableForEachSize {
    return Intl.message(
      'Quantity available for each size:',
      name: 'quantityAvailableForEachSize',
      desc: '',
      args: [],
    );
  }

  /// `According to the list of products for your shop`
  String get accordingToTheListOfProductsForYourShop {
    return Intl.message(
      'According to the list of products for your shop',
      name: 'accordingToTheListOfProductsForYourShop',
      desc: '',
      args: [],
    );
  }

  /// `This Color is Already Exists`
  String get thisColorIsAlreadyExists {
    return Intl.message(
      'This Color is Already Exists',
      name: 'thisColorIsAlreadyExists',
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
