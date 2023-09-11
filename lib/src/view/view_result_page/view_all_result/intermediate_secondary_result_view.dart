
import 'package:bd_result/src/constants/colors.dart';
import 'package:bd_result/src/controller/intermediate_secondary_result_controller.dart';
import 'package:bd_result/src/model/bteb_user_data_model.dart';
import 'package:bd_result/src/service/html_to_pdf.dart';
import 'package:bd_result/src/utils/widgets/download_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class IntermediateSecondaryResultView extends StatelessWidget {
  final UserInputdataModel intermediateSecondaryUserdataModel;
  const IntermediateSecondaryResultView(
      {super.key, required this.intermediateSecondaryUserdataModel});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final result = ref.watch(
            interSecondaryresultProvider(intermediateSecondaryUserdataModel));
        return result.when(
          loading: () => const Column(
            children: [
              Center(
                child: CircularProgressIndicator(),
              ),
              Center(
              child: Text(
                "Result Convert to PDF......",
                style: TextStyle(color: Appcolor.red),
              ),
            )
            ],
          ),
          error: (error, stack) {
            return const Center(
              child: Text(
                "Result Not Found",
                style: TextStyle(color: Appcolor.red),
              ),
            );
          },
          data: (data) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () async {
                            var result = await PDFserviceHtmlToPdf()
                                .htmlToPdfDownload(data);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      result.toString())));
                        },
                        child: const DownloadButton())),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: SfPdfViewer.memory(
                  data.buffer.asUint8List(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
