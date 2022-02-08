import 'package:flutter/material.dart';

class PageModel {
  final String _name;
  final String _data;
  final Widget _page;
  final String _image;

  PageModel(this._name, this._data, this._image, this._page);

  get name => _name;

  get data => _data;
  get page => _page;
  get image => _image;
}
