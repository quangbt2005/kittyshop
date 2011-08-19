<div id="bigBox">
  <div class="box">
    <div class="left"></div>
    <div class="right"></div>
    <div class="heading">
      <h1 class="bkg_dashboard">Cấu Hình</h1>
    </div>
    <div class="content">
    <form method="POST">
      <table cellpadding="0" cellspacing="5" width="100%" border="0">
        <tr>
          <th align="right" style="padding-right: 5px" width="200">Địa chỉ shop</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtAddress" class="w400" value="{if $smarty.post.txtAddress != ''}{$smarty.post.txtAddress}{else}{$STORE_ADDRESS}{/if}"></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Email</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtEmail1" class="w200" value="{if $smarty.post.txtEmail1 != ''}{$smarty.post.txtEmail1}{else}{$STORE_EMAIL}{/if}">&nbsp;<span class="f8">(Email này sẽ hiện trong phần bottom của site)</span></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Admin Email</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtEmail2" class="w200" value="{if $smarty.post.txtEmail2 != ''}{$smarty.post.txtEmail2}{else}{$ADMIN_EMAIL}{/if}">&nbsp;<span class="f8">(Email này sẽ nhận thông báo khi có đơn hàng mới)</span></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Support Email</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtEmail3" class="w200" value="{if $smarty.post.txtEmail3 != ''}{$smarty.post.txtEmail3}{else}{$SUPPORT_EMAIL}{/if}">&nbsp;<span class="f8">(Email này sẽ nhận thông tin liên hệ từ khách hàng)</span></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Điện thoại 1</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtPhone1" value="{if $smarty.post.txtPhone1 != ''}{$smarty.post.txtPhone1}{else}{$PHONE_1}{/if}">&nbsp;<span class="f8">(Số điện thoại này sẽ hiện trong phần Footer của site)</span></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Điện thoại 2</th>
          <td align="left" style="padding-left: 5px" colspan="3"><input type="text" name="txtPhone2" value="{if $smarty.post.txtPhone2 != ''}{$smarty.post.txtPhone2}{else}{$PHONE_2}{/if}">&nbsp;<span class="f8">(Số điện thoại này sẽ hiện trong phần Hỗ trợ trực tuyến)</span></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Hỗ trợ Chat</th>
          <td align="left" style="padding-left: 5px"><input type="text" name="txtChat1" class="w150" value="{if $smarty.post.txtChat1 != ''}{$smarty.post.txtChat1}{else}{$CHAT_1}{/if}"></td>
          <th align="right" style="padding-right: 5px">Title</th>
          <td align="left" style="padding-left: 5px"><input type="text" name="txtChat1Title" class="w150" value="{if $smarty.post.txtChat1Title != ''}{$smarty.post.txtChat1Title}{else}{$CHATTITLE_1}{/if}"></td>
        </tr>
        <tr>
          <th align="right" style="padding-right: 5px">Hỗ trợ Thanh Toán</th>
          <td colspan="3">
            <table cellpadding="0" cellspacing="5" width="100%" border="0">
              {foreach from=$BankList item=bank}
              <tr>
                <td width="20"><input type="checkbox"{if $bank.active==1} checked{/if} name="bank_active[]" id="bank_active{$bank.id}" value="{$bank.id}"></td>
                <td width="160"><img src="/images/banks/{$bank.image}" border="0" title="{$bank.bank_name}" alt="{$bank.bank_name}"></td>
                <td>Số tài khoản&nbsp;&nbsp;<input type="text" class="w150" name="txtAccountNo[{$bank.id}]" value="{$bank.account_no}"></td>
                <td>Tên chủ tài khoản&nbsp;&nbsp;<input type="text" class="w150" name="txtAccountName[{$bank.id}]" value="{$bank.account_name}"></td>
              </tr>
              {/foreach}
            </table>
          </td>
        </tr>
        <tr>
          <td colspan="4" align="center"><br><input type="submit" value="Lưu thay đổi" class="w100"></td>
        </tr>
      </table>
    </form>
    </div>
  </div>
</div>
{if $update_configuration_ok > 0}
<script language="javascript" type="text/javascript">
alert('Đã cập nhật cấu hình thành công');
</script>
{/if}