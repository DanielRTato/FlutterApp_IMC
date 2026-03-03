import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: BoxDecoration(
          color: selectedGender == "HOMBRE" ? AppColors.backgroundComponentSelected : AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/male.png', width: 100, height: 100),
            Text("HOMBRE", style: TextStyles.bodyTextStyle),
            ],
        ),
      ),
      Container(
                decoration: BoxDecoration(
          color: selectedGender == "MUJER" ? AppColors.backgroundComponentSelected : AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/female.png', width: 100, height: 100),
            Text("Mujer".toUpperCase(), style: TextStyles.bodyTextStyle),
        
          ],  
          ),
      ),
      ]
    );
    
  }
}