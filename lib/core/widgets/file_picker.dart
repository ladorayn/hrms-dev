// lib/core/widgets/i_file_picker.dart

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hrms_mobile/application/assets/i_assets.dart'; // Assuming your assets are here
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:path/path.dart' as p;

class IFilePicker extends StatefulWidget {
  final String title;
  final String? errorText;
  final Function(PlatformFile?) onFileSelected;

  const IFilePicker({
    super.key,
    this.title = "Attachments",
    this.errorText,
    required this.onFileSelected,
  });

  @override
  State<IFilePicker> createState() => _IFilePickerState();
}

class _IFilePickerState extends State<IFilePicker> {
  PlatformFile? _selectedFile;

  Future<void> _pickFile() async {
    // Pick a file
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'png', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        _selectedFile = result.files.first;
      });
      widget.onFileSelected(_selectedFile);
    }
  }

  void _clearFile() {
    setState(() {
      _selectedFile = null;
    });
    widget.onFileSelected(null);
  }

  String _formatBytes(int bytes) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB"];
    var i =
        (bytes.floor() == 0) ? 0 : (bytes.floor().toString().length - 1) ~/ 3;
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} ${suffixes[i > 1 ? i : 2]}';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final defaultErrorStyle =
        textTheme.labelSmall?.copyWith(color: colorScheme.error);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: textTheme.bodySmall),
        const SizedBox(height: 8),
        if (_selectedFile != null)
          _buildFileCard(context)
        else
          _buildUploadButton(),
        Visibility(
          visible: widget.errorText != null,
          child: SizedBox(
            height: 18.h,
            child: Text(
              widget.errorText.toString(),
              style: defaultErrorStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadButton() {
    return OutlinedButton.icon(
      onPressed: _pickFile,
      icon: SvgPicture.asset(
        IAssets.attachment, // Replace with your actual upload icon asset
        width: 20,
        colorFilter:
            ColorFilter.mode(IColors.light.primary.main, BlendMode.srcIn),
      ),
      label: const Text('Upload File'),
      style: OutlinedButton.styleFrom(
        foregroundColor: IColors.light.primary.main,
        side: BorderSide(color: IColors.light.primary.main),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Widget _buildFileCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          // You can add a file type icon here if you want
          // SvgPicture.asset(IAssets.filePdf, width: 24),
          // const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.basename(_selectedFile!.name),
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  _formatBytes(_selectedFile!.size),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, color: IColors.light.error.main),
            onPressed: _clearFile,
          ),
        ],
      ),
    );
  }
}
