import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayslipNotesSection extends StatelessWidget {
  const PayslipNotesSection({
    super.key,
    required this.textTheme,
    required this.confidentialColor,
    required this.labelColor,
  });

  final TextTheme textTheme;
  final Color? confidentialColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notes",
          style: textTheme.bodySmall?.copyWith(
            color: confidentialColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          "THIS IS COMPUTER GENERATED PRINTOUT AND NO SIGNATURE IS REQUIRED",
          style: textTheme.bodySmall?.copyWith(color: labelColor),
        ),
        SizedBox(height: 16.h),
        Text(
          "PLEASE NOTE THAT THE CONTENTS OF THIS STATEMENT SHOULD BE TREATED WITH ABSOLUTE CONFIDENTIALITY EXCEPT TO THE EXTENT YOU ARE REQUIRED TO MAKE DISCLOSURE FOR ANY TAX, LEGAL, OR REGULATORY PURPOSES. ANY BREACH OF THIS CONFIDENTIALITY OBLIGATION WILL BE DEALT WITH SERIOUSLY, WHICH MAY INVOLVE DISCLINARY ACTION BEING TAKEN.",
          style: textTheme.bodySmall?.copyWith(color: labelColor),
        ),
        SizedBox(height: 16.h),
        Text(
          "HARAP DIPERHATIKAN, ISI PERNYATAAN INI ADALAH RAHASIA KECUALI ANDA DIMINTA UNTUK MENGUNGKAPKANNYA UNTUK KEPERLUAN PAJAK, HUKUM, ATAU KEPENTINGAN PEMERINTAH. SETIAP PELANGGARAN ATAS KEWAJIBAN MENJAGA KERAHASIAAN INI AKAN DIKENAKAN SANKSI, YANG MUNGKIN BERUPA TINDAKAN KEDISIPLINAN.",
          style: textTheme.bodySmall?.copyWith(color: labelColor),
        ),
      ],
    );
  }
}
