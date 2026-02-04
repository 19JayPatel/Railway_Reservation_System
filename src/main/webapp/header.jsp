<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
    <header>
        <div class="logo">
            <a href="index.jsp">
                <img src="images/logo.png" alt="Railway Logo"> 
            </a>
            <h1>Safar Setu</h1>
        </div>
        <button class="hamburger" aria-label="Toggle navigation" aria-expanded="false">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <nav class="main-nav" id="navMenu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="schedule.jsp">Train Schedule</a></li>
                <li><a href="book_ticket.jsp">Book Ticket</a></li>
                <li><a href="view_bookings.jsp">View Bookings</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>

                <li>
                    <div class="login-dropdown">
                        <% if (username != null) { %>
                            <div class="circle-avatar"><%= username.toUpperCase().charAt(0) %></div>
                            <div class="login-dropdown-content">
                                <span><strong><%= username %></strong></span>
                                <a href="userlogout.jsp">Logout</a>
                            </div>
                        <% } else { %>
                            <button class="login-button">Login</button>
                            <div class="login-dropdown-content">
                                <a href="adminLogin.jsp">Admin Login</a>
                                <a href="user_login.jsp">User Login</a>
                            </div>
                        <% } %>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <script>
        (function(){
            var btn = document.querySelector('.hamburger');
            var nav = document.querySelector('.main-nav');
            if(!btn || !nav) return;
            btn.addEventListener('click', function(e){
                e.stopPropagation();
                var isOpen = nav.classList.toggle('open');
                btn.classList.toggle('open');
                btn.setAttribute('aria-expanded', isOpen);
            });
            // Close menu when clicking outside (mobile)
            document.addEventListener('click', function(e){
                if(!nav.contains(e.target) && !btn.contains(e.target)){
                    nav.classList.remove('open');
                    btn.classList.remove('open');
                    btn.setAttribute('aria-expanded', false);
                }
            });
            // Reset on resize
            window.addEventListener('resize', function(){
                if(window.innerWidth > 768){
                    nav.classList.remove('open');
                    btn.classList.remove('open');
                    btn.setAttribute('aria-expanded', false);
                }
            });
        })();
    </script>
</body>
</html>
