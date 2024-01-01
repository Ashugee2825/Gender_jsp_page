<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="gender.*" %>
<%@ page import="java.util.*" %>  

<!DOCTYPE html>
<html>
<head>
    <style>
        .form-submit-button {
            background: #0066A2;
            color: white;
            border-style: outset;
            border-color: #0066A2;
            height: 30px;
            width: 70px;
            font: bold 17px arial, sans-serif;
            text-shadow: none;
        }
    </style>
    <!--  Begin: Date Picker -->
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
    <!-- End: Date Picker -->
    <style>
        div#banner {
            background-color: white;
            height: 120px;
        }
        div#main {
            border: solid 2px blue;
            margin-left: 100px;
            min-height: 300px;
            background-color: yellow;
        }
        div#leftMenu {
            background-color: green;
            width: 80px;
            position: relative;
            top: 0px;
            min-height: 300px;
        }
        div#topMenu {
            border: 0px solid red;
            background-color: orange;
        }
        div#main {
            border: 2px solid red;
            background-color: red;
        }
        div#content {
            border: 2px solid red;
            background-color: red;
        }
        .mycontainer {
            background-color: white;
            display: flex;
        }
        .fixed-left-menu {
            background-color: white;
            width: 200px;
        }
        .flex-item {
            background-color: white;
            flex-grow: 1;
        }
    </style>
    <script >
              function printPage(){
    	            window.print();
    }
    </script>
</head>
<body>
    <div id="outer">
        <!-- begin: banner -->
        <div id="banner" align="center">
            <img alt="nitttr-bpl" src="banner.jpg" width="70%" height="100%">
        </div>
        <!-- begin: banner -->
        <br/>
        <!--  begin: top menu -->
        <%-- <div id="topMenu" class="topMenu">
        <%@include file="topMenu.jsp" %>
        </div> --%>
        <!--  end: top menu -->
        <!--  begin: container -->
        <div class="mycontainer">
            
            <!-- begin: side navigation -->
            <%-- <%@include file="leftMenu.jsp" %> --%>    
            <!-- end: side navigation -->
            
            <!--  begin: main content -->
            <div class="flex-item" align="center">
            
                <h1>Main Content</h1>
                
                <!--  Begin: Dynamic Codes -->
                
                <%
                Gender gender = (Gender)request.getAttribute("gender");
                %>
                <form action="" id="myform"  name="myform" accept-charset="UTF-8" >
                    <table cellspacing="10px">
                        <tr>
                            <td align="right">ID:</td>
                            <td><%=gender.getId()%></td>
                        </tr>
                        <tr>
                            <td align="right">Code:</td>
                            <td><%=gender.getValue()%></td>
                        </tr>
                        <tr>
                            <td align="right">Value:</td>
                            <td><%=gender.getValue()%></td>
                        </tr>
                    </table>
                    <input type="hidden" name="page" value="viewGender">
                    <input type="hidden" name="id" value="<%=gender.getId()%>">
                </form>
                
                <button type="button" onclick="window.location.href='genderDashboard.jsp'" class="form-submit-button">Close</button>
                
                <!-- Print Button -->
                <button type="Submit" name="opr" value="print" class="form-submit-button" onclick="printPage()">Print</button>
                
                <!--  End: Dynamic Codes -->
            </div>
            <!--  end: main content -->
        </div>
        <!--  end: container -->
    </div>
    
<%-- <script>
    function printPage() {
        var id = '<%=gender.getId()%>';
        var code = '<%=gender.getCode()%>';
        var value = '<%=gender.getValue()%>';
        
        // Redirect to print page with parameters
        window.location.href = 'printGender.jsp?id=' + id + '&code=' + code + '&value=' + value;
    }
</script> --%>
    
    
</body>
</html>
