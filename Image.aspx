<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Image.aspx.cs" Inherits="ani.Image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .hand {
            position: absolute;
            width:200px;
            left:400px;
            top:90px;
        }

        .key{
            position: absolute;
            left: 100px;
            top: 50px;
            width: 150px;
            transition: 1s;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img class="hand" src="images/hand.svg.svg" alt="Hand" />
            <%--<img class="key" src="images/key.svg.svg" alt="Key" />--%>
            <object class="key" data="images/key.svg.svg" type="image/svg+xml"></object>
        </div>      
    </form>


      <script>
          const hand = document.querySelector('.hand');
          const key = document.querySelector('.key');
          let iskeyInHand = false;

          hand.addEventListener('click', () => {
              const handRect = hand.getBoundingClientRect();
              console.log(handRect);
              const leftPosition = handRect.left;
              const topPosition = handRect.top;
              
              key.style.transform = /*'translate(${leftPosition}px , ${topPosition}px)'*/ 'scale(0.5)';
          });

          key.addEventListener('end', () => {
              iskeyInHand = !iskeyInHand;
          })
      </script>
</body>
</html>
