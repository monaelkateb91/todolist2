




import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist2/view_model/view_model.dart';

class SettingsBottomSheetView extends StatelessWidget {
  const SettingsBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();

    return Consumer<ViewModel>(builder: (context, viewModel, child) {
      return Padding(
        padding:
        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            height: 80,
            child: Center(
              child: SizedBox(
                height: 40,
                width: 250,
                child: TextField(
                    onSubmitted: (value) {
                      if (entryController.text.isNotEmpty) {
                        viewModel.updatemyusername(entryController.text);
                      }
                      Navigator.of(context).pop();
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        filled: true,
                        //   fillColor: viewModel.clrLvl2,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none))),
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    //  cursorColor: viewModel.clrLvl4,
                    autofocus: true,
                    autocorrect: false,
                    controller: entryController,
                    style: TextStyle(
                        fontWeight: FontWeight.w500)),
              ),
            )),
      );
    });
  }
}