import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';
import 'package:zad/generated/l10n.dart';

class AddNewDonation2 extends StatefulWidget {
  const AddNewDonation2({
    super.key,
    required this.quantity,
    required this.unit,
    required this.expiryDateController,
    required this.formKey,
    required this.expiryTime,
  });
  final ValueChanged<int> quantity;
  final ValueChanged<String> unit;
  final TextEditingController expiryDateController;
  final GlobalKey<FormState> formKey;
  final ValueChanged<DateTime> expiryTime;

  @override
  State<AddNewDonation2> createState() => _AddNewDonation2State();
}

class _AddNewDonation2State extends State<AddNewDonation2> {
  int quantity = 10;
  String unit = 'kg';
  @override
  Widget build(BuildContext context) {
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
                S.of(context).quantityAndDetails,
                style: AppTextStyles.textStyle24,
                textAlign: TextAlign.center,
              ),
              Text(
                S.of(context).specifyQuantityAndExpiry,
                style: AppTextStyles.textStyle14r.copyWith(
                  color: AppColors.grayText,
                ),
              ),
              24.h,
              Text(
                S.of(context).quantityKgOrMeal,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              Row(
                spacing: 12,
                children: [
                  InkWell(
                    onTap: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                      widget.quantity(quantity);
                    },
                    child: Container(
                      padding: 12.all,
                      decoration: BoxDecoration(
                        color: AppColors.gray,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(Icons.remove, color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.gray,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Text(
                        '$quantity',
                        style: AppTextStyles.textStyle18,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                      widget.quantity(quantity);
                    },
                    child: Container(
                      padding: 12.all,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                  DropdownButton(
                    value: unit,
                    items: [
                      DropdownMenuItem(value: 'kg', child: Text('كجم')),
                      DropdownMenuItem(value: 'meal', child: Text('وجبة')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        unit = value!;
                      });
                      widget.unit(unit);
                    },
                  ),
                ],
              ),
              24.h,
              Text(
                S.of(context).expiryDate,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              CustomTextFormField(
                controller: widget.expiryDateController,
                fillColor: AppColors.gray,
                filled: true,
                validator: (value) => value!.isEmpty
                    ? 'الرجاء اختيار تاريخ انتهاء الصلاحية'
                    : null,
                keyboardType: TextInputType.datetime,
                onTap: () async {
                  final DateTime? selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  );

                  if (selectedDate != null) {
                    widget.expiryTime(selectedDate);
                    widget.expiryDateController.text = selectedDate
                        .toString()
                        .split(' ')[0];
                  }
                },
                prefixIcon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black54,
                  size: 18,
                ),
              ),
              24.h,
              Container(
                width: double.infinity,
                padding: 12.all,
                decoration: BoxDecoration(
                  color: AppColors.info,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  S.of(context).foodSafetyTip,
                  style: AppTextStyles.textStyle14r.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
              Constants.kbottomPadding.h,
            ],
          ),
        ),
      ),
    );
  }
}
