<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DiscountApp.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    body {
        margin: 0 auto;
        background-color: #3D3D3D;
        font-family: Arial, Helvetica, sans-serif;
    }
    header{
        display:flex;
        justify-content:center;
        align-items:center;
        color:#E7E7E7;
    }
    .container {
        height:600px;
        
        background-color: white;
    }
    .foods {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-template-rows: repeat(3, 1fr);
        gap: 20px;
        padding: 20px;
    }
    .card {
     background-color:#CFCFCF;   
    }
</style>
<body>
    <form id="form1" runat="server">
    <header>
       <h1>Discount App</h1>
    </header>

    <main>
       <div class="container">
           <div class="foods">
            <div class="card" id="card1">
                <p class="food">Pork Adobo</p>
                <p class="price">₱280.00</p>
                <asp:Button ID="buyBtn1" runat="server" Text="Buy" OnClick="buyBtn1_Click" />
            </div>
           <div class="card" id="card2">
               <p class="food">Sinigang na Baboy</p>
                <p class="price">₱350.00</p>
                <asp:Button ID="buyBtn2" runat="server" Text="Buy" OnClick="buyBtn2_Click" />
               
           </div>
           <div class="card" id="card3">
                <p class="food">Tapsilog</p>
                <p class="price">₱80.00</p>
                <asp:Button ID="buyBtn3" runat="server" Text="Buy" OnClick="buyBtn3_Click" />
           </div>
            <div class="card" id="card4">
                <p class="food">Pork Sisig</p>
                <p class="price">₱150.00</p>
                <asp:Button ID="buyBtn4" runat="server" Text="Buy" OnClick="buyBtn4_Click"/>
               
            </div>
             <div class="card" id="card5">
                <p class="food">Lechon Kawali</p>
                <p class="price">₱200.00</p>
                <asp:Button ID="buyBtn5" runat="server" Text="Buy" OnClick="buyBtn5_Click"/>
                 
            </div>
             <div class="card" id="card6">
                <p class="food">Pork Binagoongan</p>
                <p class="price">₱300.00</p>
                 <asp:Button ID="buyBtn6" runat="server" Text="Buy" OnClick="buyBtn6_Click"/>
            </div>
            </div>
           <div class="total-container">
               <span>Total:</span> 
               <asp:TextBox ID="noDiscountPrice" runat="server" Text="No Discount Price:"></asp:TextBox>
               <br />
               <br />
               <asp:Label ID="discountedPriceTxt" runat="server" Text="Discounted Price:"></asp:Label>
               <asp:TextBox ID="totalPrice" runat="server" ReadOnly="true"></asp:TextBox>
           </div>
            </div> 

    </main>
        
    </form>
</body>
</html>
