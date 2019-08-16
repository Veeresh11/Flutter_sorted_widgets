import 'package:intl/intl.dart';
import 'ListItem.dart';

class Stats extends ListItem{

  final int id;
  final String stat1;
  final String stat2;
  final String stat3;
  String _formattedDate;

  Stats({this.id, this.stat1, this.stat2, this.stat3, created}) : super(created){
    var formatter = new DateFormat('EE, dd MMM yyyy');
    String formatted = formatter.format(super.createdOn);
    this._formattedDate = formatted;
  }

  get formattedDate => _formattedDate;

}