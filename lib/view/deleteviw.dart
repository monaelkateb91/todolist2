


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist2/view_model/view_model.dart';

class DeleteBottomSheetView extends StatelessWidget {
  const DeleteBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewModel, child) {
      return Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  viewModel.deletalltasks();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(

                    textStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("Delete All")),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  viewModel.deletcompletedtask();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(

                    textStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("Delete Completed")),
          ],
        ),
      );
    });
  }
}