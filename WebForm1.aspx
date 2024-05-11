
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Roulllete3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Roullete Game</title>
  <script>
      document.addEventListener("DOMContentLoaded", function () {
          const startingMinutes = 0.15; // Change this to 1 for 1 minute countdown
          let time = startingMinutes * 60;

          const countdownEl = document.getElementById('countdown');
          const wheelEl = document.querySelector('.wheel');
          setInterval(updateCountdown, 1000);

          function updateCountdown() {
              const minutes = Math.floor(time / 60);
              let seconds = time % 60;

              countdownEl.innerHTML = `${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
              time--;

              if (time < 0) {
                  clearInterval(updateCountdown);
                  countdownEl.innerHTML = "Time's up!";
                  wheelEl.classList.add('rotate-wheel'); // Start spinning the wheel
              }
          }
      });


  //selected button
      function selectButton(buttonId) {
          var selectedButton = document.getElementById('<%= SelectedButton.ClientID %>');
            selectedButton.value = buttonId;
            return true; // Continue with postback
        }

        window.onload = function () {
            var selectedButton = document.getElementById('<%= SelectedButton.ClientID %>').value;
            if (selectedButton !== '') {
                document.getElementById(selectedButton).classList.add('selected');
            }
      };

      //bet selected 
      function displayImage() {
          var img = document.getElementById('myImage');
          img.src = 'Images/Images-1/Bet1.png';
          img.style.display = 'block';
      }
     
  </script>







   <style>


   

#Label1 {
    position: absolute;
    top: 15.5vh; /* Adjust based on your layout */
    left: 17vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
    width:6vw;
    height:3vh;
}


   #Label2 {
    position: absolute;
    top: 16vh; /* Adjust based on your layout */
    right: 6vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
    width: 5vw; /* Adjust based on your layout */
    height:3vh;
}

   
#countdown {
 position: absolute;
    top: 35vh; /* Adjust based on your layout */
    left: 14.7vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
     width: 5vw; /* Adjust width as needed */
    height: 3vh; /* Adjust height as needed */
   
}

   


                                    
      #Label4 {
    position: absolute;
    top: 35.5vh; /* Adjust based on your layout */
    right:4.5vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
    width: 16vw; /* Adjust based on your layout */
    height:3vh;
}
                                              
      #Label5 {
    position: absolute;
    top: 47vh; /* Adjust based on your layout */
    right: 15vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
   height:2vh;
    width: 5vw; /* Adjust based on your layout */
}
              #Label6 {
     position: absolute;
    top: 47vh; /* Adjust based on your layout */
    right:3.8vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
   height:2vh;
    width: 6.5vw; /* Adjust based on your layout */
}

              #Label7 {
    position: absolute;
    top: 51.5vh; /* Adjust based on your layout */
    right:6vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
   height:2vh;
    width: 11.5vw; /* Adjust based on your layout */
}
                            #Label8 {
      position: absolute;
    top: 97vh; /* Adjust based on your layout */
    right:4vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
   height:2vh;
    width: 6vw; /* Adjust based on your layout */
}
                              #Label9 {
     position: absolute;
    top: 97.3vh; /* Adjust based on your layout */
    left:5vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
   height:2vh;
    width: 6.1vw; /* Adjust based on your layout */
}

                                                   #Label10 {
    position: absolute;
    top: 95vh; /* Adjust based on your layout */
    left: 43.5vw; /* Adjust based on your layout */
    background-color: black;
    color: white;
    padding: 2px 4px; /* Adjust padding as needed */
    border-radius: 5px; 
    height:3vh;/* Optional: Adds rounded corners */
    width: 14.3vw; /* Adjust based on your layout */
}


        #ImageButton1{
             position: absolute;
    top: 41vh;
    left: -0.5vw;
      width:8vw ; /* Adjust this percentage as needed */
    height:8.5vh;
    
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
    
                                                   }
        #ImageButton1:hover {
         transform: scale(1.1); /* Increase size on hover */
    box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
}
        
        #ImageButton2{
                     position: absolute;
    top: 41vh;
    left: 7.1vw;
      width:7vw ; /* Adjust this percentage as needed */
    height:7vh;
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
    
                                                   }

           #ImageButton2:hover {
              transform: scale(1.1); /* Increase size on hover */
    box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
           }

            #ImageButton3{
                           position: absolute;
    top: 41vh;
    left: 14vw;
      width:7vw ; /* Adjust this percentage as needed */
    height:7vh;
    
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
    
                                                   }
               #ImageButton3:hover {
                   transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
               
}


                   #ImageButton4{
                      position: absolute;
    top: 41vh;
    left: 21vw;
      width:7vw ; /* Adjust this percentage as needed */
    height:7vh;
    
     border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
}
                                  #ImageButton4:hover {
                   transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
               
}


                            #ImageButton5{
                          position: absolute;
    top: 48vh;
    left: 0vw;
      width:7vw ; /* Adjust this percentage as needed */
    height:7vh;
    
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
              }
                             
                                          #ImageButton5:hover {
    transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
}
                               #ImageButton6{
       position: absolute;
    top: 48vh;
    left: 7.1vw;
      width:7vw ; /* Adjust this percentage as needed */
    height:7vh;
    
   border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
    
                                                   }
                                             #ImageButton6:hover {
     transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
}

                                     #ImageButton7{
            position: absolute;
    top: 48vh;
    left: 14.5vw;
      width:6vw ; /* Adjust this percentage as needed */
    height:7vh;
    
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
                                                   }
                                                   #ImageButton7:hover {
    transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
}
                                        #ImageButton8{
              position: absolute;
    top: 48vh;
    left: 21vw;
      width:6vw ; /* Adjust this percentage as needed */
    height:7vh;
    
    border-radius: 70%; /* Make the button circular */
    transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease; /* Include border-color in the transition */
                                                   }
                                                      #ImageButton8:hover {
    transform: scale(1.1); /* Increase size on hover */
                   box-shadow: 0 0 30px 10px green; /* Dark green glow effect */
}



                                                                           #ImageButton9{
              position: absolute; /* This positions the button relative to its containing element */
    top: 57vh; 
    left: 1.5vw; 
    width:6vw;
    height:10vh;
    transition: transform 0.3s ease;
    
    
                                                   }

                                                                          


                                                                           
                                                                           #ImageButton10{
              position: absolute; /* This positions the button relative to its containing element */
    top: 68.5vh; 
    left: 1.5vw; 
    width:6vw;
    height:10vh;
     transition: transform 0.3s ease;
                                                   }



                                      #ImageButton11{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 8.5vw; 
       width:6vw;
    height:7vh;
   
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton12{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 8.5vw; 
  width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton13{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 8.5vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           
                                      #ImageButton14{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 15.5vw; 
  width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton15{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 15.5vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton16{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 15.5vw; 
 width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                             #ImageButton17{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 22.4vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton18{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 22.4vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton19{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 22.4vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                                         #ImageButton20{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 30vw; 
 width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton21{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 30vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton22{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 30vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                                   #ImageButton23{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 37vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton24{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 37vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton25{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 37vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                             #ImageButton26{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 44vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton27{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 44vw; 
  width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton28{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 44vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                                #ImageButton29{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 51vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton30{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 51vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton31{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 51vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                              #ImageButton32{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 58vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton33{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 58vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton34{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 58vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                             #ImageButton35{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 65vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton36{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 65vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton37{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 65vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }
                                             #ImageButton38{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 72vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton39{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 72vw; 
    width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton40{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 72vw; 
   width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                             #ImageButton41{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 79vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton42{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 79vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton43{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 79vw; 
  width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }
                                             #ImageButton44{
              position: absolute; /* This positions the button relative to its containing element */
    top: 71.5vh; 
    left: 86vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                         #ImageButton45{
              position: absolute; /* This positions the button relative to its containing element */
    top: 63.5vh; 
    left: 86vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           #ImageButton46{
              position: absolute; /* This positions the button relative to its containing element */
    top: 56vh; 
    left: 86vw; 
     width:6vw;
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                           
                                           #ImageButton47{
              position: absolute; /* This positions the button relative to its containing element */
    top: 79vh; 
    left: 8.5vw; 
   width:27.5vw;
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                             #ImageButton48{
              position: absolute; /* This positions the button relative to its containing element */
    top: 79vh; 
    left: 36.5vw; 
width:27.5vw;
    height:5vh;
     transition: transform 0.3s ease;
                                                   }

                                               #ImageButton49{
              position: absolute; /* This positions the button relative to its containing element */
 top: 79vh; 
    left: 64.5vw; 
width:27.5vw;
    height:5vh;
     transition: transform 0.3s ease;
                                                   }

                                                #ImageButton50{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left: 11.7vw;
    width:15vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                #ImageButton51{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left: 28vw;
    width:10vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                 #ImageButton52{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left:39vw;
      width:10vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                 #ImageButton53{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left:51vw;
     width:10vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                  #ImageButton54{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left:62vw;
     width:10vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                   #ImageButton55{
              position: absolute; /* This positions the button relative to its containing element */
    top:85.5vh;
    left:74vw;
    width:15vw;
    
    height:5vh;
     transition: transform 0.3s ease;
                                                   }
                                                    #ImageButton56{
                                                          position: absolute;
                 top:56vh;
    right:1vw;
     width:6.5vw;
    
    height:7vh;
     transition: transform 0.3s ease;
                                                   }
                                                     #ImageButton57{
                                                           position: absolute;
                 top:64vh;
    right:1vw;
    width:6.5vw;
    
    height:7vh;
     transition: transform 0.3s ease;
                                                   }
                                                            #ImageButton58{
                                                           position: absolute;
                 top:71.5vh;
    right:1vw;
    width:6.5vw;
    
    height:7vh;
     transition: transform 0.3s ease;
                                                   }

                                                     #Label11{
                                                         top:500px;
                                                         left:10px;
           margin-top: 0px;
       }





                    .title{
                                            position:absolute;
                                            top:0vh;
                                            left:32%;
                                            width:36vw;
                                            height:10vh;
                                             border-radius: 20px;
                                          
                                        }
                      

             .diamond{
                                            position:absolute;
                                            top:28vh;
                                            left:47.6vw;
                                            width:6vw;
                                        }


 body { 
    margin: 0;
    padding: 0;
    background-image: url('Images/BackgroundImage1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
      background-attachment: fixed; /*Optional: keeps the background image fixed while scrolling */
  background-size: 100% 100%;
  overflow: hidden; /* Prevents the scrollbar */
}

.content {
    text-align: center;
    padding: 50px;
    color: white;
 
}




  .wheel {
    position: absolute;
    top: 15vh;
    left: 41vw;
    width: 20vw;
    height:40vh;
   
}


       .rotate-wheel {
        animation: rotateAnimation 10s linear forwards;
    }

@keyframes rotateAnimation {
    from {
        transform: rotate(0deg); /* Start spinning from 0 degrees */
    }
    to {
        transform: rotate(1800deg); /* Spin to 720 degrees (2 full rotations) */
    }
}
/* Adjust the top/left/right position of the wheel */
@media (min-width: 768px) {
    .wheel-container {
        top: 20%;
        left: 20%;
    }
}

/* Define the spin animation */
@keyframes spin {
    from {
        transform: rotate(0deg);
    }
    to {
        transform: rotate(180deg);
    }
}


       .selected {
            border: 2px solid green;
        }

       

         #imageContainer {
            position: relative;
            width: 100px; /* Adjust the width to match your button */
            height: 100px; /* Adjust the height to match your button */
        }

        #myImage {
            position: absolute;
           top: 59vh; 
            left: 3.5vw; 
            width: 30px;
            height: 30px;
            display: none;
        }

      
    
     
   </style>
             
</head>
<body >
 
    <form id="form1" runat="server">
    <!-- Your other controls here -->

 <div class="content">
        <asp:Label ID="Label1" runat="server" Text="7.25"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="0000"></asp:Label>
      <asp:Label ID="countdown" runat="server" Text="1:00"></asp:Label>
     
 <asp:Label ID="Label4" runat="server" Text="30  30  12  5  22"></asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Take"></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="Bet OK"></asp:Label>
      <asp:Label ID="Label7" runat="server" Text="Cancel Bet"></asp:Label>
      <asp:Label ID="Label8" runat="server" Text="Exit"></asp:Label>
    <asp:Label ID="Label9" runat="server" Text="0000"></asp:Label>

         <asp:Label ID="Label10" runat="server" Text="Bet Time Over"></asp:Label>


   
    
       <asp:ImageButton ID="ImageButton1" runat="server" src="Images/Images-1/Coin1(1).png" OnClientClick="return selectButton('ImageButton1') "  />
       <asp:HiddenField ID="SelectedButton" runat="server" />
       <asp:ImageButton ID="ImageButton2" runat="server" src="Images/Images-1/Coin5(1).png" OnClientClick="return selectButton('ImageButton2')" />
       <asp:HiddenField ID="HiddenField1" runat="server" />
     <asp:ImageButton ID="ImageButton3" runat="server" src="Images/Images-1/Coin10(1).png" OnClientClick="return selectButton('ImageButton3')" />
       <asp:HiddenField ID="HiddenField2" runat="server" />
    <asp:ImageButton ID="ImageButton4" runat="server" src="Images/Images-1/Coin50(1).png" OnClientClick="return selectButton('ImageButton4')" />
       <asp:HiddenField ID="HiddenField3" runat="server" />
      <asp:ImageButton ID="ImageButton5" runat="server" src="Images/Images-1/Coin100(1).png" OnClientClick="return selectButton('ImageButton5')" />
       <asp:HiddenField ID="HiddenField4" runat="server" />
  <asp:ImageButton ID="ImageButton6" runat="server" src="Images/Images-1/Coin500(1).png" OnClientClick="return selectButton('ImageButton6')" />
       <asp:HiddenField ID="HiddenField5" runat="server" />
<asp:ImageButton ID="ImageButton7" runat="server" src="Images/Images-1/Coin1000(1).png" OnClientClick="return selectButton('ImageButton7')" />
       <asp:HiddenField ID="HiddenField6" runat="server" />
  <asp:ImageButton ID="ImageButton8" runat="server" src="Images/Images-1/Coin5000(1).png" OnClientClick="return selectButton('ImageButton8')" />
       <asp:HiddenField ID="HiddenField7" runat="server" />





         <asp:ImageButton ID="ImageButton9" runat="server" src="Images/Images-1/37.jpg"  OnClientClick="displayImage(); return false;" />
     <img id="myImage" src="Images/Images-1/Bet1.png" alt="Image" />
     <asp:ImageButton ID="ImageButton10" runat="server" src="Images/Images-1/0.jpg" OnClientClick="displayImage(); return false;" />
      <img id="myImage1" src="Images/Images-1/Bet1.png" alt="Image" />
     <asp:ImageButton ID="ImageButton11" runat="server" src="Images/Images-1/1.jpg" OnClientClick="return false" />
      <asp:ImageButton ID="ImageButton12" runat="server" src="Images/Images-1/2.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton13" runat="server" src="Images/Images-1/3.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton14" runat="server" src="Images/Images-1/4.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton15" runat="server" src="Images/Images-1/5.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton16" runat="server" src="Images/Images-1/6.jpg" OnClientClick="return false"/>

              <asp:ImageButton ID="ImageButton17" runat="server" src="Images/Images-1/7.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton18" runat="server" src="Images/Images-1/8.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton19" runat="server" src="Images/Images-1/9.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton20" runat="server" src="Images/Images-1/10.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton21" runat="server" src="Images/Images-1/11.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton22" runat="server" src="Images/Images-1/12.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton23" runat="server" src="Images/Images-1/13.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton24" runat="server" src="Images/Images-1/14.jpg" OnClientClick="return false"/>


                <asp:ImageButton ID="ImageButton25" runat="server" src="Images/Images-1/15.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton26" runat="server" src="Images/Images-1/16.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton27" runat="server" src="Images/Images-1/17.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton28" runat="server" src="Images/Images-1/18.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton29" runat="server" src="Images/Images-1/19.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton30" runat="server" src="Images/Images-1/20.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton31" runat="server" src="Images/Images-1/21.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton32" runat="server" src="Images/Images-1/22.jpg" OnClientClick="return false"/>

                   <asp:ImageButton ID="ImageButton33" runat="server" src="Images/Images-1/23.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton34" runat="server" src="Images/Images-1/24.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton35" runat="server" src="Images/Images-1/25.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton36" runat="server" src="Images/Images-1/26.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton37" runat="server" src="Images/Images-1/27.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton38" runat="server" src="Images/Images-1/28.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton39" runat="server" src="Images/Images-1/29.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton40" runat="server" src="Images/Images-1/30.jpg" OnClientClick="return false"/>

                        <asp:ImageButton ID="ImageButton41" runat="server" src="Images/Images-1/31.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton42" runat="server" src="Images/Images-1/32.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton43" runat="server" src="Images/Images-1/33.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton44" runat="server" src="Images/Images-1/34.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton45" runat="server" src="Images/Images-1/35.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton46" runat="server" src="Images/Images-1/36.jpg" OnClientClick="return false"/>
     
          <asp:ImageButton ID="ImageButton47" runat="server" src="Images/Images-1/1st12.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton48" runat="server" src="Images/Images-1/2nd12.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton49" runat="server" src="Images/Images-1/3rd12.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton50" runat="server" src="Images/Images-1/1-18.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton51" runat="server" src="Images/Images-1/even.jpg" OnClientClick="return false"/>

         <asp:ImageButton ID="ImageButton52" runat="server" src="Images/Images-1/red.jpg" OnClientClick="return false"/>
     <asp:ImageButton ID="ImageButton53" runat="server" src="Images/Images-1/black.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton54" runat="server" src="Images/Images-1/odd.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton55" runat="server" src="Images/Images-1/19-36.jpg" OnClientClick="return false"/>

        <asp:ImageButton ID="ImageButton56" runat="server" src="Images/Images-1/2to1.jpg" OnClientClick="return false"/>
      <asp:ImageButton ID="ImageButton57" runat="server" src="Images/Images-1/2to1.jpg" OnClientClick="return false"/>
        <asp:ImageButton ID="ImageButton58" runat="server" src="Images/Images-1/2to1.jpg" OnClientClick="return false"/>
 





   
<img src="Images/Images-1/1.gif" alt="Title GIF" class="title"/>
  
    <img src="Images/wheel_processed.jpg" alt="Spinning Wheel" class="wheel"/>
          <img src="Images/2.gif" alt="Diamond " class="diamond"/>

           
     
     
     
     
    

</div>
     
       
        
        </form>
    
    </body>
</html>