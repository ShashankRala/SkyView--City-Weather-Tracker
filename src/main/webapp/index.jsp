<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SkyView: City Weather Tracker</title>
    <link rel="stylesheet" href="NewFile.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>

<body>

    <!-- Background Video -->
    <video autoplay muted loop id="backgroundVideo">
        <source src="images/skyview.mp4" type="video/mp4">
 
    </video>

     <div class="mainContainer">
     
     <form action="MyServlet" method="post" class="searchInput">
            <input type="text" placeholder="Enter City Name" id="searchInput"  name="city"/>
            <button id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
            
         
            
            
      </form>
        <div class="weatherDetails">
            <div class="weatherIcon">
                <img src="" alt="Clouds" id="weather-icon">
                <h2>${temperature} °C</h2>
                 <input type="hidden" id="wc" value="${weatherCondition}"> </input>
            </div>
            
            <div class="cityDetails">        
                <div class="desc"><strong>${city}</strong></div>
                <div class="date">${date}</div>
            </div>
            <div class="windDetails">
            	<div class="humidityBox">
            	<img src="./images/thermometer.png" alt="Humidity">
                <div class="humidity">
                   <span>Humidity </span>
                   <h2>${humidity}% </h2>
                </div>
               </div> 
               
                <div class="windSpeed">
                    <img src="./images/wind.png" alt="windspeed">
                    <div class="wind">
                    <span>Wind Speed</span>
                    <h2> ${windSpeed} km/h</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

   <script>
    var weatherIcon = document.getElementById("weather-icon");
    var val = '<%= request.getAttribute("weatherCondition") %>';
    switch (val) {
        case 'Clouds':
            weatherIcon.src = "./images/Clouds.png";
            break;
        case 'Clear':
            weatherIcon.src = "./images/sun.png";
            break;
        case 'Rain':
            weatherIcon.src = "./images/rain.png";
            break;
        case 'Mist':
            weatherIcon.src = "./images/mist.png";
            break;
        case 'Snow':
            weatherIcon.src = "./images/snow.png";
            break;
        case 'Haze':
            weatherIcon.src = "./images/haze.png";
            break;
    }
</script>

</body>

</html>