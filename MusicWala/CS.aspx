<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" runat="server" Text="Upload" 
        onclick="btnUpload_Click" />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" RowStyle-BackColor="#A1DCF2" Font-Names = "Arial" Font-Size = "10pt"
    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="FileName" />
            <asp:TemplateField>
                <ItemTemplate>
                    <object type="application/x-shockwave-flash" data='dewplayer-vol.swf?mp3=FileCS.ashx?Id=<%# Eval("Id") %>'
                        width="240" height="20" id="dewplayer">
                        <param name="wmode" value="transparent" />
                        <param name="movie" value='dewplayer-vol.swf?mp3=FileCS.ashx?Id=<%# Eval("Id") %>'/>
                    </object>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" Text = "Download" DataNavigateUrlFormatString = "~/FileCS.ashx?Id={0}" HeaderText="Download" />
        </Columns>
    </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
