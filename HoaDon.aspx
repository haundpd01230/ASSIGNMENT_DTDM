<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="APPLICATION"></asp:Label>
        <br />
        <br />
        <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="Table" Value="Table">
                    <asp:MenuItem NavigateUrl="~/KhachHang.aspx" Text="KhachHang" Value="KhachHang"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDon.aspx" Text="HoaDon" Value="HoaDon"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/HoaDonChiTiet.aspx" Text="HoaDonChiTiet" Value="HoaDonChiTiet"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/SanPham.aspx" Text="SanPham" Value="SanPham"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/LoaiSanPham.aspx" Text="LoaiSanPham" Value="LoaiSanPham"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Table HoaDon"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" SortExpression="Ma_KH" />
                <asp:BoundField DataField="NgayMua" HeaderText="NgayMua" SortExpression="NgayMua" />
                <asp:BoundField DataField="Ten_KH" HeaderText="Ten_KH" SortExpression="Ten_KH" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Thêm" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [Ma_HD] = @Ma_HD" InsertCommand="INSERT INTO [HoaDon] ([Ma_HD], [Ma_KH], [NgayMua], [Ten_KH], [DiaChi]) VALUES (@Ma_HD, @Ma_KH, @NgayMua, @Ten_KH, @DiaChi)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [Ma_KH] = @Ma_KH, [NgayMua] = @NgayMua, [Ten_KH] = @Ten_KH, [DiaChi] = @DiaChi WHERE [Ma_HD] = @Ma_HD">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayMua" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayMua" />
                <asp:Parameter Name="Ten_KH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Ma_HD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1" Height="132px" Width="186px">
            <EditItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                NgayMua:
                <asp:TextBox ID="NgayMuaTextBox" runat="server" Text='<%# Bind("NgayMua") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_HD:
                <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                <br />
                Ma_KH:
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                NgayMua:
                <asp:TextBox ID="NgayMuaTextBox" runat="server" Text='<%# Bind("NgayMua") %>' />
                <br />
                Ten_KH:
                <asp:TextBox ID="Ten_KHTextBox" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                NgayMua:
                <asp:Label ID="NgayMuaLabel" runat="server" Text='<%# Bind("NgayMua") %>' />
                <br />
                Ten_KH:
                <asp:Label ID="Ten_KHLabel" runat="server" Text='<%# Bind("Ten_KH") %>' />
                <br />
                DiaChi:
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
