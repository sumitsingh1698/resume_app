import 'package:flutter/material.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'package:printing/printing.dart';
import 'package:resume_app/src/model/Detail.dart';

class ConvertPdf extends StatefulWidget {

 Detail detail;

 ConvertPdf(Detail detail){
    this.detail = detail;
    print("detail name "+detail.getName);
 }


  @override
  _ConvertPdfState createState() => _ConvertPdfState(detail);
}

class _ConvertPdfState extends State<ConvertPdf> {
  Detail detail;
  _ConvertPdfState(this.detail);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Pdf"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.print),
        tooltip: 'Print Document',
        onPressed: () {
          Printing.layoutPdf(
            onLayout: buildPdf,
          );
        },
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${detail.getName}'),
          ],
        ),
      ),
    );
  }

  List<int> buildPdf(PdfPageFormat format) {
    final pdf.Document doc = pdf.Document();
  
    doc.addPage(
      pdf.Page(
        pageFormat: format,
        build: (pdf.Context context) {
          return pdf.Container(
            
            padding: pdf.EdgeInsets.all(20),
            child: pdf.Center(child: pdf.Column(
              crossAxisAlignment: pdf.CrossAxisAlignment.center,
              children: <pdf.Widget>[
              pdf.Text("${detail.getName}",style: pdf.TextStyle(fontSize:30)),
              pdf.Text("${detail.getPhoneno} | ${detail.getEmail}",style: pdf.TextStyle(fontSize:20)),
              pdf.SizedBox(height:20),
              pdf.Container(height: 5,color: PdfColors.black),
              
            ]
            ),
            ),
          );
        },
      ),
    );

    return doc.save();
  }
  
}
