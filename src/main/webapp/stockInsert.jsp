<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="Header and Footer/headerfooter.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>AddStock</title>

<style>

body {
  background-image: url('images/rty.jpg');
  background-repeat: no-repeat, repeat;
  font-family: 'Arial', sans-serif;
  text-align:center
}
h1 {
  margin: auto;
  width: 75%;
  border-radius: 20px;
  padding: 10px;
  color: white;
 
}
h3 {
  margin: auto;
  width: 75%;
  border-radius: 20px;
  padding: 10px;
  color: white;
 
}
.mydiv {
  background-color: rgba(0, 0, 0, 0.411); 
  color: black;
  margin: auto;
  width: 40%;
  border-radius: 10px;
  padding: 10px;
  text-align:center
}
.submit
{
    background-color: dodgerblue;
	border-radius: 20px;
	border: 1px solid var(--blue);
	color: var(--white);
	cursor: pointer;
	font-size: 0.8rem;
	font-weight: bold;
	letter-spacing: 0.1rem;
	padding: 0.9rem 4rem;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}
.description
{
	color: black;
    font-size: 16px;
    height: 30px;
    width: 50%;
    border-radius: 8px;
    box-shadow: 2px 2px 8px;
}
.description1
{
	color: black;
    font-size: 16px;
    height: 70px;
    width: 50%;
    border-radius: 8px;
    box-shadow: 2px 2px 8px;
}
</style>

</head>
<body>

<div class="miu1">
   
    <div class="miu2">
        <a href="#"><img src="Header and Footer/images/logo2.png" height="100px" width="100px" class="logo"></a>
        <a href="#"><div class="navBar">Home</div></a>
        <a href="#"><div class="navBar">About Us</div></a>
        <a href="#"><div class="navBar">Spare parts</div></a>
        <a href="#"><div class="navBar">Customer reviews</div></a>
        <a href="#"><div class="navBar">Sign up</div></a>
        <a href="#"><div class="navBar">Sign in</div></a>
    </div>

