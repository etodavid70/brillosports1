import 'package:brillosports/colors/colors.dart';
import 'package:brillosports/widgets/apptexts/apptext.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:dropdown_search/dropdown_search.dart';


class DropDown extends StatefulWidget {
  List<String> dropdownlist;
  String? dropDownText;
  Function(String)? callback;
  double? width;
  // Function? callbacksecond;
  // String? title;

  DropDown({
    Key? key,
    required this.dropdownlist,
    this.dropDownText,
    required this.callback,
    this.width,
    // this.title
  }) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: AppColors.whiteColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: widget.dropdownlist.map((option) {
              return ListTile(
                title: AppText(
                  bold: true,
                  textColor: AppColors.greyColor,
                  text: option,
                  fontSize: 10,
                ),
                onTap: () {
                  widget.callback?.call(option);
                  //  widget.callbacksecond?.call(option);
                  // setState(() {
                  //   _selectedValue = option;
                  // });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
    // return _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    // final screenUtils = ScreenUtils(context);

    return InkWell(
      child:

          //  DefaultTextField(
          //   controller: TextEditingController(),
          //   enabled: false,
          //   labelText: widget.dropDownText!,
          // ),
          Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.all(5),
        width: widget.width,
        height: 50,
        child: Row(
          children: [
            AppText(
                textColor: AppColors.greyColor,
                text: widget.dropDownText!,
                fontSize: 10,
                bold: false),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
      onTap: () {
        _showBottomSheet(context);
      },
    );
  }
}

class DropDownWithTwoCallback extends StatefulWidget {
  List<String> dropdownlist;
  String? dropDownText;
  Function(String, int)? callback;
  double? width;
  // Function? callbacksecond;
  // String? title;

  DropDownWithTwoCallback({
    Key? key,
    required this.dropdownlist,
    this.dropDownText,
    required this.callback,
    // required this.callbacksecond,
    this.width,
    // this.title
  }) : super(key: key);

  @override
  State<DropDownWithTwoCallback> createState() =>
      _DropDownWithTwoCallbackState();
}

class _DropDownWithTwoCallbackState extends State<DropDownWithTwoCallback> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: AppColors.whiteColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.dropdownlist.asMap().entries.map((entry) {
                int index = entry.key;
                String option = entry.value;
                return ListTile(
                  title: AppText(
                    bold: true,
                    textColor: AppColors.greyColor,
                    text: option,
                    fontSize: 10,
                  ),
                  onTap: () {
                      Navigator.pop(context);
                    widget.callback?.call(option, index);
            
                  
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
    // return _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    // final screenUtils = ScreenUtils(context);

    return InkWell(
      child:

          //  DefaultTextField(
          //   controller: TextEditingController(),
          //   enabled: false,
          //   labelText: widget.dropDownText!,
          // ),
          Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.all(5),
        width: widget.width,
        height: 50,
        child: Row(
          children: [
            AppText(
                textColor: AppColors.greyColor,
                text: widget.dropDownText!,
                fontSize: 10,
                bold: false),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
      onTap: () {
        _showBottomSheet(context);
      },
    );
  }
}

class DropDownWithLoader extends StatefulWidget {
  List<String> dropdownlist;
  String? dropDownText;
  Function? callback;
  double? width;
  bool isloading;

  DropDownWithLoader({
    Key? key,
    required this.dropdownlist,
    this.dropDownText,
    required this.callback,
    this.width,
    required this.isloading,
  }) : super(key: key);

  @override
  State<DropDownWithLoader> createState() => _DropDownWithLoaderState();
}

class _DropDownWithLoaderState extends State<DropDownWithLoader> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.dropdownlist.map((option) {
                return ListTile(
                  title: AppText(
                    bold: true,
                    textColor: AppColors.greyColor,
                    text: option,
                    fontSize: 10,
                  ),
                  onTap: () {
                    widget.callback?.call(option);
                    // setState(() {
                    //   _selectedValue = option;
                    // });
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
    // return _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    // final screenUtils = ScreenUtils(context);

    return InkWell(
      child: Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.all(5),
        width: widget.width,
        height: 50,
        child: Row(
          children: [
            AppText(
                textColor: AppColors.greyColor,
                text: widget.dropDownText!,
                fontSize: 10,
                bold: false),
            const Spacer(),
            widget.isloading
                ? const SpinKitFadingCircle(
                    color: AppColors.blueColor,
                    size: 20.0,
                  )
                : const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: AppColors.greyColor,
                  )
          ],
        ),
      ),
      onTap: () {
        _showBottomSheet(context);
      },
    );
  }
}

class DropDownWithSearch extends StatefulWidget {
  List<String> dropdownlist;
  String? dropDownText;
  Function? callback;
  double? width;
  bool isloading;
  // bool useloader;

  DropDownWithSearch({
    Key? key,
    required this.dropdownlist,
    this.dropDownText,
    required this.callback,
    // required this.useloader,
    this.width,
    required this.isloading,
  }) : super(key: key);

  @override
  State<DropDownWithSearch> createState() => _DropDownWithSearchState();
}

class _DropDownWithSearchState extends State<DropDownWithSearch> {
  TextEditingController _searchController = TextEditingController();
  List<String> _filteredOptions = [];

  @override
  void initState() {
    super.initState();
    _filteredOptions = widget.dropdownlist;
    _searchController.addListener(_filterOptions);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterOptions() {
    setState(() {
      _filteredOptions = widget.dropdownlist
          .where((option) => option
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: const TextStyle(
                          fontSize: 11,
                          color: AppColors.greyColor,
                          fontFamily: "plusJakartaSans",
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 0.1, color: AppColors.greyColor),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0.1, color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                ..._filteredOptions.map((option) {
                  return ListTile(
                    title: AppText(
                      bold: true,
                      textColor: AppColors.greyColor,
                      text: option,
                      fontSize: 10,
                    ),
                    onTap: () {
                      widget.callback?.call(option);
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final screenUtils = ScreenUtils(context);

    return InkWell(
      child: Container(
          color: AppColors.whiteColor,
          padding: const EdgeInsets.all(5),
          width: widget.width,
          height: 50,
          child: Row(
            children: [
              AppText(
                  textColor: AppColors.greyColor,
                  text: widget.dropDownText!,
                  fontSize: 10,
                  bold: false),
              const Spacer(),
              widget.isloading
                  ? const SpinKitFadingCircle(
                      color: AppColors.blueColor,
                      size: 20.0,
                    )
                  : const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColors.greyColor,
                    )
            ],
          )),
      onTap: () {
        _showBottomSheet(context);
      },
    );
  }
}



class DropDownWithNairaSign extends StatefulWidget {
  List<String> dropdownlist;
  String? dropDownText;
  Function? callback;
  double? width;
  bool isloading;

  DropDownWithNairaSign({
    Key? key,
    required this.dropdownlist,
    this.dropDownText,
    required this.callback,
    this.width,
    required this.isloading,
  }) : super(key: key);

  @override
  State<DropDownWithLoader> createState() => _DropDownWithLoaderState();
}

class _DropDownWithNairaSignState extends State<DropDownWithNairaSign> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.dropdownlist.map((option) {
                return ListTile(
                  title: AppText(
                    bold: true,
                    textColor: AppColors.greyColor,
                    text: option,
                    fontSize: 10,
                  ),
                  onTap: () {
                    widget.callback?.call(option);
                    // setState(() {
                    //   _selectedValue = option;
                    // });
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
    // return _selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    // final screenUtils = ScreenUtils(context);

    return InkWell(
      child: Container(
        color: AppColors.whiteColor,
        padding: const EdgeInsets.all(5),
        width: widget.width,
        height: 50,
        child: Row(
          children: [
            AppText(
                textColor: AppColors.greyColor,
                text: widget.dropDownText!,
                fontSize: 10,
                bold: false),
            const Spacer(),
           
               const  AppText(textColor: Colors.black, text: "₦", fontSize: 12, bold: true)
          ],
        ),
      ),
      onTap: () {
        _showBottomSheet(context);
      },
    );
  }
}

