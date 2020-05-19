import 'package:flutter/material.dart';

final _iconsImage = <String,Image> {

'unco'                : Image(image: AssetImage('Asset/unco.png'),),
'unrn'                : Image(image: AssetImage('Asset/unrn.png'),),
'utn'                 : Image(image: AssetImage('Asset/utn.png'),),
'ucasal'              : Image(image: AssetImage('Asset/ucasal.png'),),
'enerc'               : Image(image: AssetImage('Asset/unrn.png'),),
'uflo'                : Image(image: AssetImage('Asset/unrn.png'),),
'escuelaPolicia'      : Image(image: AssetImage('Asset/unrn.png'),),
'virtual'             : Image(image: AssetImage('Asset/unrn.png'),),
// 'otras'               : Image(image: AssetImage('Asset/unrn.png'),),


};


Container getIconImage (String nombreImage) {
  
  return Container(
    height: 80.0,
    width: 80.0,
    child:_iconsImage[nombreImage]); 
}

