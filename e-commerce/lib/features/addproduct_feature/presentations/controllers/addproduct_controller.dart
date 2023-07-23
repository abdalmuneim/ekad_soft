import 'dart:async';
import 'dart:io';
import 'package:ecommerce_futter/common/components/attaching_files.dart';
import 'package:ecommerce_futter/common/components/color_pic.dart';
import 'package:ecommerce_futter/common/components/qr_code.dart';
import 'package:ecommerce_futter/common/components/toast_manager.dart';
import 'package:ecommerce_futter/common/components/image_pic.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/enums.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/guide_model.dart';
import 'package:ecommerce_futter/features/addproduct_feature/data/models/product_model.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  final arabicProductNameTEXT = TextEditingController();
  final englishProductNameTEXT = TextEditingController();
  final detailsProductTEXT = TextEditingController();
  final List<int> _productClassification = [1, 2, 3, 4, 5];
  List<int> get productClassification => _productClassification;
  int? _selectedClassification;
  int? get selectedClassification => _selectedClassification;

  final List<String> _productGuideType = [
    S.of(Get.context!).doNotApply,
    S.of(Get.context!).menswear,
    S.of(Get.context!).womenClothing,
    S.of(Get.context!).boysClothes,
    S.of(Get.context!).girlsClothes,
    S.of(Get.context!).menShoes,
    S.of(Get.context!).womenShoes,
    S.of(Get.context!).boysShoes,
    S.of(Get.context!).girlsShoes,
  ];

  final List<String> _productMeasurementSize = [
    S.of(Get.context!).doNotApply,
    S.of(Get.context!).liter,
    S.of(Get.context!).ml,
    S.of(Get.context!).ounce,
    S.of(Get.context!).toula,
  ];
  List<String> get productMeasurementSize => _productMeasurementSize;
  String? _selectedMeasurementSize;
  String? get selectedMeasurementSize => _selectedMeasurementSize;
  final productMeasurementSizeTEXT = TextEditingController();

  final List<String> _productMeasurementWeight = [
    S.of(Get.context!).doNotApply,
    S.of(Get.context!).gm,
    S.of(Get.context!).kgm,
    S.of(Get.context!).ounce,
  ];
  List<String> get productMeasurementWeight => _productMeasurementWeight;
  String? _selectedMeasurementWeight;
  String? get selectedMeasurementWeight => _selectedMeasurementWeight;
  final productMeasurementWeightTEXT = TextEditingController();

  final List<String> _productMeasurementDimensions = [
    S.of(Get.context!).doNotApply,
    S.of(Get.context!).cm,
    S.of(Get.context!).m,
  ];
  List<String> get productMeasurementDimensions =>
      _productMeasurementDimensions;
  String? _selectedMeasurementDimensions;
  String? get selectedMeasurementDimensions => _selectedMeasurementDimensions;
  final productMeasurementDimensionsTEXT = TextEditingController();

  List<File> _productImages = [];
  List<File> get productImages => _productImages;
  File? _tackImg;

  bool _checkboxDeliver = false;
  bool get checkboxDeliver => _checkboxDeliver;
  bool _checkboxReceive = false;
  bool get checkboxReceive => _checkboxReceive;
  bool _checkboxShipping = false;
  bool get checkboxShipping => _checkboxShipping;

  bool _checkboxRetrievable = false;
  bool get checkboxRetrievable => _checkboxRetrievable;

  bool _checkboxReplaceable = false;
  bool get checkboxReplaceable => _checkboxReplaceable;

  List<File>? _guaranteeFiles = [];
  List<File>? get guaranteeFiles => _guaranteeFiles;

  bool _electricalSpecifications = false;
  bool get electricalSpecifications => _electricalSpecifications;
  final electricalSpecificationsTEXT = TextEditingController();

  bool _plugType = false;
  bool get plugType => _plugType;
  final plugTypeTEXT = TextEditingController();

  bool _productAdditionsCheckbox = false;
  bool get productAdditionsCheckbox => _productAdditionsCheckbox;
  final productNameTEXT = TextEditingController();
  final priceTEXT = TextEditingController();
  final List<ProductModel> _productAdditions = [];
  List<ProductModel> get productAdditions => _productAdditions;
  final List<File> _productAdditionsImages = [];
  List<File> get productAdditionsImages => _productAdditionsImages;
  File? _tackProductAdditionsImages;
  final marketingPhraseTEXT = TextEditingController();
  final productPriceWithoutTEXT = TextEditingController();

  final qrCodeTEXT = TextEditingController();

  ///  start     product image
  removeProductImage(File file) {
    _productImages.removeWhere((element) => element == file);
    update();
  }

  ///  end     product image

