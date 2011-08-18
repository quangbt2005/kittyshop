<div class="content" style="width: 600px;margin:0 auto;">
  <div class="header1">Chọn Icon cho Danh mục</div>
  {$IconsBoard}
</div>
{literal}
<script>
var lastSelected = null;
function fillSelectedItem(item)
{
  if(lastSelected){
    lastSelected.style.backgroundColor = 'transparent';
  }
  item.style.backgroundColor = '#ff0000';
  lastSelected = item;
}
function onMouseOut(item)
{
  if((lastSelected == null) || (item.id != lastSelected.id)){
    item.style.backgroundColor = 'transparent';
  }
}
</script>
{/literal}