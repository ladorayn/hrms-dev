import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/general.dart';
import 'package:hrms_mobile/core/data/entities/country_code.dart';

// Import the profile model
import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
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
import 'package:intl/intl.dart'; // Import for date formatting

class ProfileEditScreen extends ConsumerStatefulWidget {
  final EmployeeProfile profile;

  const ProfileEditScreen({super.key, required this.profile});

  @override
  ConsumerState<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends ConsumerState<ProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();

  // --- Initialize controllers (will be set in initState) ---
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _placeOfBirthController;
  late TextEditingController _dobController;
  late TextEditingController _maritalStatusController;
  late TextEditingController _bloodTypeController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  late TextEditingController _idNumberController;
  late TextEditingController _npwpController;
  late TextEditingController _bpjsController;
  late TextEditingController _citizenAddressController;
  late TextEditingController _residentialAddressController;
  late TextEditingController _hobbyController;

  // --- State for complex fields ---
  late CountryCode _selectedCountryCode;
  Gender _selectedGender = Gender.male; // Default
  DateTime? _selectedDob;
  List<Map<String, dynamic>> _socialMediaFieldsData = [];

  @override
  void initState() {
    super.initState();
    final profile = widget.profile;

    // --- Populate all text controllers ---
    _nameController = TextEditingController(text: profile.user.name);
    _emailController = TextEditingController(text: profile.user.email);
    _placeOfBirthController =
        TextEditingController(text: profile.placeOfBirth ?? '');
    _maritalStatusController =
        TextEditingController(text: profile.maritalStatusLabel ?? '');
    _bloodTypeController = TextEditingController(text: profile.bloodType ?? '');
    _heightController = TextEditingController(text: profile.height ?? '');
    _weightController = TextEditingController(text: profile.weight ?? '');
    _idNumberController = TextEditingController(text: profile.idNumber ?? '');
    _npwpController = TextEditingController(text: profile.npwp ?? '');
    _bpjsController = TextEditingController(text: profile.bpjs ?? '');
    _citizenAddressController =
        TextEditingController(text: profile.citizenIdAddress ?? '');
    _residentialAddressController =
        TextEditingController(text: profile.residentialAddress ?? '');
    _hobbyController = TextEditingController(text: profile.hobby ?? '');

    // --- Handle Phone Number ---
    _selectedCountryCode = kCountryCodes[0]; // Default
    String localNumber = '';
    if (profile.phoneNumber != null && profile.phoneNumber!.length > 2) {
      final code = profile.phoneNumber!.substring(0, 2);
      localNumber = profile.phoneNumber!.substring(2);
      _selectedCountryCode = kCountryCodes.firstWhere(
        (c) => c.code == code,
        orElse: () => kCountryCodes[0],
      );
    }
    _phoneController = TextEditingController(text: localNumber);

    // --- Handle Gender ---
    if (profile.gender == 'female') {
      _selectedGender = Gender.female;
    } else {
      _selectedGender = Gender.male;
    }

    // --- Handle Date of Birth ---
    _dobController = TextEditingController();
    if (profile.dateOfBirth != null) {
      try {
        _selectedDob = DateTime.parse(profile.dateOfBirth!);
        _dobController.text = DateFormat('MMMM d, yyyy').format(_selectedDob!);
      } catch (e) {
        _selectedDob = null;
      }
    }

    // --- Handle Social Media ---
    _socialMediaFieldsData = []; // Init list
    if (profile.socialMediaAccounts != null &&
        profile.socialMediaAccounts!.isNotEmpty) {
      for (var account in profile.socialMediaAccounts!) {
        _addSocialMediaField(
            initialType: account.type, initialUrl: account.url);
      }
    } else {
      // Add one blank field if no accounts exist
      _addSocialMediaField();
    }
  }

  void _addSocialMediaField({String? initialType, String? initialUrl}) {
    final key = UniqueKey();
    // The typeController stores the selected type (e.g., 'facebook')
    final typeController = TextEditingController(text: initialType);
    // The usernameController stores the handle/url
    final usernameController = TextEditingController(text: initialUrl ?? '');

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
                    // --- Populate Image ---
                    initialImageUrl: widget.profile.photoProfileUrl,
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
                    // --- Populate Country Code ---
                    initialCountryCode: _selectedCountryCode,
                    onCountryCodeChanged: (newCode) {
                      _selectedCountryCode = newCode;
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
                    // --- Populate Gender ---
                    initialValue: _selectedGender,
                    onChanged: (selectedGender) {
                      if (selectedGender != null) {
                        setState(() {
                          _selectedGender = selectedGender;
                        });
                      }
                    },
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
                    initialDate: _selectedDob,
                    onDateChanged: (newDate) {
                      setState(() {
                        _selectedDob = newDate;
                        _dobController.text =
                            DateFormat('MMMM d, yyyy').format(newDate);
                      });
                    },
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

                  Text('Social Media',
                      style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 8.h),
                  ..._socialMediaFieldsData.map((fieldData) {
                    return Padding(
                      key: fieldData['key'],
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: ITextFieldSocial(
                        type: fieldData['typeController'].text,
                        usernameController: fieldData['usernameController'],
                        onTypeSelected: (type) {
                          fieldData['typeController'].text = type;
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