//    start      Colors
  bool _doNotApplyColors = false;
  bool get doNotApplyColors => _doNotApplyColors;
  Color? _selectedColor;
  List<ProductModel> _selectedProductColors = [];
  List<ProductModel> get selectedProductColors => _selectedProductColors;
  onChangedDoNotApplyColors(bool value) {
    _doNotApplyColors = value;
    if (!_doNotApplyColors) {
      _selectedProductColors.clear();
    }
    update();
  }

  tackColor() {
    ColorPic.chooseColor(
      (value) {
        if (value != null) {
          _selectedColor = value;
        } else {
          ToastManager.showError(S.of(Get.context!).someThingHappened);
        }
        if (_selectedColor != null) {
          onSelectedColor(_selectedColor!);
          update();
        }
      },
      initialColor: _selectedColor,
    );
  }

/* 
  _getColors() {
    Timer.periodic(
      Duration.zero,
      (v) {
        if (v.tick == 10) {
          v.cancel();
        }
        final Color color =
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
        final check = _productColors.any((element) => element == color);
        print(check);
        if (check) {
        } else {
          _productColors.add(color);
          update();
        }
        print(_productColors.length);
      },
    );
  }
 */
  onSelectedColor(Color color) {
    final checked =
        _selectedProductColors.any((element) => element.color == color);
    if (checked) {
      _selectedProductColors.removeWhere((element) => element.color == color);
      update();
    } else {
      _selectedProductColors.add(ProductModel(color: color));
      update();
    }
  }
//     End      Colors

//     start    Guide
  bool _doNotApplyGuide = false;
  bool get doNotApplyGuide => _doNotApplyGuide;

  List<GuideModel> _selectedGuide = [];
  List<GuideModel> get selectedGuide => _selectedGuide;
  onChangedDoNotApplyGuide(bool value) {
    _doNotApplyGuide = value;
    if (!_doNotApplyGuide) {
      _selectedGuide.clear();
    }
    update();
  }

  onSelectGuide(GuideModel value) {
    final check = _selectedGuide.any((element) => element.guide == value.guide);
    if (check) {
      _selectedGuide.removeWhere((element) => element.guide == value.guide);
      update();
    } else {
      _selectedGuide.add(value);
      update();
    }
    update();
  }
