<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ani.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CSS Transition</title>
</head>
    <%--여기서 스타일 지정하면--%> 
    <style>
        .box {
            width:100px;
            height: 100px;
            background: coral;
            transition :
                transform 1s cubic-bezier(0.38,-0.57,0.63,1.54)
         /*   , background 2s 1s linear;*/
         
        }

            /*.box:hover {
                transform: scale(2)
            }*/

        .box-action {
            transform: translateX(300px);
            background: blue;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <%--클래스로 선언한 부분의 디자인이 바뀐다.--%>
            <div class="box"></div>
            <p class="message"></p>

            <script>             
                const box = document.querySelector('.box');
                const message = document.querySelector('.message')

                let isTransitionRunning = false;

                box.addEventListener('click', () => {
                    if (!isTransitionRunning) {
                        box.classList.toggle('box-action');
                    }
                    isTransitionRunning = true;
                });

                box.addEventListener('transitionstart', (e) => {
                    console.log('${e.propertyName} START');
                    message.innerText = 'START';
                });

                box.addEventListener('transitionend', (e) => {
                    console.log('${e.propertyName} END');
                    message.innerText = 'END';
                    isTransitionRunning = false;
                });

                box.addEventListener('transitionrun', (e) => { console.log('${e.propertyName} RUN'); });

                box.addEventListener('transitioncancel', (e) => { console.log('${e.propertyName} CANCEL'); });
            </script>
        </div>
    </form>
</body>
</html>
