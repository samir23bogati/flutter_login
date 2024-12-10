import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum TextFieldType { Normal, Password }

class CustomTextField extends StatefulWidget {
  final String label;
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final int maxLength;
  final TextFieldType type;

  const CustomTextField({
    super.key,
    required this.label,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.maxLength,
    this.type = TextFieldType.Normal,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;
  @override
  void initState() {
    isObscure = widget.type == TextFieldType.Password;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(8),
          TextField(
            keyboardType: TextInputType.text,
            maxLength: widget.maxLength,
            cursorColor: Colors.indigo,
            obscureText: isObscure,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: const Color.fromARGB(255, 243, 239, 239),
              filled: true,
              prefixIcon: Icon(widget.prefixIcon),
              suffixIcon: widget.type == TextFieldType.Password
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure? Icons.visibility : Icons.visibility_off))
                  : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.yellow, width: 3),
              ),
              labelText: widget.labelText,
              floatingLabelAlignment: FloatingLabelAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
