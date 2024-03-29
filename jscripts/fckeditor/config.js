/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
  // Define changes to default configuration here. For example:
  config.toolbar_Basic =
  [
    ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink']
  ];

  config.toolbar_Full =
  [
    { name: 'document', items : [ 'Source','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] },
    { name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
    { name: 'forms', items : [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button','ImageButton','HiddenField' ] },
    '/',
    { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
    { name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
    { name: 'links', items : [ 'Link','Unlink','Anchor' ] },
    { name: 'insert', items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe' ] },
    '/',
    { name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
    { name: 'colors', items : [ 'TextColor','BGColor' ] },
    { name: 'tools', items : [ 'Maximize', 'ShowBlocks','-','About' ] }
  ];

  config.toolbar_Enough4Me =
  [
    { name: 'row1', items : [ 'Cut','Copy','Paste','-','Undo','Redo','-','Bold','Italic','Underline','Strike','Subscript','Superscript','-','NumberedList','BulletedList','-','Outdent','Indent','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
    '/',
    { name: 'row2', items : [ 'Font','FontSize','Link','Unlink','-','Image','Table','Smiley','SpecialChar','TextColor','BGColor','-','Maximize','Source' ] },
  ];

  config.toolbar_Enough4Chat =
  [
    { name: 'row1', items : [ 'Cut','Copy','Paste','-','Undo','Redo','-','Bold','Italic','Underline','Strike','Subscript','Superscript','-','NumberedList','BulletedList','-','Outdent','Indent','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
    '/',
    { name: 'row2', items : [ 'Link','Unlink','-','SpecialChar','-','TextColor','BGColor' ] },
  ];

  config.language = 'vi';
  config.uiColor = '#AADC6E';
  config.skin = 'kama';
  config.toolbar = 'Enough4Me';
  config.extraPlugins = 'autogrow';
  config.autoGrow_maxHeight = 200;
  config.autoGrow_minHeight = 200;
  config.removePlugins = 'resize';
  config.width = 580;
  config.autoParagraph = false;
};
