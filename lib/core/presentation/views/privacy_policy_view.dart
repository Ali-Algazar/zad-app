import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/generated/l10n.dart'; // لا تنسَ هذا الاستيراد

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  static const String routeName = '/privacy-policy';

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = AppColors.primary;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: primaryColor),
        title: Text(
          S.of(context).privacyPolicyTitle, // التعديل هنا
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Tajawal',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            _buildSectionTitle(S.of(context).welcomeToZadApp, primaryColor),
            _buildParagraph(S.of(context).privacyPolicyIntro),
            const SizedBox(height: 20),

            _buildSectionTitle(S.of(context).infoWeCollectTitle, primaryColor),
            _buildParagraph(S.of(context).infoWeCollectBody),
            const SizedBox(height: 20),

            _buildSectionTitle(S.of(context).howWeUseInfoTitle, primaryColor),
            _buildParagraph(S.of(context).howWeUseInfoBody),
            const SizedBox(height: 20),

            _buildSectionTitle(S.of(context).dataSharingTitle, primaryColor),
            _buildParagraph(S.of(context).dataSharingBody),
            const SizedBox(height: 20),

            _buildSectionTitle(S.of(context).dataProtectionTitle, primaryColor),
            _buildParagraph(S.of(context).dataProtectionBody),
            const SizedBox(height: 20),

            _buildSectionTitle(S.of(context).yourRightsTitle, primaryColor),
            _buildParagraph(S.of(context).yourRightsBody),
            const SizedBox(height: 40),

            // زر الموافقة أو الرجوع
            CustomButton(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                S.of(context).readAndAgree, // التعديل هنا
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: AppTextStyles.textStyle18.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: AppTextStyles.textStyle14r,
      textAlign: TextAlign.justify,
    );
  }
}
