<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <link href="Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="style/common.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
     <div style="margin-bottom:175px;"> 
            <div class="row clasrow">
                <div class="text-center">
                    <h1>Clain India Mission</h1>
                </div>
            </div>
         <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
            <div style="margin-left:30%;margin-top:20px">
                <div class="panel panel-info" style="width: 50%">
                    <div class="panel-heading">
                        <div class="panel-title" >
                            <div id="h1">
                                <div id="login" onclick="login()" style="display:inline; margin-left:100px;padding:10PX; cursor:pointer">login</div>
                                <div id="signup" onclick="signup()" style="display:inline; margin-left:100px;padding:10PX;cursor:pointer">Sign Up</div>
                            </div>
                            <div id="h2" style="display:none">
                                <div id="Div1" style="display:block; margin-left:70px;padding:10PX;">Forgate Password...</div>
                            </div>
                        </div>
                    </div>
                     <script type="text/javascript">
                         function login() {
                             document.getElementById('loginform').style.display = 'block';
                             document.getElementById('signupform').style.display = 'none';
                         }
                         function signup() {
                             document.getElementById('signupform').style.display = 'block';
                             document.getElementById('loginform').style.display = 'none';
                         }
                         function forgatepass()
                         {
                         document.getElementById('signupform').style.display = 'none';
                         document.getElementById('loginform').style.display = 'none';
                         document.getElementById('h1').style.display = 'none';
                         document.getElementById('h2').style.display = 'block';
                         document.getElementById('forgatepass').style.display = 'block';
                         }
                         </script>
                     <div class="panel-body" style="padding-top: 30px">
                    <div id="loginform" style="display:block" onclick="loginform()">
                        <div class="col-md-12">
                            <asp:Label ID="lblerror" style="color:red" runat="server"></asp:Label>
                        </div>
                        <div id="login-alert" class="col-sm-12">
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtemail" class="form-control" name="txtemail" value="" style="width:420px" placeholder="username or email" />
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtloginpass" class="form-control" name="txtloginpass" value="" style="width:420px" placeholder="Password" />
                            </div>
                            <div class="row" style="margin-left:25px">
                                <label onclick="forgatepass()">Forgate Password </label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <%--<asp:Button ID="btnlogin" runat="server" CssClass="form-control" style="width:100%" OnClick="btnlogin_Click" Text="Log In" />--%>
                            <asp:Button ID="btnlogin" runat="server" CssClass="form-control" style="width:100%" Text="Log In" OnClick="btnlogin_Click" />
                        </div>
                        <div class="col-md-6">
                            <input type="button" id="btnsignup" class="btn btn-primary"  value="Sign Up" onclick="signup()" style="width:100%" />
                        </div>
                    </div>
                     <div id="signupform" style="display:none" onclick="signupform()">
                         <div class="col-sm-6">
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtfname" class="form-control" name="txtfname" value="" style="width:auto" placeholder="First Name" />
                            </div>
                        </div>
                          <div class="col-sm-6">
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtlname" class="form-control" name="txtlname" value="" style="width:auto" placeholder="Last Name" />
                            </div>
                        </div>
                         <div class="col-sm-12">
                             <div class="input-group" style="margin-bottom:25px">
                                 <input type="text" id="txtmobile" class="form-control" name="txtmobile" value="" style="width:420px" placeholder="Mobile" />
                             </div>
                         </div>
                          <div class="col-sm-12">
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtpass" class="form-control" name="txtpass" value="" style="width:420px" placeholder="Password" />
                            </div>
                        </div>
                         <div class="col-sm-12">
                            <div style="margin-bottom: 25px" class="input-group">
                                <input type="text" id="txtemailid" class="form-control" name="txtemailid" value="" style="width:420px" placeholder="Email ID" />
                            </div>
                        </div>
                         <div class="col-lg-12">
                             <div style="margin-bottom:25px" class="input-group">
                                 <%--<asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" style="padding:20px; width:420px" OnClick="btnRegister_Click"/>--%>
                                 <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" style="padding:20px; width:420px" OnClick="btnRegister_Click" />
                             </div>
                         </div>
                     </div>
                <div id="forgatepass" style="display:none">
                    <div class="row">
                        <div class="col-lg-3">
                            <label>Email Id :</label>
                        </div>
                        <div class="col-lg-6">
                        <input type="text" id="txtfpass" class="form-control" placeholder="Enter Your Email ID" />
                        </div>
                    </div>
                    <div class="row" style="margin:20px">
                        <div class="col-lg-3"></div>
                        
                        <div class="col-lg-3" style="margin-left:22px">
                            <asp:Button ID="btnsendemail" runat="server" Text="Send" CssClass="btn btn-primary" OnClick="btnsendemail_Click" />
                        </div>
                        <div class="col-lg-3">
                            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
                    </div>
                    
                </div>
            </div>
        </div>
</asp:Content>

