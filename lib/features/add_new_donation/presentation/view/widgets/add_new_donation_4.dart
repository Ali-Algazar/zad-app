import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class AddNewDonation4 extends StatefulWidget {
  const AddNewDonation4({
    super.key,
    required this.imageFile,
    required this.title,
    required this.category,
    required this.description,
    required this.quantity,
    required this.unit,
    required this.expiryDate,
    required this.pickupDate,
    required this.pickupTimeFrom,
  });
  final File? imageFile;
  final String title;
  final String category;
  final String description;
  final int quantity;
  final String unit;
  final String expiryDate;
  final String pickupDate;
  final String pickupTimeFrom;

  @override
  State<AddNewDonation4> createState() => _AddNewDonation4State();
}

class _AddNewDonation4State extends State<AddNewDonation4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.h,
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.gray),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: AppColors.darkText.withValues(alpha: 0.2),
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: widget.imageFile != null
                            ? FileImage(widget.imageFile!)
                            : AssetImage('assets/image/default_image.png')
                                  as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  24.h,
                  Padding(
                    padding: Constants.khorizontalPadding.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: AppTextStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.darkText,
                          ),
                        ),
                        8.h,
                        Container(
                          padding: 4.all,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(
                            widget.category,
                            style: AppTextStyles.textStyle14r.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        16.h,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).quantityLabel,
                                    style: AppTextStyles.textStyle14Bold,
                                  ),
                                  4.h,
                                  Text(
                                    '${widget.quantity} ${widget.unit == 'kg' ? S.of(context).kg : S.of(context).meal}',
                                    style: AppTextStyles.textStyle14r,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).expiryDateLabel,
                                    style: AppTextStyles.textStyle14Bold,
                                  ),
                                  4.h,
                                  Text(
                                    widget.expiryDate,
                                    style: AppTextStyles.textStyle14r,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        16.h,
                        Container(
                          padding: 8.all,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.05),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).pickupTimeLabel,
                                style: AppTextStyles.textStyle14r.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${S.of(context).availableForPickup} ${S.of(context).from} ${widget.pickupTimeFrom} ${S.of(context).to} ${widget.pickupDate}',
                                style: AppTextStyles.textStyle14r.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        20.h,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            24.h,
            Container(
              width: double.infinity,
              padding: 12.all,
              decoration: BoxDecoration(
                color: AppColors.error,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                S.of(context).publishDisclaimer,
                style: AppTextStyles.textStyle14r,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
