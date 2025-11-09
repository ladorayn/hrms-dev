import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IRadioButtonGroup<T> extends StatefulWidget {
  const IRadioButtonGroup({
    super.key,
    required this.label,
    required this.options,
    required this.onChanged,
    this.initialValue,
    this.isRequired = false,
    this.direction = Axis.horizontal,
  });

  final String label;
  final Map<String, T> options;

  final Function(T) onChanged;
  final T? initialValue;
  final bool isRequired;
  final Axis direction;

  @override
  State<IRadioButtonGroup<T>> createState() => _IRadioButtonGroupState<T>();
}

class _IRadioButtonGroupState<T> extends State<IRadioButtonGroup<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  // Update state if the initialValue in the parent widget changes
  @override
  void didUpdateWidget(covariant IRadioButtonGroup<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      setState(() {
        _selectedValue = widget.initialValue;
      });
    }
  }

  void _onSelected(T value) {
    setState(() {
      _selectedValue = value;
      widget.onChanged(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            style: textTheme.bodySmall,
            children: [
              TextSpan(text: widget.label),
              if (widget.isRequired)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        Flex(
          direction: widget.direction,
          children: widget.options.entries.map((entry) {
            final String title = entry.key;
            final T value = entry.value;

            return Padding(
              padding: EdgeInsets.only(
                right: widget.direction == Axis.horizontal ? 16.w : 0,
              ),
              child: _buildRadioOption(context, title, value),
            );
          }).toList(),
        ),
      ],
    );
  }

  /// Builds a single radio button option with a label.
  Widget _buildRadioOption(BuildContext context, String title, T value) {
    return InkWell(
      onTap: () => _onSelected(value),
      borderRadius: BorderRadius.circular(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<T>(
            value: value,
            groupValue: _selectedValue,
            onChanged: (T? newValue) {
              if (newValue != null) {
                _onSelected(newValue);
              }
            },
          ),
          Text(title, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
