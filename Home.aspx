<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Estate_Ass.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bilbo Baggins Estates</title>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .subheading {
            font-size: 1.75em;
            color: darkgreen;
            font-family: 'Arial', sans-serif;
            margin-bottom: 10px;
        }
        .link {
            font-size: 1.25em;
            color: #006400;
            text-decoration: none;
            margin-right: 20px;
        }
        .link:hover {
            text-decoration: underline;
        }
        .panel {
            font-size: 2em;
            font-family: Calibri, sans-serif;
            font-weight: bold;
            text-decoration: underline;
            font-style: italic;
            color: darkblue;
            margin-bottom: 20px;
        }
        .content {
            margin-bottom: 20px;
        }
        .image {
            border: 1px solid #ccc;
            margin-right: 20px;
        }
        .text-content {
            font-size: 1.25em;
            color: #333;
            line-height: 1.6;
       }
        .section-heading {
            font-size: 1.5em;
            color: darkgreen;
            margin-top: 20px;
            margin-bottom: 10px;
        }
        .watermark {
            font-size: 0.75em;
            color: #888;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel">BILBO BAGGINS ESTATES</div>
        <div class="content">
            <a class="link" href="Query%202.aspx">Search Town</a>
            <a class="link" href="Query%203.aspx">Search List</a>
            <a class="link" href="Query%202%20(a).aspx">Search By Price</a>
            <a class="link" href="Query%205.aspx">Insert/Update Data</a>
            <a class="link" href="Query%202%20(b).aspx">Search Bedroom Number</a>
            <a class="link" href="Query%204.aspx">More Property Details</a>
            <a class="link" href="Housetesting.aspx">View All Properties</a>
            <a class="link" href="Contact%20Form.aspx">Contact Us</a>
        </div>
        <div class="content">
            <img alt="" class="image" src="image/t13678.png" width="476" height="317" />
            <img alt="" class="image" src="image/t13679.png" width="612" height="317" />
        </div>
        <div class="content text-content">
            <p class="subheading">Bilbo Baggins Estate Agency: Where Dreams Find Their Homes</p>
            <p>Welcome to Bilbo Baggins Estate Agency, where we turn your homeownership dreams into reality. Nestled in the heart of the Shire, our agency prides itself on offering a unique blend of rustic charm and modern convenience. Whether you're searching for a small house, a spacious detached home, or a cozy flat, our dedicated team of experienced agents is here to guide you every step of the way. With a deep understanding of the local market and a commitment to exceptional service, we ensure that your home-buying journey is as smooth and enjoyable as possible. Explore our wide range of properties, tailored to suit every taste and budget, and discover why Bilbo Baggins Estate Agency is the trusted name in real estate. Welcome home.</p>
            <p class="section-heading">About Us</p>
            <p>At Bilbo Baggins Estate Agency, we believe that finding a home is more than just a transaction; it’s about finding a place where memories are made and dreams are realized. Established in 2024, our agency has quickly become a trusted name in the real estate market, known for our personalized service and in-depth knowledge of the local areas we serve.</p>
        </div>
        <div class="watermark">Website created by Ashher Ali</div>
    </form>
</body>
</html>
