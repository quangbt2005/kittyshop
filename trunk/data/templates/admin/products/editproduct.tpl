{literal}
<script type="text/javascript" language="javascript">
$(document).ready(function() {
  $('textarea.tinymce').tinymce({
    // Location of TinyMCE script
    script_url : '/jscripts/jquery/tiny_mce/tiny_mce.js',

    // General options
    theme : "advanced",
    // plugins : "pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",
    plugins : "advimage,advlink,insertdatetime,directionality,table",

    // Theme options
    theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,fontselect,fontsizeselect",
    theme_advanced_buttons2 : "link,unlink,image,|,forecolor,backcolor,|,bullist,numlist,|,outdent,indent,|,tablecontrols",
    theme_advanced_buttons3 : "",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",

    external_link_list_url : "lists/link_list.js",
	external_image_list_url : "lists/image_list.js",
  });
});
</script>
<script src="/jscripts/fileuploader.js" type="text/javascript"></script>
{/literal}
<form method="post" enctype="multipart/form-data">
<div class="content" style="width: 800px;margin:0 auto;">
  <div class="header1">Hiệu chỉnh thông tin sản phẩm</div>
    <div class="blu-container" style="padding: 10px;text-align: center">
      {if $errors_count > 0}
      {foreach from=$errors item=error}
      <div class="w100p error_field t-left">&nbsp;&nbsp;<img height="10" border="0" width="10" title=" Lỗi " alt="Lỗi" src="/images/icons/error.gif">&nbsp;{$error}</div>
      {/foreach}
      <br />
      {/if}
      <table cellpadding="0" cellspacing="0" width="100%" class="vlist">
        <tr>
          <th align="right" style="padding-right: 5px">Tên Sản Phẩm</th>
          <td align="left" style="padding-left: 5px"><input name="txtProductName" type="text" class="w340" value="{$txtProductName}"></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Danh Mục</th>
          <td align="left" style="padding-left: 5px">{$html_select_categories}</td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Giá Sản Phẩm</th>
          <td align="left" style="padding-left: 5px"><input name="txtProductPrice" type="text" class="w100 t-right" value="{$txtProductPrice}">&nbsp;VND</td>
        </tr>
        {if $txtProductSPPrice != ''}
        <tr>
          <th align="right" style="padding-right: 5px">Giá Khuyến Mãi</th>
          <td align="left" style="padding-left: 5px"><span class="fore-red"><strong>{number_format number=$txtProductSPPrice}</strong></span>&nbsp;VND</td>
        </tr>
        {/if}
        <tr>
          <th align="right" style="padding-right: 5px">Hình Sản Phẩm</th>
          <td align="left">
          	<table cellspacing="5" border="0" width="100%">
          		<tr>
          			<td valign="middle" style="border:0px" nowrap>
            			<div id="file_uploader" style="float: left"></div>
            		</td>
            		<td style="border:0px" width="100%">
            			<img id="imgProductImg" src="{if $txtProductImage == ''}/images/transparent.png{else}/product_thumb.php?f={$txtProductImage}&w=auto&h=80&ma=80&cx=84&cy=84{/if}" height="84" width="84" border="0">
            			<input type="hidden" id="txtProductImage" name="txtProductImage" value="{$txtProductImage}"><br />
            			<span id="imgURL">{if $txtProductImage != ''}{$PRODUCTS_IMAGES}{$txtProductImage}{/if}</span>
            		</td>
            	</tr>
            </table>
          </td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px" width="120">Chi Tiết Sản Phẩm</th>
          <td align="left" style="padding: 5px"><textarea name="txtProductDescription" rows="25" class="tinymce" style="width: 100%;">{$txtProductDescription}</textarea></td>
        </tr>
      </table><br />
      <input type="submit" class="w130" value="Save and Close">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" class="w100" value="Close" onclick="window.close();">
    </div>
  </div>
</div>
</form>
<script type="text/javascript" language="javascript">
{if $update_product_ok==1}
window.opener.reloadProductList({$showing_category});
alert('Đã lưu thay đổi');
window.close();
{/if}
{literal}
function createUploader(){
  var uploader = new qq.FileUploader({
    element: document.getElementById('file_uploader'),
    action: '/upload_product_image.php',
    debug: true,
    allowedExtensions: ['jpg','png','gif','bmp'],
    sizeLimit: 2097152,
    onComplete: function(id, fileName, responseJSON){
    	if(responseJSON.error == null){
			$('#imgProductImg').attr("src","/product_thumb.php?f=" + fileName + "&w=auto&h=80&ma=80&cx=84&cy=84");
			$('#txtProductImage').val(fileName);
{/literal}
			$('#imgURL').attr("innerHTML","{$PRODUCTS_IMAGES}" + fileName);
{literal}
    	}
    }
  });
}

window.onload = createUploader;
{/literal}
</script>