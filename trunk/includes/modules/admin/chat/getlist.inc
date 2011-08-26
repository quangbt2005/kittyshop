<?php
if(! Check_Admin_Ajax()) return;

$List = ListChatForAdmin();

$ListWithIntro = array();
foreach($List as $chat){
  $chat['intro'] = strip_tags($chat['content']);
  $ListWithIntro[] = $chat;
}

$smarty->assign('Chat_List', $ListWithIntro);
$html = $smarty->fetch('admin/chat/getlist.tpl');
echo $html;
?>