import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:image_picker/image_picker.dart';

import '../../application/assets/i_assets.dart';

class IProfileImagePicker extends StatefulWidget {
  const IProfileImagePicker({
    super.key,
    required this.label,
    this.isOptional = false,
    this.initialImageUrl,
    required this.onImageSelected,
  });

  final String label;
  final bool isOptional;
  final String? initialImageUrl;
  final Function(File?) onImageSelected;

  @override
  State<IProfileImagePicker> createState() => _IProfileImagePickerState();
}

class _IProfileImagePickerState extends State<IProfileImagePicker> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        widget.onImageSelected(_imageFile);
      });
    }
  }

  Widget _buildAvatar() {
    if (_imageFile != null) {
      // Show selected file image
      return CircleAvatar(
        radius: 36.r,
        backgroundImage: FileImage(_imageFile!),
      );
    }
    if (widget.initialImageUrl != null) {
      // Show network image
      return CircleAvatar(
        radius: 36.r,
        backgroundImage: NetworkImage(widget.initialImageUrl!),
      );
    }
    // Show placeholder
    return CircleAvatar(
      radius: 36.r,
      backgroundColor: Colors.grey.shade200,
      child: Icon(Icons.person, size: 40.r, color: Colors.grey.shade400),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            style: textTheme.bodySmall,
            children: [
              TextSpan(text: widget.label),
              if (widget.isOptional)
                TextSpan(
                    text: ' (optional)',
                    style: TextStyle(color: Colors.grey.shade500)),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _buildAvatar(),
            SizedBox(width: 16.w),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                foregroundColor: IColors.light.primary.main,
                side: BorderSide(
                  color: IColors.light.primary.main,
                  width: 1,
                ),
              ),
              onPressed: _pickImage,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(IAssets.imagePlaceholder),
                  SizedBox(width: 4.w),
                  Text(l10n.coreSelectImage),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