</div><br><br><br><br><br><br>

	<script>
		function myfun(){
			var a = document.getElementById("itemCode").value;
			var b = document.getElementById("name").value;
			var c = document.getElementById("quantity").value;
			var e = document.getElementById("price").value;
			if(a==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Code ";
				return false;
			}
			if(a.length>5){
				document.getElementById("massages").innerHTML="**Maximum Five characters only!";
				return false;
			}
			if(b==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Name";
				return false;
			}
			if(c==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Quantity ";
				return false;
			}
			if(e==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Price ";
				return false;
			}	
		}
	</script>
	
	<div class="miu3">	
		
		<form action="insert" onsubmit="return myfun()" class="regform" id="regform" method="post" >
	
		<div class="mydiv"><br><br>
		<br><br><h1>Enter Prescription Details</h1><br>
		
		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAABmJLR0QA/wD/AP+gvaeTAAADuklEQVR4nO2cT0gUURzHf78Z2xn/pxgZKR3EClIS7NDBgsBAzZPZIfFSlnVZSQkyovASFoSIhkQhXuwiRB0UMyQIO3RU6NK1JRKSSErd2XXmdVhXdGntjb/5t/X7HOe9N+/Hh/fed2YOgxAwwuEhzcizrgGINgCo2rj8ERGeh36qT4eHuww/60sF/S5gK9fvDBy0LJwCgONpuswrimh+cr/ni5d17YTidwFJwuEhbYu8iBDYum7GCtbNWIEQogUEfAKAGsvCyXB4SPO53E2y/C4gSWLbJuSZmqgZ7ev+vqX5ZUffwDvVwAUAqDFyrasA8NiXQlOQ3sJzI21FqhIfW7dEA4CwvQLGI3VS/YTA1mcPbrz4U1tn7+AFQDEhc5/28vc2qkuACkZVxNfGavzSme5XP2TGSK9ANSs+ujc/t7G8dF9IUe0fneMRuX6mZbxJ16bpyoxhmFL3qa2qkJtwC5Yp9M+L35qWxcooAJyXGSN9BpqmaCw7ULIreU5hrK26OrmiIpSXloRMIZqkx8h2FELoquJ+5qjKnvq0NaCets2x+VUFhBC6bP/ApHASBOzv6BsoTr3e0TdQjCD6/ahpJwKTwpsgHFENXOjsHezRdGUGACAatc5iVPQDQqXf5aUSPIEJygDFRDIwMFCP+9sJ3BbONBxbgTmnHu7Yrr8dgagRc2q6HcnWtb/Wszp3y5G5PFuBRyvKvZoKjlUe8mwuzwS2NNRBTrb7r7C5OTq0Np12fZ4kngncX1IE97raoba6EnQt5Pj9dS0EJ6oPw91wOxQV5jl+/3R4msJFhfnQefGcl1O6DqcwERZIhAUSYYFEWCARFkiEBRLx7WvMh/rt30ZPzs5Kjbv9aNTWPP03O2z1t4uvn7NqmpsBAGB+clJ6jNtC7MJbmAgLJMICiQT1k35a/rsQSU1bu/1S0zloIeLJCkymrd12O+nsF3wGEvFkBaZbSbt5DgwargtM94bBbyI+EbQQ4TOQCAskwgKJ+HoG7iZ9OUQ2kE3dVDhE/jFYIBEWSMT1M9Duoe80GR8iQTv0nYa3MBEWSIQFEuEQIcIhQoS3MBEWSIQFEuEQIcIhQoS3MBEWSIQFEuEQIcIhQoS3MBEWSIQFEmGBRFggERZIhAUScew50Kn/sGQavAKJsEAiLJAICyQiLRARo6ZluVlLIDBNCxAxKtvfjsDpyNelmGWK3VWWAVimgMjiUkxRcEp2jPRjTHwtfnkZV8bml381CEv+H6OZBCoYRcDp+Fr8it+1MAzDZAK/AQkoCoftqOhaAAAAAElFTkSuQmCC">
		
		<br/><br/><br/>
			<input type="text" name="itemCode"  id="itemCode" placeholder="Prescription ID" class="description"  ><br><br>
		 	<input type="text" name="name" id="name" placeholder="Patient Name" class="description"  ><br><br>
		 	<input type="text" name="quantity"  id="quantity"  placeholder="Patient Address"  class="description"  ><br><br>
		 	<input type= "text" name="description"    placeholder="Description"  class="description1"  ><br><br><br>
		 	
  			<h3><label for="img">Upload your pricsription image :</label><br/>
  			<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAABmJLR0QA/wD/AP+gvaeTAAACi0lEQVRoge2au2sUURSHfxMfUUg0KArxQRoVhYBaWakoCBYiKRQEGx8QLBTyB1hY2mttrGz8A7SwEAsfxFIEA0aIZBEU1MIXrvtZxGu1OvfcuTN3ZpkPtjvc8/s4s4+zM1JLS0uTyVIH8AUYkXRA0qSknZJ2/HltkDQq6Z2k6SzL7iULWRRgP3ANmAO65LOYd+bKKoJbADZKOidpWtKuxHHKAxgHbgLfPCbZd7rA8dQeuQAjwHXgi0HuPTALnAf2AWtTe3gBHAUWDKJzwBlgdersJoBVwA2g5yn6FjgNNOZb5S/AGPDAMNU7wFjq3EEAE8BLT9EecDV15mCAzcC8p2wXuJA6czDAKPDccBnPpM4cDDAE3DfIzqbOXAhgxiD7AhhOnTkYYDfw1VO2BxxJnTkYYAXwzDDdW6kzFwK4aJD9AWxJnTkYYA2wZBBu/AfVJYMswN7UmYMBMuCVQfZRlfmGSjjzsGyL+90SMlQHcNsw3V/A1tSZg2F57ftoEH5cdcbYl/QhSZZV7mHk/rnEFj5mrH8auX8usYUPGmqR9CRy/+oAhoHvhvfvQoqcMSe8R5Jl05mP2NubmMKTxvrXEXt7E1PYepeg8cLbjfVvIvb2JqbwhLH+Q8Te3sQU3mSs/xSxtzcxhdcb6z9H7O1NTOF1xvp6Thg4CXTyfkUoYMI5R3aAE2Fa/yb35hTQkTQeu7EnS1mWbYt5YBl/ANQaH+HLkrplB+lDV9KVBH0l4BTw07AYFKULnE0im0A6vayjAun6yDpKlK6frKME6frKOiJK11/WEUG6ObKOAtLNk3UESDdX1mGQbr6sw0N6cGQd/5EePFlHH+nBlXUAUyw/FLoITKXO09LSMhj8BvxPLo4lM1R9AAAAAElFTkSuQmCC">
  			<br/>
  			<input type="file" id="img" name="img" accept="image/*"></h3><br/><br/>
 

		 	
		 	
		 	<input type="submit" class="submit" name="submit" value="Add Details"><br><br>
		 	<h4><span style="color:red;  letter-spacing: 1px; text-shadow: 1px 1px 1px black; " id="massages" > </span><br><br></h4><br>  
		</div>
	</form>
</div><br><br><br><br><br><br>
	
	<!--------------------------------------------------------------------------------------------------------->
<div class="miu4">
    <div class="miu5">
            <div class="footer"> 
                <div class="icons"><a href="#"><img src="Header and Footer/images/logo2.png" height="230px" width="230px" class="logo1"></a></div>
            </div>
            <div class="footer">
                <div class="footerA">Quick links</div>
                <a href="#"><div class="footerB">Home</div></a>
                <a href="#"><div class="footerB">About Us</div></a>
                <a href="#"><div class="footerB">Spare parts</div></a>
                <a href="#"><div class="footerB">Customer reviews</div></a>  
            </div>
            <div class="footer">
                <div class="footerA">Contact Us</div>
                <div class="footerC">Hotline: O11 2 705 920</div>
                <div class="footerC">Tele: O77 327 8451</div>
                <a href="#"><div class="footerC">Email: automartspareparts<br>@gmail.com</div></a>
                <div class="footerC">Address: No: 35,Galle road,<br>Colombo.</div>
            </div>
            <div class="footer">
                <div class="footerA">Follow Us</div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/whatsapp.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/facebook (1).png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/instagram.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/twitter.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/linkedin.png" width="40px" height="40px"></a></div>
            </div>  
     </div>
   <div class="bottom"><p>Copyright @ 2022 - 202  
<!--------------------------------------------------------------------------------------------------------->
</body>
</html>