import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';
import 'package:zad/features/add_new_donation/presentation/view/widgets/upload_image_section.dart'; // افترضت مسار الـ CustomImagePickerWidget هنا
import 'package:zad/generated/l10n.dart';
import 'category_item.dart'; // تأكد من مسار الاستيراد

class AddNewDonation1 extends StatefulWidget {
  const AddNewDonation1({
    super.key,
    required this.formKey,
    required this.onImageSelected,
    required this.category,
    required this.titleController,
    required this.descriptionController,
  });
  final GlobalKey<FormState> formKey;
  final void Function(File) onImageSelected;
  final void Function(String) category;
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  State<AddNewDonation1> createState() => _AddNewDonation1State();
}

class _AddNewDonation1State extends State<AddNewDonation1> {
  File? selectedImageToUpload;
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      S.of(context).bakery,
      S.of(context).preparedMeals,
      S.of(context).dairy,
      S.of(context).fruits,
      S.of(context).rawMaterials,
    ];
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: Constants.khorizontalPadding.horizontal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.h,
              Text(
                S.of(context).whatIsDonationType,
                style: AppTextStyles.textStyle24,
                textAlign: TextAlign.center,
              ),
              Text(
                S.of(context).addPhotoAndDetails,
                style: AppTextStyles.textStyle14r.copyWith(
                  color: AppColors.grayText,
                ),
              ),
              24.h,
              Text(
                S.of(context).foodPhoto,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              CustomImagePickerWidget(onImageSelected: widget.onImageSelected),
              24.h,
              Text(
                S.of(context).donationTitle,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              CustomTextFormField(
                controller: widget.titleController,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                fillColor: AppColors.gray,
                filled: true,
                hintText: S.of(context).donationTitleExample,
              ),
              32.h,
              Text(
                S.of(context).category,
                style: AppTextStyles.textStyle14Bold,
              ),
              8.h,
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(
                  5,
                  (index) => CategoryItem(
                    categoryName: categories[index],
                    onTap: () {
                      setState(() {
                        selectedCategory = index;
                      });
                      widget.category(categories[index]);
                    },
                    isSelected: selectedCategory == index,
                  ),
                ),
              ),
              24.h,
              Text(
                S.of(context).additionalDescriptionOptional,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              CustomTextFormField(
                controller: widget.descriptionController,
                validator: (value) => value!.isEmpty ? 'Required' : null,
                fillColor: AppColors.gray,
                maxLines: 4,
                filled: true,
                hintText: S.of(context).addAdditionalDetails,
              ),
              Constants.kbottomPadding.h,
            ],
          ),
        ),
      ),
    );
  }
}
