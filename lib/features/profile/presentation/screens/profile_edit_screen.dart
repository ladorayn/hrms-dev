import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/general.dart';
import 'package:hrms_mobile/core/enums/gender_enum.dart';
import 'package:hrms_mobile/core/widgets/i_app_bar.dart';
import 'package:hrms_mobile/core/widgets/i_footer_button.dart';
import 'package:hrms_mobile/core/widgets/i_image_picker.dart';
import 'package:hrms_mobile/core/widgets/i_radio_button_group.dart';
import 'package:hrms_mobile/core/widgets/text_field/base/i_text_field.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_date_picker.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_dropdown_bottom_sheet.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_phone.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_social.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_text_area.dart';
import 'package:hrms_mobile/features/profile/presentation/widgets/detail/section_title.dart';

class ProfileEditScreen extends ConsumerStatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  ConsumerState<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends ConsumerState<ProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();

  // ToDo: Initialize controllers with actual user data
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _placeOfBirthController = TextEditingController();
  final _dobController = TextEditingController();
  final _maritalStatusController = TextEditingController();
  final _bloodTypeController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _idNumberController = TextEditingController();
  final _npwpController = TextEditingController();
  final _bpjsController = TextEditingController();
  final _citizenAddressController = TextEditingController();
  final _residentialAddressController = TextEditingController();
  final _hobbyController = TextEditingController();

  List<Map<String, dynamic>> _socialMediaFieldsData = [];

  @override
  void initState() {
    super.initState();
    _addSocialMediaField();
  }

  void _addSocialMediaField() {
    final key = UniqueKey();
    final typeController = TextEditingController();
    final usernameController = TextEditingController();

    final newField = {
      'key': key,
      'typeController': typeController,
      'usernameController': usernameController,
    };

    setState(() {
      _socialMediaFieldsData.add(newField);
    });
  }

  void _removeSocialMediaField(Key key) {
    setState(() {
      final fieldData = _socialMediaFieldsData.firstWhere(
        (field) => field['key'] == key,
      );

      (fieldData['typeController'] as TextEditingController).dispose();
      (fieldData['usernameController'] as TextEditingController).dispose();

      _socialMediaFieldsData.removeWhere((field) => field['key'] == key);
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _placeOfBirthController.dispose();
    _dobController.dispose();
    _maritalStatusController.dispose();
    _bloodTypeController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _idNumberController.dispose();
    _npwpController.dispose();
    _bpjsController.dispose();
    _citizenAddressController.dispose();
    _residentialAddressController.dispose();
    _hobbyController.dispose();

    for (var fieldData in _socialMediaFieldsData) {
      (fieldData['usernameController'] as TextEditingController).dispose();
      (fieldData['typeController'] as TextEditingController).dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(title: "Edit Profile"),
      resizeToAvoidBottomInset: true, // Allow keyboard to push up
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                children: [
                  const SectionTitle("Personal Information"),
                  SizedBox(height: 16.h),

                  // --- Begin Form Fields ---
                  IProfileImagePicker(
                    label: 'Photo',
                    isOptional: true,
                    onImageSelected: (file) {
                      // ToDo: Handle file upload logic
                    },
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Name',
                    controller: _nameController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                    // ToDo: Add validator
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Email',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldPhone(
                    label: 'Phone Number',
                    phoneController: _phoneController,
                    isRequired: true,
                    countryCodes: kCountryCodes,
                    initialCountryCode: kCountryCodes[0],
                    onCountryCodeChanged: (newCode) {
                      print('Selected country: ${newCode.name}');
                    },
                  ),

                  SizedBox(height: 16.h),

                  IRadioButtonGroup<Gender>(
                    label: 'Gender',
                    isRequired: true,
                    options: const {
                      'Male': Gender.male,
                      'Female': Gender.female,
                    },
                    initialValue: Gender.male,
                    onChanged: (selectedGender) {},
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Place of Birth',
                    controller: _placeOfBirthController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldDatePicker(
                    label: 'Born Date',
                    controller: _dobController,
                    isRequired: true,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldDropdownBottomSheet(
                    label: 'Marital Status',
                    controller: _maritalStatusController,
                    isRequired: true,
                    options: const ['Married', 'Single', 'Divorced'],
                    onOptionSelected: (selected) {
                      _maritalStatusController.text = selected;
                    },
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldDropdownBottomSheet(
                    label: 'Blood Type',
                    controller: _bloodTypeController,
                    isRequired: true,
                    options: const ['A', 'B', 'AB', 'O'],
                    onOptionSelected: (selected) {
                      _bloodTypeController.text = selected;
                    },
                  ),
                  SizedBox(height: 16.h),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ITextFieldBase(
                          label: 'Height',
                          controller: _heightController,
                          isRequired: true,
                          keyboardType: TextInputType.number,
                          suffix: const Text('cm'),
                          borderColor: IColors.light.grayscale.g30,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: ITextFieldBase(
                          label: 'Weight',
                          controller: _weightController,
                          isRequired: true,
                          keyboardType: TextInputType.number,
                          suffix: const Text('kg'),
                          borderColor: IColors.light.grayscale.g30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'ID Number',
                    controller: _idNumberController,
                    isRequired: true,
                    keyboardType: TextInputType.number,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Taxpayer ID Number (NPWP)',
                    controller: _npwpController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Health Insurance Number (BPJS)',
                    controller: _bpjsController,
                    isRequired: true,
                    keyboardType: TextInputType.number,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldTextArea(
                    label: 'Citizen ID Address',
                    controller: _citizenAddressController,
                    isRequired: true,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldTextArea(
                    label: 'Residential Address',
                    controller: _residentialAddressController,
                    isRequired: true,
                  ),
                  SizedBox(height: 16.h),

                  ITextFieldBase(
                    label: 'Hobby',
                    controller: _hobbyController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                  ),
                  SizedBox(height: 16.h),

                  // --- Social Media Section ---
                  Text('Social Media',
                      style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 8.h),
                  ..._socialMediaFieldsData.map((fieldData) {
                    return Padding(
                      key: fieldData['key'],
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: ITextFieldSocial(
                        // Pass the controllers
                        usernameController: fieldData['usernameController'],
                        onTypeSelected: (type) {
                          fieldData['typeController'].text = type;
                          // ToDo: You can save this type
                        },
                        onRemove: () =>
                            _removeSocialMediaField(fieldData['key']),
                      ),
                    );
                  }),
                  TextButton.icon(
                    onPressed: _addSocialMediaField,
                    icon: const Icon(Icons.add),
                    label: const Text('Add more'),
                  ),
                ],
              ),
            ),
          ),
          IFooterButton(
            text: "Update Profile",
            onPressed: () {
              // ToDo: Implement update logic
              if (_formKey.currentState!.validate()) {
                // Form is valid
              }
            },
          )
        ],
      ),
    );
  }
}