//     End    Guide

  scanQRCode() async {
    final qr = await QrCode.instance.scanBarcodeNormal();
    qrCodeTEXT.text = qr;
    update();
  }

  bool _isSaved = false;
  bool get isSaved => _isSaved;
  saveProduct() async {
    _isSaved = true;
    update();
    Future.delayed(const Duration(seconds: 3), () {
      _isSaved = false;
      update();
    });
  }

  tackProductAdditionsImage() async {
    _tackProductAdditionsImages = await ImagePic.showBottomSheetPic();
    if (_tackProductAdditionsImages != null) {
      _productAdditionsImages.add(_tackProductAdditionsImages!);
      update();
    } else {
      ToastManager.showError(S.of(Get.context!).someThingHappened);
    }
    _tackProductAdditionsImages = null;
  }

  addProductAdditions() {
    _productAdditions.add(ProductModel(
      id: _productAdditions.length + 1,
      productName: productNameTEXT.text,
      price: priceTEXT.text,
    ));
    priceTEXT.clear;
    productNameTEXT.clear();
    update();
  }

  updateProductAdditions({required int id}) {}

  removeProductAdditions({required int id}) {
    _productAdditions.removeWhere((element) => element.id == id);
    update();
  }

  onChangeProductAdditionsCheckbox(bool value) {
    _productAdditionsCheckbox = value;
    if (!_productAdditionsCheckbox) {
      _productAdditions.clear();
      update();
    }
    update();
  }

  onChangeElectricalSpecifications(bool value) {
    _electricalSpecifications = value;
    update();
  }

  onChangePlugType(bool? value) {
    _plugType = value!;
    update();
  }

  onChangeCheckboxRetrievable(bool value) {
    _checkboxRetrievable = value;
    update();
  }

  onChangeCheckboxReplaceable(bool value) {
    _checkboxReplaceable = value;
    update();
  }

  onChangeCheckboxDeliver(bool? value) {
    _checkboxDeliver = value!;
    update();
  }

  onChangeCheckboxReceive(bool? value) {
    _checkboxReceive = value!;
    update();
  }

  onChangeCheckboxShipping(bool? value) {
    _checkboxShipping = value!;
    update();
  }

  void attachingGuaranteeFiles() async {
    _guaranteeFiles = await AttachFiles.getFiles();
    update();
  }

  tackImage(ImageFor imageFor, {ProductModel? product}) async {
    _tackImg = await ImagePic.showBottomSheetPic();

    if (_tackImg != null) {
      switch (imageFor) {
        case ImageFor.product:
          productImages.add(_tackImg!);
          update();

          break;
        case ImageFor.color:
          _selectedProductColors[_selectedProductColors
                  .indexWhere((e) => e.color == product!.color)] =
              ProductModel(color: product!.color, image: _tackImg);
          update();
          break;
        case ImageFor.additions:
        default:
      }
    } else {
      ToastManager.showError(S.of(Get.context!).someThingHappened);
    }
    _tackImg = null;
  }

  void onChangeProductClass(int? value) {
    _selectedClassification = value!;
    update();
  }

  void onChangeMeasurementSize(String? value) {
    _selectedMeasurementSize = value!;
    update();
  }

  void onChangeMeasurementWeight(String? value) {
    _selectedMeasurementWeight = value!;
    update();
  }

  void onChangeMeasurementDimensions(String? value) {
    _selectedMeasurementDimensions = value!;
    update();
  }

  @override
  void onInit() async {
    // _getColors();
    _selectedMeasurementSize = _productMeasurementSize.first;
    _selectedMeasurementWeight = _productMeasurementWeight.first;
    _selectedMeasurementDimensions = _productMeasurementDimensions.first;
    super.onInit();
  }

  @override
  void dispose() {
    clearAllFields();
    super.dispose();
  }

  clearAllFields() {
    arabicProductNameTEXT.clear();
    englishProductNameTEXT.clear();
    detailsProductTEXT.clear();
    qrCodeTEXT.clear();
    priceTEXT.clear();
    productNameTEXT.clear();
    productPriceWithoutTEXT.clear();
    plugTypeTEXT.clear();
    electricalSpecificationsTEXT.clear();
    marketingPhraseTEXT.clear();
    productMeasurementDimensionsTEXT.clear();
    productMeasurementWeightTEXT.clear();
    productMeasurementSizeTEXT.clear();

    _selectedGuide = [];
    _selectedProductColors = [];
    _productImages = [];
    _guaranteeFiles = [];
    _tackProductAdditionsImages = null;
    _productAdditionsImages.clear();
    _productAdditions.clear();
    _productAdditionsCheckbox = false;
    _plugType = false;
    _electricalSpecifications = false;
    _checkboxReplaceable = false;
    _checkboxRetrievable = false;
    _checkboxShipping = false;
    _checkboxDeliver = false;
    _checkboxReceive = false;
    _selectedClassification = null;
    _selectedMeasurementSize = _productMeasurementSize.first;
    _selectedMeasurementWeight = _productMeasurementWeight.first;
    _selectedMeasurementDimensions = _productMeasurementDimensions.first;
    update();
  }
}
