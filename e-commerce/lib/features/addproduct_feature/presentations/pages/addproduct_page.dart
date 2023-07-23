import 'package:ecommerce_futter/common/utils/extensions.dart';
import 'package:ecommerce_futter/common/widgets/custom_checkbox.dart';
import 'package:ecommerce_futter/common/widgets/custom_dropdwon.dart';
import 'package:ecommerce_futter/common/widgets/custom_text_form_field.dart';
import 'package:ecommerce_futter/common/widgets/popup_info.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/controllers/addproduct_controller.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/pages/widgets/product_colors.dart';
import 'package:ecommerce_futter/features/addproduct_feature/presentations/pages/widgets/product_images.dart';
import 'package:ecommerce_futter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddProductPage extends GetView<AddProductController> {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              S.of(context).addNewProduct,
            ),
          ),
          body: SizedBox(
            width: 100.w,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// product name
                  Text(
                    S.of(context).productName,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomTextFormField(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    hintText: S.of(context).arabicProductName,
                    controller: controller.arabicProductNameTEXT,
                    border: true,
                  ),
                  3.h.sh,

                  CustomTextFormField(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    controller: controller.englishProductNameTEXT,
                    hintText: S.of(context).englishProductName,
                    border: true,
                  ),
                  3.h.sh,

                  /// product Classification
                  Text(
                    S.of(context).productClassification,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomDropdown<int>(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    items: controller.productClassification,
                    hint: S.of(context).accordingToTheListOfProductsForYourShop,
                    value: controller.selectedClassification,
                    onChanged: controller.onChangeProductClass,
                  ),
                  3.h.sh,

                  ///  Product subcategory
                  Text(
                    S.of(context).productSubcategory,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomDropdown<int>(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    items: controller.productClassification,
                    value: controller.selectedClassification,
                    onChanged: controller.onChangeProductClass,
                  ),
                  3.h.sh,

                  /// Product images
                  Row(
                    children: [
                      Text(
                        S.of(context).addProductImages,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      2.w.sw,
                      PopupInfo(
                        hint: S.of(context).withoutMinimumOrMaximum,
                      ),
                    ],
                  ),
                  1.h.sh,
                  const TackMultiImages(),

                  3.h.sh,

                  /// product Details
                  Text(
                    S.of(context).productDetails,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomTextFormField(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    controller: controller.detailsProductTEXT,
                    hintText: S
                        .of(context)
                        .writeAllProductSpecificationsInDetailSuchAsBrandAnd,
                    border: true,
                    maxLines: 10,
                  ),
                  3.h.sh,

                  /// multi colors
                  Row(
                    children: [
                      Text(
                        S.of(context).productColors,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      2.w.sw,
                      PopupInfo(
                        hint: S.of(context).chooseColorsOrNotApplicable,
                      ),
                    ],
                  ),
                  CustomCheckbox(
                    value: controller.doNotApplyColors,
                    onChanged: controller.onChangedDoNotApplyColors,
                    title: Text(
                      S.of(context).doNotApply,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  if (!controller.doNotApplyColors) ...[
                    3.h.sh,
                    const TackMultiColors(),
                    3.5.h.sh,
                  ],

                  /*     if (!controller.doNotApplyColors) ...[
                    3.h.sh,
                    ChooseMultiColors(
                        onTap: controller.onSelectedColor,
                        selectedColors: controller.selectedProductColors,
                        listColors: controller.productColors),
                    3.h.sh,

                    /// color image
                    Row(
                      children: [
                        Text(
                          S.of(context).imagesColors,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        2.w.sw,
                        PopupInfo(
                          hint: S.of(context).withoutMinimumOrMaximum,
                        ),
                      ],
                    ),
                    1.h.sh,
                    ...controller.selectedProductColors.map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(vertical: .7.h),
                        child: Row(
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.w,
                              color: e.color,
                            ),
                            5.w.sw,
                            e.image == null
                                ? ElevatedButton(
                                    onPressed: () => controller
                                        .tackImage(ImageFor.color, product: e),
                                    child: Text(
                                      S.of(context).takeAPhotoFromColor,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(fontSize: 8.sp),
                                    ),
                                  )
                                : const SizedBox(),
                            if (e.image != null) ...[
                              InkWell(
                                onTap: () => controller
                                    .tackImage(ImageFor.color, product: e),
                                child: Stack(
                                  children: [
                                    Image.file(
                                      e.image!,
                                      width: 16.w,
                                      height: 16.w,
                                      fit: BoxFit.cover,
                                    ),
                                    const Icon(Icons.camera_alt_outlined,
                                        color: Colors.white30),
                                  ],
                                ),
                              ),
                              IconButton(
                                  onPressed: () =>
                                      controller.onSelectedColor(e.color!),
                                  icon: Icon(
                                    Icons.delete,
                                    color: AppColors.red,
                                  ))
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
 */
                  3.h.sh,

                  /// guide
                  /*    Row(
                    children: [
                      Text(
                        S.of(context).guide,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      2.w.sw,
                      PopupInfo(
                        hint: S.of(context).chooseGuideOrNotApply,
                      ),
                    ],
                  ),
                  1.h.sh,
                  CustomCheckbox(
                    value: controller.doNotApplyGuide,
                    onChanged: controller.onChangedDoNotApplyGuide,
                    title: Text(
                      S.of(context).doNotApply,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  1.h.sh,
                  if (!controller.doNotApplyGuide) ...[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.dialog(
                              Dialog(
                                child: GuideWidget(
                                  selectedGuide: controller.selectedGuide,
                                  onTap: controller.onSelectGuide,
                                  guideList: [
                                    GuideModel(guide: "S", guideQuantity: "12"),
                                    GuideModel(guide: "M", guideQuantity: "3"),
                                    GuideModel(guide: "L", guideQuantity: "4"),
                                    GuideModel(guide: "XL", guideQuantity: "1"),
                                    GuideModel(guide: "XXL", guideQuantity: "9"),
                                    GuideModel(guide: "XXXL", guideQuantity: "5"),
                                    GuideModel(guide: "XXXXL", guideQuantity: "8")
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            S.of(context).chooseGuide,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).quantityAvailableForEachSize,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              1.h.sh,
                              Wrap(children: [
                                ...controller.selectedGuide
                                    .map((e) => Container(
                                          height: 8.w,
                                          width: 17.w,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 1.w, vertical: .5.w),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2.w),
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            color: AppColors.white,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(e.guide ?? ""),
                                              Text(e.guideQuantity ?? ""),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
          
                  3.h.sh,
          
                  ///Measurement Size
                      Text(
                    S.of(context).productSize,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdown<String>(
                          items: controller.productMeasurementSize,
                          hint: S.of(context).selectItem,
                          value: controller.selectedMeasurementSize,
                          onChanged: controller.onChangeMeasurementSize,
                        ),
                      ),
                      if (controller.selectedMeasurementSize !=
                          controller.productMeasurementSize.first) ...[
                        20.sw,
                        Expanded(
                          child: CustomTextFormField(
                            controller: controller.productMeasurementSizeTEXT,
                            hintText: S.of(context).productSize,
                            border: true,
                          ),
                        ),
                      ],
                    ],
                  ),
                  3.h.sh,
          
                  ///Measurement Weight
                  Text(
                    S.of(context).productWeight,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdown<String>(
                          items: controller.productMeasurementWeight,
                          hint: S.of(context).selectItem,
                          value: controller.selectedMeasurementWeight,
                          onChanged: controller.onChangeMeasurementWeight,
                        ),
                      ),
                      if (controller.selectedMeasurementWeight !=
                          controller.productMeasurementWeight.first) ...[
                        20.sw,
                        Expanded(
                          child: CustomTextFormField(
                            controller: controller.productMeasurementWeightTEXT,
                            hintText: S.of(context).productWeight,
                            border: true,
                          ),
                        ),
                      ],
                    ],
                  ),
                  3.h.sh,
          
                  ///Measurement Dimensions
                  Text(
                    S.of(context).productDimensions,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  Row(
                    children: [
                      Expanded(
                        child: CustomDropdown<String>(
                          items: controller.productMeasurementDimensions,
                          hint: S.of(context).selectItem,
                          value: controller.selectedMeasurementDimensions,
                          onChanged: controller.onChangeMeasurementDimensions,
                        ),
                      ),
                      if (controller.selectedMeasurementDimensions !=
                          controller.productMeasurementDimensions.first) ...[
                        20.sw,
                        Expanded(
                          child: CustomTextFormField(
                            controller:
                                controller.productMeasurementDimensionsTEXT,
                            hintText: S.of(context).productDimensions,
                            border: true,
                          ),
                        ),
                      ],
                    ],
                  ),
                  3.h.sh,
          
                  /// Marketing phrase for the product
                  Text(
                    S.of(context).marketingPhraseForTheProduct,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomTextFormField(
                    controller: controller.marketingPhraseTEXT,
                    hintText: "${S.of(context).marketingPhraseForTheProduct}....",
                    border: true,
                  ),
                  3.h.sh,
          
                  /// available to
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        /// available To Receive
                        child: CustomCheckbox(
                          value: controller.checkboxReceive,
                          onChanged: controller.onChangeCheckboxReceive,
                          title: Text(
                            S.of(context).availableToReceive,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Expanded(
                        /// available To Deliver
                        child: CustomCheckbox(
                          value: controller.checkboxDeliver,
                          onChanged: controller.onChangeCheckboxDeliver,
                          title: Text(
                            S.of(context).availableToDeliver,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Expanded(
                        /// available To Shipping
                        child: CustomCheckbox(
                          value: controller.checkboxShipping,
                          onChanged: controller.onChangeCheckboxShipping,
                          title: Text(
                            S.of(context).availableToShipping,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  3.h.sh,
          
                  /// available to
                  Row(
                    children: [
                      Expanded(
                        /// available To return
                        child: CustomCheckbox(
                          value: controller.checkboxRetrievable,
                          onChanged: controller.onChangeCheckboxRetrievable,
                          title: Text(
                            S.of(context).retrievable,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Expanded(
                        /// available To Shipping
                        child: CustomCheckbox(
                          value: controller.checkboxReplaceable,
                          onChanged: controller.onChangeCheckboxReplaceable,
                          title: Text(
                            S.of(context).replaceable,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  3.h.sh,
          
                  /// attachment guarantee Fils
                  Text(
                    S.of(context).attachingWarrantyFiles,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
          
                  AttachingMultiFiles(
                      onTap: () => controller.attachingGuaranteeFiles(),
                      listFiles: controller.guaranteeFiles ?? []),
                  3.h.sh,
          
                  /// electrical Specifications
                  CustomCheckbox(
                    value: controller.electricalSpecifications,
                    onChanged: controller.onChangeElectricalSpecifications,
                    title: Text(
                      S.of(context).electricalSpecifications,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  1.h.sh,
                  if (controller.electricalSpecifications) ...[
                    CustomTextFormField(
                      controller: controller.electricalSpecificationsTEXT,
                      hintText: S.of(context).electricalSpecifications,
                      border: true,
                      maxLines: 5,
                    ),
                  ],
                  3.h.sh,
          
                  /// Plug type
                  CustomCheckbox(
                    value: controller.plugType,
                    onChanged: controller.onChangePlugType,
                    title: Text(
                      S.of(context).plugType,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  1.h.sh,
                  if (controller.plugType) ...[
                    CustomTextFormField(
                      controller: controller.plugTypeTEXT,
                      hintText: S.of(context).plugType,
                      border: true,
                    ),
                  ],
                  3.h.sh,
          
                  /// product additions
                  CustomCheckbox(
                    value: controller.productAdditionsCheckbox,
                    onChanged: controller.onChangeProductAdditionsCheckbox,
                    title: Text(
                      S.of(context).productAdditions,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  1.h.sh,
                  if (controller.productAdditionsCheckbox) ...[
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final ProductModel additionsProd =
                            controller.productAdditions[index];
                        return Row(
                          children: [
                            Expanded(
                              child: CustomTextFormField(
                                height: 30,
                                border: true,
                                enabled: false,
                                controller: TextEditingController(
                                    text: additionsProd.productName),
                                labelText: S.of(context).productName,
                              ),
                            ),
                            2.w.sw,
                            Expanded(
                              child: CustomTextFormField(
                                height: 30,
                                border: true,
                                enabled: false,
                                controller: TextEditingController(
                                    text: additionsProd.price),
                                labelText: S.of(context).price,
                              ),
                            ),
                            IconButton(
                              onPressed: () => controller.removeProductAdditions(
                                  id: additionsProd.id!),
                              icon: const Icon(
                                Icons.remove_circle_outline,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: controller.productAdditions.length,
                    ),
                    2.h.sh,
          
                    /// add text fields
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            border: true,
                            controller: controller.productNameTEXT,
                            labelText: S.of(context).productName,
                          ),
                        ),
                        2.w.sw,
                        Expanded(
                          child: CustomTextFormField(
                            border: true,
                            controller: controller.priceTEXT,
                            labelText: S.of(context).price,
                            hintText: S.of(context).addZeroIfProductFree,
                            isNumberOnly: true,
                          ),
                        ),
                        IconButton(
                          onPressed: () => controller.addProductAdditions(),
                          icon: const Icon(
                            Icons.add_circle_outline,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    )
                  ],
                  3.h.sh,
          
                  /// Product additions images
                  Text(
                    S.of(context).productAdditionsImages,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  TackMultiImage(
                    listImage: controller.productAdditionsImages,
                    onTap: () => controller.tackProductAdditionsImage(),
                  ),
                  3.h.sh,
          
                  /// Product price without additives (excluding tax):
                  Text(
                    S.of(context).productPriceWithoutAdditivesWithoutTax,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  1.h.sh,
                  CustomTextFormField(
                    controller: controller.productPriceWithoutTEXT,
                    hintText:
                        S.of(context).productPriceWithoutAdditivesWithoutTax,
                    border: true,
                    isNumberOnly: true,
                  ),
                  3.h.sh,
          
                  /// Product code
                  Row(
                    children: [
                      Text(
                        S.of(context).productCode,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      5.w.sw,
                      Expanded(
                        child: CustomTextFormField(
                          hintText: S.of(context).productCode,
                          border: true,
                          isNumberOnly: true,
                          controller: controller.qrCodeTEXT,
                        ),
                      ),
                      5.w.sw,
                      IconButton(
                        onPressed: () => controller.scanQRCode(),
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.secondary,
                        ),
                      ),
                    ],
                  ),
          
                  /// other product
          
                  5.h.sh,
                  Center(
                    child: controller.isSaved
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: controller.isSaved
                                ? null
                                : () => controller.saveProduct(),
                            child: Text(
                              S.of(context).saveData,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                  ),
                  3.h.sh,
                  Center(
                    child: ElevatedButton(
                      onPressed: () => controller.clearAllFields(),
                      child: Text(
                        S.of(context).addAntherProduct,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ), */
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
