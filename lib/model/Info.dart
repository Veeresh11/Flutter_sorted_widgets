import 'package:intl/intl.dart';
import 'ListItem.dart';

class Info extends ListItem{

  final int id;
  final String text;
  String _formattedDate;

  Info({this.id, this.text, created}) : super(created){
    var formatter = new DateFormat('EE, dd MMM yyyy');
    String formatted = formatter.format(super.createdOn);
    this._formattedDate = formatted;
  }

  get formattedDate => _formattedDate;

}