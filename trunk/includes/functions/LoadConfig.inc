<?php
$configkey = array(
  "'EMAIL'",
  "'STORE_INFO'",
  "'PHONE'",
  "'CHAT'",
  "'CHATTITLE'",
  "'BUYINGHELP'",
  "'YMNOTIFY'",
  "'MARQUEE'"
);

$condition = implode(',', $configkey);
$query  = 'SELECT configuration_key,configuration_value ';
$query .= 'FROM configuration ';
$query .= "WHERE configuration_title in($condition)";

$Result = P_MySQL_Real_SELECT_GetArrayIndex( $query );

foreach($Result as $value){
	define($value['configuration_key'], $value['configuration_value']);
  $smarty->assign($value['configuration_key'], $value['configuration_value'] );
}
$_topMarquee = substr(TOP_MARQUEE, 3);
$_topMarquee = substr($_topMarquee, 0, -4);
$smarty->assign('TOP_MARQUEE', $_topMarquee );
?>
