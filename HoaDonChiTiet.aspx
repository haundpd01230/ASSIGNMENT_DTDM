<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoaDonChiTiet.aspx.cs" Inherits="WebApplication2.HoaDonChiTiet" %>

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
        <asp:Label ID="Label2" runat="server" Text="Table HoaDonChiTiet"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" SortExpression="Ma_SP" />
                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:BoundField DataField="ThanhTien" HeaderText="ThanhTien" SortExpression="ThanhTien" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Thêm" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" DeleteCommand="DELETE FROM [HoaDonChiTiet] WHERE [Ma_HD] = @Ma_HD" InsertCommand="INSERT INTO [HoaDonChiTiet] ([Ma_HD], [Ma_SP], [DonGia], [SoLuong], [ThanhTien]) VALUES (@Ma_HD, @Ma_SP, @DonGia, @SoLuong, @ThanhTien)" SelectCommand="SELECT * FROM [HoaDonChiTiet]" UpdateCommand="UPDATE [HoaDonChiTiet] SET [Ma_SP] = @Ma_SP, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien WHERE [Ma_HD] = @Ma_HD">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="ThanhTien" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="ThanhTien" Type="Decimal" />
                <asp:Parameter Name="Ma_HD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource1" Height="127px" Width="183px">
            <EditItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                ThanhTien:
                <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ma_HD:
                <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                ThanhTien:
                <asp:TextBox ID="ThanhTienTextBox" runat="server" Text='<%# Bind("ThanhTien") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:Label ID="Ma_SPLabel" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                DonGia:
                <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                SoLuong:
                <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                ThanhTien:
                <asp:Label ID="ThanhTienLabel" runat="server" Text='<%# Bind("ThanhTien") %>' />
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
