import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/constants/general.dart';
import 'package:hrms_mobile/core/data/entities/country_code.dart';
import 'package:hrms_mobile/core/data/models/employees/employee_profile_request.dart';

import 'package:hrms_mobile/core/data/models/employees/employee_profile_response.dart';
import 'package:hrms_mobile/core/enums/gender_enum.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
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

import 'package:hrms_mobile/features/profile/presentation/providers/profile_provider.dart';
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

  late CountryCode _selectedCountryCode;
  Gender _selectedGender = Gender.male;
  DateTime? _selectedDob;
  List<Map<String, dynamic>> _socialMediaFieldsData = [];

  Map<String, String> _validationErrors = {};

  @override
  void initState() {
    super.initState();
    final profile = widget.profile;

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

    String localNumber = profile.phoneNumber ?? '';
    _selectedCountryCode = kCountryCodes[0];

    if (profile.phoneNumber != null && profile.phoneNumber!.isNotEmpty) {
      final fullNumber = profile.phoneNumber!;

      final sortedCodes = List<CountryCode>.from(kCountryCodes);
      sortedCodes.sort((a, b) => b.code.length.compareTo(a.code.length));

      for (final countryCode in sortedCodes) {
        final dialCode = countryCode.code.substring(1);

        if (fullNumber.startsWith(dialCode)) {
          _selectedCountryCode = countryCode;
          localNumber = fullNumber.substring(dialCode.length);
          break;
        }
      }
    }

    _phoneController = TextEditingController(text: localNumber);

    if (profile.gender == 'female') {
      _selectedGender = Gender.female;
    } else {
      _selectedGender = Gender.male;
    }

    _dobController = TextEditingController();
    if (profile.dateOfBirth != null) {
      try {
        _selectedDob = DateTime.parse(profile.dateOfBirth!);
        _dobController.text = DateFormat('MMMM d, yyyy').format(_selectedDob!);
      } catch (e) {
        _selectedDob = null;
      }
    }

    _socialMediaFieldsData = [];
    if (profile.socialMediaAccounts != null &&
        profile.socialMediaAccounts!.isNotEmpty) {
      for (var account in profile.socialMediaAccounts!) {
        _addSocialMediaField(
            initialType: account.type, initialUrl: account.url);
      }
    } else {
      _addSocialMediaField();
    }
  }

  void _addSocialMediaField({String? initialType, String? initialUrl}) {
    final key = UniqueKey();
    final typeController = TextEditingController(text: initialType);
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

  String _getMaritalStatusCode(String label) {
    if (label == 'Married') return '2';
    if (label == 'Divorced') return '3';
    if (label == 'Widowed') return '4';
    return '1'; // Default to 'Single'
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

  Future<void> _onUpdateProfile() async {
    setState(() {
      _validationErrors = {};
    });

    if (!_formKey.currentState!.validate()) {
      return;
    }

    final profile = widget.profile;
    final employment = profile.employment;
    final bank = profile.bankAccount;

    final request = EmployeeProfileRequest(
      name: _nameController.text,
      email: _emailController.text,
      phoneNumber: int.parse(_phoneController.text),
      gender: _selectedGender.name,
      dateOfBirth: _selectedDob != null
          ? DateFormat('y-MM-dd').format(_selectedDob!)
          : profile.dateOfBirth?.split('T').first ?? '',
      placeOfBirth: _placeOfBirthController.text,
      maritalStatus: _getMaritalStatusCode(_maritalStatusController.text),
      bloodType: _bloodTypeController.text,
      height: int.tryParse(_heightController.text) ?? 0,
      weight: int.tryParse(_weightController.text) ?? 0,
      idNumber: _idNumberController.text,
      npwp: _npwpController.text,
      bpjs: _bpjsController.text,
      citizenIdAddress: _citizenAddressController.text,
      residentialAddress: _residentialAddressController.text,
      hobby: _hobbyController.text,
      achievement: profile.achievement ?? '',
      personalDescription: profile.personalDescription ?? '',
      jobPositionId: employment?.jobPositionId ?? 0,
      jobLevelId: employment?.jobLevelId ?? 0,
      departmentId: employment?.departmentId ?? 0,
      teamMembers: profile.teamMembers
              ?.map((tm) => TeamMemberRequest(teamId: tm.id))
              .toList() ??
          [],
      startDate: employment?.startDate?.split('T').first ?? '',
      status: employment?.status?.toString() ?? '1',
      baseSalary: (double.tryParse(employment?.baseSalary ?? '0') ?? 0).toInt(),
      salaryNett: (double.tryParse(employment?.salaryNett ?? '0') ?? 0).toInt(),
      bankId: bank?.bankId ?? 0,
      accountNumber: bank?.accountNumber ?? '',
      accountName: bank?.accountName ?? '',
      countryCode: _selectedCountryCode.dialCode,
    );

    try {
      await ref
          .read(employeeProfileEditProvider.notifier)
          .submitUpdate(id: profile.id, request: request);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully!')),
        );
        context.pop();
      }
    } catch (e) {
      // The provider re-throws the error, so we catch it here
      // No need to show a snackbar, the listener below will handle it.
    }
  }

  @override
  Widget build(BuildContext context) {
    // --- NEW: Watch and Listen to the edit provider ---
    final editState = ref.watch(employeeProfileEditProvider);
    final isUpdating = editState.isLoading;

    ref.listen(employeeProfileEditProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        final error = state.error;
        if (error is ValidationException) {
          // Handle validation errors from the API
          setState(() {
            _validationErrors =
                error.errors.map((key, value) => MapEntry(key, value.first));
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:
                    Text('Update Failed: ${error.toString().split(':').last}')),
          );
        }
      }
    });

    return Scaffold(
      appBar: IAppBar(title: "Edit Profile"),
      resizeToAvoidBottomInset: true,
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
                  IProfileImagePicker(
                    label: 'Photo',
                    isOptional: true,
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
                    errorText: _validationErrors['name'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldBase(
                    label: 'Email',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                    errorText: _validationErrors['email'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldPhone(
                    label: 'Phone Number',
                    phoneController: _phoneController,
                    isRequired: true,
                    countryCodes: kCountryCodes,
                    initialCountryCode: _selectedCountryCode,
                    onCountryCodeChanged: (newCode) {
                      _selectedCountryCode = newCode;
                    },
                    errorText: _validationErrors['phone_number'],
                  ),
                  SizedBox(height: 16.h),
                  IRadioButtonGroup<Gender>(
                    label: 'Gender',
                    isRequired: true,
                    options: const {
                      'Male': Gender.male,
                      'Female': Gender.female,
                    },
                    initialValue: _selectedGender,
                    onChanged: (selectedGender) {
                      setState(() {
                        _selectedGender = selectedGender;
                      });
                    },
                    // errorText: _validationErrors['gender'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldBase(
                    label: 'Place of Birth',
                    controller: _placeOfBirthController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                    errorText: _validationErrors['place_of_birth'],
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
                    errorText: _validationErrors['date_of_birth'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldDropdownBottomSheet(
                    label: 'Marital Status',
                    controller: _maritalStatusController,
                    isRequired: true,
                    options: const ['Single', 'Married', 'Divorced', 'Widowed'],
                    onOptionSelected: (selected) {
                      _maritalStatusController.text = selected;
                    },
                    errorText: _validationErrors['marital_status'],
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
                    errorText: _validationErrors['blood_type'],
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
                          errorText: _validationErrors['height'],
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
                          errorText: _validationErrors['weight'],
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
                    errorText: _validationErrors['id_number'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldBase(
                    label: 'Taxpayer ID Number (NPWP)',
                    controller: _npwpController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                    errorText: _validationErrors['npwp'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldBase(
                    label: 'Health Insurance Number (BPJS)',
                    controller: _bpjsController,
                    isRequired: true,
                    keyboardType: TextInputType.number,
                    borderColor: IColors.light.grayscale.g30,
                    errorText: _validationErrors['bpjs'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldTextArea(
                    label: 'Citizen ID Address',
                    controller: _citizenAddressController,
                    isRequired: true,
                    errorText: _validationErrors['citizen_id_address'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldTextArea(
                    label: 'Residential Address',
                    controller: _residentialAddressController,
                    isRequired: true,
                    errorText: _validationErrors['residential_address'],
                  ),
                  SizedBox(height: 16.h),
                  ITextFieldBase(
                    label: 'Hobby',
                    controller: _hobbyController,
                    isRequired: true,
                    borderColor: IColors.light.grayscale.g30,
                    errorText: _validationErrors['hobby'],
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
            text: isUpdating ? "Updating..." : "Update Profile",
            onPressed: isUpdating ? null : _onUpdateProfile,
          )
        ],
      ),
    );
  }
}
