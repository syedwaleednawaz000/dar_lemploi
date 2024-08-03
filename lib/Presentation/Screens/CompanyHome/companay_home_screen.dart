import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../config/app_router_constants.dart';
import '../../Widget/custom_bg.dart';
import '../../Widget/custom_text-field.dart';
import '../../Widget/my_button.dart';

class CompanyHomeScreen extends StatefulWidget {
  const CompanyHomeScreen({super.key});

  @override
  _CompanyHomeScreenState createState() => _CompanyHomeScreenState();
}

class _CompanyHomeScreenState extends State<CompanyHomeScreen> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;
  final TextEditingController _dateController = TextEditingController();
  String _selectedDate = '20/04/2024'; // Default date format

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        setState(() {
          _appBarColor = Theme.of(context).scaffoldBackgroundColor.withOpacity(0.4);
        });
      } else {
        setState(() {
          _appBarColor = Colors.transparent;
        });
      }
    });

    _dateController.text = _selectedDate;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      final String formattedDate = '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
      setState(() {
        _selectedDate = formattedDate;
        _dateController.text = _selectedDate;
      });
    }
  }


  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Allows dismissing the dialog by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero, // Remove default padding
          content: Container(
            height: 250, // Set the fixed height
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.indigo,width: 2)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  String.fromCharCode(Icons.check_rounded.codePoint),
                  style: TextStyle(
                    inherit: false,
                    color: Colors.green,
                    fontSize: 100,
                    fontWeight: FontWeight.w700,
                    fontFamily: Icons.check_rounded.fontFamily,
                    package: Icons.check_rounded.fontPackage,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Your offer\nhas been publish',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.push(AppRouteConstants.selectionScreen);
        return true;
      },
      child: CustomBackGround(
        body: SafeArea(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                leading: const SizedBox(
                  child: Icon(Icons.menu_rounded, color: Colors.white),
                ),
                backgroundColor: _appBarColor,
                title: Image.asset('assets/Images/name_logo.png', height: 70, width: 170),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: const Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // Use SliverToBoxAdapter to add non-sliver widgets
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Publish your offer\nfor free!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).hintColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 32
                        )),
                    const CustomTextField(
                      textAlign: TextAlign.start,
                      hintText: 'Animation M/W',
                      titleText: 'Job Title:',
                    ),
                    const CustomTextField(
                      textAlign: TextAlign.start,
                      titleText: 'Number of people:',
                      hintText: '10',
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            textAlign: TextAlign.start,
                            titleText: 'Salary:',
                            hintText: '10',
                          ),
                        ),
                        Expanded(
                          child: CustomTextField(
                            textAlign: TextAlign.start,
                            titleText: '   ',
                            hintText: 'Day',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            readOnly: true,
                            controller: _dateController,
                            onTap: _selectDate,
                            textAlign: TextAlign.start,
                            titleText: 'Start:',
                            hintText: _selectedDate,
                          ),
                        ),
                         const Expanded(
                          child: CustomTextField(
                            textAlign: TextAlign.start,
                            titleText: 'Duration',
                            hintText: '> 2 Months',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Job Description(Optional):', style: TextStyle(color: Theme
                            .of(context)
                            .hintColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        maxLines: 6,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding:  const EdgeInsets.only(left:  20,top:  30,right: 20,bottom: 10),
                          hintText: '200 Words Maximum',
                          hintStyle: const TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33  ),
                            borderSide: BorderSide(color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: MyButton(
                        title: 'Publish',
                        onTap: () {
                          _showConfirmationDialog(context);
                        },
                        width: 120,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
