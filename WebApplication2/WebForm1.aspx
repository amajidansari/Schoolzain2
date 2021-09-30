<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="description" content="SindhZameen">
    <meta name="keywords" content="dATA BASE">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> |DATA BASE</title>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(function () {
        $("[id*=GridView1]").DataTable(
        {
            bLengthChange: true,
            lengthMenu: [[5, 10, -1], [5, 10, "All"]],
            bFilter: true,
            bSort: true,
            bPaginate: true
        });
    });
</script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Aldrich&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/slick.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

</head>

<body>
    <form id="form1" runat="server">
    <div>

    <section class="services spad" style="background-image:url(img/bg_tab08.jpg); background-attachment:fixed; background-position:top; background-size:cover;">
    
       <div class="container">
       <div class="latest__item02" style="background:none; box-shadow:none;">
       <div class="row">
            	<div class="col-lg-12 text-center" style=" margin-top: 5px; ">
                    <div class="section-title_1">
                        <span><h2 style="font-family:inherit;">Data Base</h2></span>
                        
                    </div>
                </div>
                 <div class="col-lg-12 text-center"  style=" margin-top: 5px; ">
                    <div class="section-title" style="margin-bottom: 0px;">
                        <p style="color:#000;">( Board of Management Syestem of XYZ )</p>
                    </div>
                </div>
                
            </div>
            
       <div class="row">
    			<div class="col-lg-4 col-md-8 col-sm-8" ></div>	
                    <div class="col-lg-4 col-md-6 col-sm-8" >
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  placeholder="PID"></asp:TextBox>
            <span id="RegularExpressionValidator3" style="visibility:hidden;">Only Numbers allowed</span>
              

             </div>
                  <div class="col-lg-4 col-md-8 col-sm-8" ></div>
           </div>
        <div class="row">
			 
              <div class="col-lg-4 col-md-6 col-sm-8" >
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  placeholder="Name"></asp:TextBox>
            

             </div>
              
               
             <div class="col-lg-4 col-md-8 col-sm-8" >
             	            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  placeholder="father names"></asp:TextBox>
            <span id="RegularExpressionValidator3" style="visibility:hidden;">Only Numbers allowed</span>
              
             </div>
              
               
               <div class="col-lg-4 col-md-8 col-sm-8" >
             	            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  placeholder="CNIC"></asp:TextBox>
            
             </div>
              
               
              <div class="col-lg-4 col-md-8 col-sm-8" >
                         <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  placeholder="Designation"></asp:TextBox>
            <span id="RegularExpressionValidator3" style="visibility:hidden;">Only Numbers allowed</span>
              
             </div>
              
               
               <div class="col-lg-4 col-md-8 col-sm-8" >
             	            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"  placeholder="BPS"></asp:TextBox>
            
             </div>
             
             
               <div class="col-lg-4 col-md-8 col-sm-8" >
                         <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"  placeholder="[Contact_no]"></asp:TextBox>
            <span id="RegularExpressionValidator3" style="visibility:hidden;">Only Numbers allowed</span>
              
             </div>
             
              
                <div class="col-lg-4 col-md-8 col-sm-8" >
            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"  placeholder="School"></asp:TextBox>
            
             </div>
              
               
               <div class="col-lg-4 col-md-8 col-sm-8" >
            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"  placeholder="UC"></asp:TextBox>
            <span id="RegularExpressionValidator3" style="visibility:hidden;">Only Numbers allowed</span>
              
             </div>
               
                <div class="col-lg-4 col-md-8 col-sm-8" >
             	            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"  placeholder="Latitude"></asp:TextBox>
            
             </div>
              
               
              <div class="col-lg-4 col-md-8 col-sm-8" >
             	            <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"  placeholder="Longitude"></asp:TextBox>
            
             </div>
              
               
               <div class="col-lg-4 col-md-8 col-sm-8" >
            
             </div>
             
             
              <div class="col-lg-4 col-md-8 col-sm-8" >
            
             </div>
            
      
    </div>
     <div class="row">
            <div class="col-sm-4" style="margin-top:10px; ">
          
                <asp:Button ID="Button1" runat="server" Text="add"    CssClass="form-control btn btn-success " OnClick="Button1_Click"/>
              
           </div>            
            <div class="col-sm-4" style="margin-top:10px; ">
                <asp:Button ID="Button2" runat="server" Text="update"  CssClass="form-control btn btn-success " OnClick="Button2_Click" />
                 
               </div>
       		<div class="col-sm-4" style="margin-top:10px; ">
                <asp:Button ID="Button3" runat="server" Text="delete" CssClass="form-control btn btn-success " OnClick="Button3_Click" />
                 
               </div>
			            
            


     

		</div>
       
      </div>
                 
           <asp:GridView ID="GridView1" runat="server" class="table table=striped table-bordered" AutoGenerateColumns="False" DataKeyNames="PID" AutoGenerateSelectButton="True" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                                              <Columns>
                              <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" SortExpression="PID" />
                              <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="PID" />
                                   <asp:BoundField DataField="F_name" HeaderText="F_name" ReadOnly="True" SortExpression="PID" />
                                   <asp:BoundField DataField="CNIC" HeaderText="NIC" ReadOnly="True" SortExpression="PID" />
                                   <asp:BoundField DataField="Designation" HeaderText="Designation" ReadOnly="True" SortExpression="PID" />
                                   <asp:BoundField DataField="BPS" HeaderText="BPS" ReadOnly="True" SortExpression="PID" />
                                                  <asp:BoundField DataField="Contact_no" HeaderText="Contact" ReadOnly="True" SortExpression="PID" />
                                                  <asp:BoundField DataField="School" HeaderText="School" ReadOnly="True" SortExpression="PID" />
                                                  <asp:BoundField DataField="UC" HeaderText="UC" ReadOnly="True" SortExpression="PID" />
                                                  <asp:BoundField DataField="Latitude" HeaderText="Latitude" ReadOnly="True" SortExpression="PID" />
                                        
                                                  <asp:BoundField DataField="Longititude" HeaderText="Longitude" ReadOnly="True" SortExpression="PID" />

                           </Columns>
                        
           </asp:GridView>
               
      <div class="shadow_bg">
                	<img src="img/slider-shadow.png" alt="" />
                </div>
             
    </section>
    <!-- Services Section End -->

    <!-- Footer Section Begin -->
    
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/main.js"></script>


</div>
        </form>
</body>

</html>

