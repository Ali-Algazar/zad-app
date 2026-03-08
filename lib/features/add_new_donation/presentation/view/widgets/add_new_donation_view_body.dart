import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/add_new_donation/presentation/view/widgets/add_new_donation_header.dart';
import 'package:zad/generated/l10n.dart';
import 'add_new_donation_1.dart';
import 'add_new_donation_2.dart';
import 'add_new_donation_3.dart';
import 'add_new_donation_4.dart';

class AddNewDonationViewBody extends StatefulWidget {
  const AddNewDonationViewBody({super.key});

  @override
  State<AddNewDonationViewBody> createState() => _AddNewDonationViewBodyState();
}

class _AddNewDonationViewBodyState extends State<AddNewDonationViewBody> {
  final PageController _pageController = PageController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController titelController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController formTimeController = TextEditingController();
  final TextEditingController toTimeController = TextEditingController();
  int quantity = 10;
  String unit = 'kg';
  String category = 'مواد غذائية';

  File? selectedImageToUpload;
  final List<GlobalKey<FormState>> _formKeys = List.generate(
    4,
    (_) => GlobalKey<FormState>(),
  );
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddNewDonationHeader(
                  currentStep: currentIndex,
                  onBack: () {
                    if (_pageController.page != 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      return;
                    }
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      AddNewDonation1(
                        titleController: titelController,
                        descriptionController: descriptionController,
                        formKey: _formKeys[0],
                        category: (String value) {
                          setState(() {
                            category = value;
                          });
                        },
                        onImageSelected: (File imageFile) {
                          setState(() {
                            selectedImageToUpload = imageFile;
                          });
                        },
                      ),
                      AddNewDonation2(
                        formKey: _formKeys[1],
                        quantity: (value) {
                          setState(() {
                            quantity = value;
                          });
                        },
                        unit: (String value) {
                          setState(() {
                            unit = value;
                          });
                        },
                        expiryDateController: expiryDateController,
                      ),
                      AddNewDonation3(
                        formKey: _formKeys[2],
                        fromTimeController: formTimeController,
                        toTimeController: toTimeController,
                        isTodaySelected: (value) {},
                      ),
                      AddNewDonation4(
                        imageFile: selectedImageToUpload,
                        title: titelController.text,
                        category: category,
                        description: descriptionController.text,
                        quantity: quantity,
                        unit: unit,
                        expiryDate: expiryDateController.text,
                        pickupDate: toTimeController.text,
                        pickupTimeFrom: formTimeController.text,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: 16.all,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 1)),
          ),
          child: CustomButton(
            onTap: () {
              if (_pageController.page! == 3)
                return; // ممكن هنا تضيف Function للـ Publish

              if (_formKeys[_pageController.page!.toInt()].currentState!
                  .validate()) {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                return;
              }
            },
            child: Text(
              currentIndex == 3
                  ? S.of(context).publishDonationNow
                  : S.of(context).next,
              style: AppTextStyles.textStyle18.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
