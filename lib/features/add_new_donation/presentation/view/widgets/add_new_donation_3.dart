import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';
import 'package:zad/generated/l10n.dart';

class AddNewDonation3 extends StatefulWidget {
  const AddNewDonation3({
    super.key,
    required this.isTodaySelected,
    required this.fromTimeController,
    required this.toTimeController,
    required this.formKey,
  });
  final ValueChanged<bool> isTodaySelected;
  final TextEditingController fromTimeController;
  final TextEditingController toTimeController;
  final GlobalKey<FormState> formKey;

  @override
  State<AddNewDonation3> createState() => _AddNewDonation3State();
}

class _AddNewDonation3State extends State<AddNewDonation3> {
  bool isTodaySelected = true;
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
                S.of(context).pickupTime,
                style: AppTextStyles.textStyle24,
                textAlign: TextAlign.center,
              ),
              Text(
                S.of(context).selectAvailablePickupTime,
                style: AppTextStyles.textStyle14r.copyWith(
                  color: AppColors.grayText,
                ),
              ),
              24.h,
              Text(S.of(context).date, style: AppTextStyles.textStyle14Bold),
              12.h,
              Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (!isTodaySelected) {
                          setState(() {
                            isTodaySelected = true;
                          });
                          widget.isTodaySelected(isTodaySelected);
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: isTodaySelected
                              ? AppColors.primary
                              : AppColors.gray,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            S.of(context).today,
                            style: AppTextStyles.textStyle16.copyWith(
                              color: isTodaySelected
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (isTodaySelected) {
                          setState(() {
                            isTodaySelected = false;
                          });
                          widget.isTodaySelected(isTodaySelected);
                        }
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: isTodaySelected
                              ? AppColors.gray
                              : AppColors.primary,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            S.of(context).tomorrow,
                            style: AppTextStyles.textStyle16.copyWith(
                              color: isTodaySelected
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              24.h,
              Text(
                S.of(context).timeFromTo,
                style: AppTextStyles.textStyle14Bold,
              ),
              12.h,
              Row(
                spacing: 24,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).from,
                          style: AppTextStyles.textStyle14Bold,
                        ),
                        8.h,
                        CustomTextFormField(
                          validator: (value) =>
                              value!.isEmpty ? 'Required' : null,
                          controller: widget.fromTimeController,
                          onTap: () async {
                            var time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (time != null) {
                              widget.fromTimeController.text = time.format(
                                context,
                              );
                              setState(() {});
                            }
                          },
                          fillColor: AppColors.gray,
                          filled: true,
                          prefixIcon: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).to,
                          style: AppTextStyles.textStyle14Bold,
                        ),
                        8.h,
                        CustomTextFormField(
                          validator: (value) =>
                              value!.isEmpty ? 'Required' : null,
                          controller: widget.toTimeController,
                          onTap: () async {
                            var time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (time != null) {
                              widget.toTimeController.text = time.format(
                                context,
                              );
                              setState(() {});
                            }
                          },
                          fillColor: AppColors.gray,
                          filled: true,
                          prefixIcon: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              24.h,
              Container(
                width: double.infinity,
                padding: 12.all,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).appointmentSummary,
                      style: AppTextStyles.textStyle18.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    12.h,
                    Text(
                      '${S.of(context).availableForPickup} ${isTodaySelected ? S.of(context).today : S.of(context).tomorrow} ${S.of(context).from} ${widget.fromTimeController.text} ${S.of(context).to} ${widget.toTimeController.text}',
                      style: AppTextStyles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
