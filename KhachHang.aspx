<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="APPLICATION"></asp:Label>
        <br />
        <br />
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Table" Value="Table">
                    <asp:MenuItem Text="KhachHang" Value="KhachHang" NavigateUrl="~/KhachHang.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="HoaDon" Value="HoaDon" NavigateUrl="~/HoaDon.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="HoaDonChiTiet" Value="HoaDonChiTiet" NavigateUrl="~/HoaDonChiTiet.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="SanPham" Value="SanPham" NavigateUrl="~/SanPham.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="LoaiSanPham" Value="LoaiSanPham" NavigateUrl="~/LoaiSanPham.aspx"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <br />
        <br />
&nbsp;Table KhachHang<br />
        <br />
        <asp:GridView ID="GridViewKhachHang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ten_KH" HeaderText="Ten_KH" SortExpression="Ten_KH" />
                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Thêm" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập Nhật" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [Ma_KH] = @Ma_KH" InsertCommand="INSERT INTO [KhachHang] ([Ma_KH], [Ten_KH], [GioiTinh], [DiaChi], [SDT]) VALUES (@Ma_KH, @Ten_KH, @GioiTinh, @DiaChi, @SDT)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [Ten_KH] = @Ten_KH, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [Ma_KH] = @Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1" Height="135px" Width="182px">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ten_KH:
                <asp:Label ID="Ten_KHLabel" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                GioiTinh:
                <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
                <br />
                DiaChi:
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                SDT:
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        
    </div>
    </form>
</body>
</html>
