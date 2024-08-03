import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_structure/Presentation/Widget/my_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_code_structure/config/app_router_constants.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../Widget/custom_bg.dart';
import '../../../UserHomeScreen/user_home_screen.dart';

class RegistrationTwoScreen extends StatefulWidget {
  const RegistrationTwoScreen({super.key});

  @override
  _RegistrationTwoScreenState createState() => _RegistrationTwoScreenState();
}

class _RegistrationTwoScreenState extends State<RegistrationTwoScreen> {
  String? _selectedEducation;
  String? _pickedFile;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      setState(() {
        _pickedFile = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false; // Prevent the default behavior
      },
      child: CustomBackGround(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Image.asset('assets/Images/name_logo.png', width: 400, height: 120),
              const Text(
                'Address:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 5),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: -9),
                  hintText: 'N°186 B6 UV 5 Ali Mendjli El khroub',
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'City:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 5),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: -9),
                  hintText: 'Constantine',
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Postal Code:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 5),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: -9),
                  hintText: '25000',
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Education:',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _selectedEducation,
                style: const TextStyle(color: Colors.white),
                dropdownColor: Theme.of(context).primaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
                icon: Icon(Icons.arrow_drop_down_rounded, color: Theme.of(context).primaryColor),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  hintText: 'Select your education',
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                  iconColor: Theme.of(context).primaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
                items: <String>[
                  'BSc CS',
                  'BS Software',
                  'BSc IT',
                  'BSc Mathematics',
                  'BSc Physics',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedEducation = newValue;
                  });
                },
              ),
              const SizedBox(height: 12.0),
              Center(
                child: const Text(
                  'CV',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 34),
                ),
              ),
              Center(
                child: MyButton(
                  width: 140,
                  btnColor: Theme.of(context).cardColor,
                  onTap: _pickFile,
                  title: 'Choose a file',
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: _pickFile,
                  child: const Icon(Icons.file_upload_outlined, color: Colors.white, size: 44),
                ),
              ),
              if (_pickedFile != null)
                Center(
                  child: Text(
                    'File chosen: $_pickedFile',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              const Spacer(),
              Center(
                child: MyButton(
                  width: 140,
                  btnColor: Theme.of(context).primaryColor,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserHomeScreen()));
                    // context.go(AppRouteConstants.dashBoardScreen);
                  },
                  title: 'Create your\naccount',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
