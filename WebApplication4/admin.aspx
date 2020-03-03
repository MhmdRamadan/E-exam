<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication4.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        text-decoration: underline;
        font-size: xx-large;
    }
    .auto-style8 {
        height: 26px;
    }
    .auto-style9 {
        width: 133px;
    }
    .auto-style10 {
        height: 26px;
        width: 133px;
    }
    .auto-style11 {
        width: 133px;
        height: 25px;
    }
    .auto-style12 {
        height: 25px;
    }
    .auto-style13 {
        color: red;
    }
        .auto-style14 {
            width: 58px;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            width: 58px;
            text-align: center;
        }
        .auto-style19 {
            font-size: xx-large;
        }
        .auto-style21 {
            height: 35px;
        }
        .auto-style22 {
            width: 227px;
        }
        .auto-style23 {
            width: 227px;
            height: 24px;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style25 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6" colspan="3"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Admin log in"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" Width="153px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style18" rowspan="3"><strong>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style17" Text="Requests"></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <asp:GridView ID="data1" runat="server"  AutoGenerateColumns="False"  CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            <asp:BoundField DataField="typeofuser" HeaderText="typeofuser" SortExpression="typeofuser" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [Table_2]"></asp:SqlDataSource>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="Label7" runat="server" Text="Fullname"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Accept request" Width="134px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">
                    <asp:Label ID="Label9" runat="server" Height="20px" Text="the subject" Width="130px"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Specify the subject" Width="137px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Next" Width="114px" />
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table class="auto-style2">
            <tr>
                <td colspan="3" class="auto-style6"><strong>
                    <asp:Label ID="Label13" runat="server" CssClass="auto-style19" Text="Levels and departments "></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="level_name" HeaderText="level_name" SortExpression="level_name" />
                            <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [Table_level]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Level"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Department"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="28px" OnClick="Button4_Click" Text="Submit" Width="110px" />
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="Button" Width="91px" />
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:View>
        <asp:View ID="View4" runat="server">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6" colspan="2"><strong>
                        <asp:Label ID="Label14" runat="server" CssClass="auto-style19" Text="Subjects"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="subject" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" SortExpression="subject" />
                                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:e-exam1ConnectionString %>" SelectCommand="SELECT * FROM [Table_subjects]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style25" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="level_name" HeaderText="level_name" SortExpression="level_name" />
                                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label15" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label16" runat="server" Text="Number of subjects"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label17" runat="server" Text="First"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label18" runat="server" Text="Second"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label19" runat="server" Text="Third"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label20" runat="server" Text="Fourth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label21" runat="server" Text="Fifth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label22" runat="server" Text="sixth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label23" runat="server" Text="seventh"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
</asp:MultiView>
</asp:Content>
