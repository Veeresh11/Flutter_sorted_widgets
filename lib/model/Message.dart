import 'package:intl/intl.dart';
import 'ListItem.dart';

class Message extends ListItem{

  final int id;
  final String title;
  final String content;
  final String attachment;
  String _formattedDate;

  Message({this.id, this.title, this.content, this.attachment, created}) : super(created){
    var formatter = new DateFormat('EE, dd MMM yyyy');
    String formatted = formatter.format(super.createdOn);
    this._formattedDate = formatted;
  }

  get formattedDate => _formattedDate;

}