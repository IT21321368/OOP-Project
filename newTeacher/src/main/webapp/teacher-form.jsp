<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <html>

      <head>
         <title>Online School Information Management System</title>
         <style type="text/css">
              /* =========== Google Fonts ============ */
             @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap");

             /* =============== Globals ============== */
            * {
                 font-family: "Ubuntu", sans-serif;
                 margin: 0;
                 padding: 0;
                 box-sizing: border-box;
              }

              :root {
                 --blue: #2a2185;
                 --white: #fff;
                 --gray: #f5f5f5;
                 --black1: #222;
                 --black2: #999;
              }

              body {
                 min-height: 100vh;
                 overflow-x: hidden;
              }

              .container {
                 position: relative;
                 width: 100%;
              }

              /* =============== Navigation ================ */
              .navigation {
                 position: fixed;
                 width: 300px;
                 height: 100%;
                 background: var(--blue);
                 border-left: 10px solid var(--blue);
                 transition: 0.5s;
                 overflow: hidden;
               }
              
               .navigation.active {
                  width: 80px;
               }

               .navigation ul {
                  position: relative;
                  top: 0px;
                  left: 0;
                  width: 100%;
               }

               .navigation ul li {
                  position: relative;
                  width: 100%;
                  list-style: none;
                  border-top-left-radius: 30px;
                  border-bottom-left-radius: 30px;
               }

               .navigation ul li:hover,
               .navigation ul li.hovered {
                  background-color: var(--white);
               }

               .navigation ul li:nth-child(1) {
                  margin-bottom: 40px;
                  pointer-events: none;
               }

               .navigation ul li a {
                   position: relative;
                   display: block;
                   width: 100%;
                   display: flex;
                   text-decoration: none;
                   color: var(--white);
               }
                
               .navigation ul li:hover a,
                .navigation ul li.hovered a {
                   color: var(--blue);
               }

               .navigation ul li a .icon {
                    position: relative;
                    display: block;
                    min-width: 60px;
                    height: 20px;
                    line-height: 75px;
                    text-align: center;
               }
                 .navigation ul li a .icon ion-icon {
                     padding: 16px;
                     font-size: 1.75rem;
               }

               .navigation ul li a .title {
                    position: relative;
                    display: block;
                    padding: 0px 30px;
                    height: 60px;
                    line-height: 60px;
                    text-align: start;
                    white-space: nowrap;
              }

                /* --------- curve outside ---------- */
                .navigation ul li:hover a::before,
                .navigation ul li.hovered a::before {
                     content: "";
                     position: absolute;
                     right: 0;
                     top: -50px;
                     width: 50px;
                     height: 50px;
                     background-color: transparent;
                     border-radius: 50%;
                     box-shadow: 35px 35px 0 10px var(--white);
                     pointer-events: none;
                }
                .navigation ul li:hover a::after,
                 .navigation ul li.hovered a::after {
                      content: "";
                      position: absolute;
                      right: 0;
                      bottom: -50px;
                      width: 50px;
                      height: 50px;
                      background-color: transparent;
                      border-radius: 50%;
                      box-shadow: 35px -35px 0 10px var(--white);
                      pointer-events: none;
                }

                 /* ===================== Main ===================== */
                  .main {
                       position: absolute;
                       width: calc(100% - 300px);
                       left: 300px;
                       min-height: 100vh;
                       background: var(--white);
                       transition: 0.5s;
                 }
                 .main.active {
                       width: calc(100% - 80px);
                       left: 80px;
                  }

                  .topbar {
                       width: 100%;
                       height: 60px;
                       display: flex;
                       justify-content: space-between;
                       align-items: center;
                       padding: 0 10px;
                  }

                  .toggle {
                       position: relative;
                       width: 60px;
                       height: 60px;
                       display: flex;
                       justify-content: center;
                       align-items: center;
                       font-size: 2.5rem;
                       cursor: pointer;
                  }

                  .search {
                        position: relative;
                        width: 400px;
                        margin: 0 10px;
                  }

                  .search label {
                         position: relative;
                         width: 100%;
                   }

                   .search label input {
                          width: 100%;
                          height: 40px;
                          border-radius: 40px;
                          padding: 5px 20px;
                          padding-left: 35px;
                          font-size: 18px;
                          outline: none;
                          border: 1px solid var(--black2);
                   }

                    .search label ion-icon {
                           position: absolute;
                           top: 0;
                           left: 10px;
                           font-size: 1.2rem;
                    }

                     .user {
                            position: relative;
                            width: 40px;
                            height: 40px;
                            border-radius: 50%;
                            overflow: hidden;
                            cursor: pointer;
                     }

                      .user img {
                             position: absolute;
                             top: 0;
                             left: 0;
                             width: 100%;
                             height: 100%;
                             object-fit: cover;
                       }


                       /* =============== Order Details List ==============*/
                        .details {
                            position: relative;
                            width: 150%;
                            padding: 20px;
                            display: grid;
                            grid-template-columns: 2fr 1fr;
                            grid-gap: 30px;
                          /* margin-top: 10px; */
                       }

                       .form-control{
                            display: flex;
                            align-items:center;
                       }

                       .custom-control label{
                            min-width:120px;
                       }

                       .form-control input{
                            padding: 10px;
                            margin-bottom: 30px;
                            width: 300px;
                       }

                       fieldset {
                            border-color: #000080;
                            padding:10px 20px 20px 20px;
                            width:400px;
                            height:400px;
                            background-color: #F0F8FF;
                            margin-left: 300px;
                            border-width: 5px;
                            border-style:groove;
                            border-image:initial;

                       }


                       #bttn{
                            position: relative;
                            padding: 5px 10px;
                            background: var(--blue);
                            text-decoration: none;
                            color: var(--white);
                            border-radius: 6px;
                            cursor: pointer;
  
                      }
                      .details .recentOrders {
                             position: relative;
                             display: grid;
                             min-height: 500px;
                             background: var(--white);
                             padding: 20px;
                             box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
                             border-radius: 20px;
                       }

                       .details .cardHeader {
                            display: flex;
                            justify-content: space-between;
                            align-items: flex-start;
                        }
                       .cardHeader h2 {
                            font-weight: 600;
                            color: var(--blue);
                        }
                        .cardHeader .btn {
                             position: relative;
                             padding: 5px 10px;
                             background: var(--blue);
                             text-decoration: none;
                             color: var(--white);
                             border-radius: 6px;
                        }

                        .recentOrders table tr{
                             width:100px;
                             height:50px;
                         }

                         .recentCustomers {
                            position: relative;
                            display: grid;
                            min-height: 500px;
                            padding: 20px;
                            background: var(--white);
                            box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
                            border-radius: 20px;
                        }
                        .recentCustomers .imgBx {
                             position: relative;
                             width: 40px;
                             height: 40px;
                             border-radius: 50px;
                             overflow: hidden;
                       }
                       .recentCustomers .imgBx img {
                             position: absolute;
                             top: 0;
                             left: 0;
                             width: 100%;
                             height: 100%;
                             object-fit: cover;
                       }


                       /* ====================== Responsive Design ========================== */
                       @media (max-width: 991px){
                          .navigation {
                             left: -300px;
                           }
                           .navigation.active {
                             width: 300px;
                             left: 0;
                           }
                          .main {
                            width: 100%;
                            left: 0;
                           }
                          .main.active {
                            left: 300px;
                           }
                          .cardBox {
                            grid-template-columns: repeat(2, 1fr);
                          }
                      }

                      @media (max-width: 768px) {
                        .details {
                           grid-template-columns: 1fr;
                         }
                       .recentOrders {
                          overflow-x: auto;
                        }
                       .status.inProgress {
                          white-space: nowrap;
                        }
                      }

                      @media (max-width: 480px) {
                       .cardBox {
                          grid-template-columns: repeat(1, 1fr);
                        }
                       .cardHeader h2 {
                          font-size: 20px;
                        }
                       .user {
                          min-width: 40px;
                        }
                       .navigation {
                          width: 100%;
                          left: -100%;
                          z-index: 1000;
                        }
                       .navigation.active {
                          width: 100%;
                          left: 0;
                        }
                       .toggle {
                          z-index: 10001;
                        }
                        .main.active .toggle {
                          color: #fff;
                          position: fixed;
                          right: 0;
                          left: initial;
                         }
                      }

         </style>
           
     </head>

      <body>
              <!-- =============== Navigation ================ -->
              <div class="container">
                 <div class="navigation">
                    <ul>
                       <li>
                           <a href="index.html">
                            <span class="icon">
                              <ion-icon name="school"></ion-icon>
                           </span>
                           <span class="title">Edu School</span>    
                          </a>
                       </li>

                        <li>
                           <a href="index.html">
                            <span class="icon">
                              <ion-icon name="home-outline"></ion-icon>
                            </span>
                            <span class="title">Dashboard</span>
                           </a>
                        </li>

                         <li>
                            <a href="student.html">
                             <span class="icon">
                                <ion-icon name="people-outline"></ion-icon>
                            </span>
                            <span class="title">Students</span>
                           </a>
                        </li>

                        <li>
                           <a href="<%=request.getContextPath()%>/teacherlist">
                            <span class="icon">
                              <ion-icon name="man-outline"></ion-icon>
                            </span>
                            <span class="title">Teachers</span>
                            </a>
                        </li>

                        <li>
                          <a href="parent.html">
                            <span class="icon">
                              <ion-icon name="people-circle-outline"></ion-icon>
                           </span>
                           <span class="title">Parents</span>
                         </a>
                       </li>

                       <li>
                         <a href="<%=request.getContextPath()%>/adminlist">
                           <span class="icon">
                             <ion-icon name="settings-outline"></ion-icon>
                           </span>
                           <span class="title">Admins</span>
                         </a>
                      </li>

                      <li>
                        <a href="class.html">
                         <span class="icon">
                            <ion-icon name="book-outline"></ion-icon>
                         </span>
                        <span class="title">Classes</span>
                      </a>
                     </li>

                     <li>
                       <a href="timeTable.html">
                        <span class="icon">
                            <ion-icon name="time-outline"></ion-icon>
                        </span>
                        <span class="title">Time Tables</span>
                       </a>
                    </li>

                    <li>
                       <a href="#">
                        <span class="icon">
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out</span>
                       </a>
                   </li>
               </ul>
          </div>


        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                <div class="user">
                    <a href="profile.html"><img src="imgs/customer01.jpg" alt=""></a> 
                </div>
            </div>



            <!-- ================ Teacher Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <a href="<%=request.getContextPath()%>/teacherlist" class="btn">View All</a>
                    </div>
                            <c:if test="${user != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                        </c:if>
                        <div class="custom-info">
                        
                       <fieldset>
                         <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit Teacher
                                </c:if>
                                <c:if test="${user == null}">
                                    Add New Admin
                                </c:if>
                            </h2>
                         </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>
                       

                            <br><br>
                            <label> Name</label> <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
                       

                            <br><br>
                            <label>User Email</label> <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email">
                        

                            <br><br>
                            <label> username</label> <input type="text" value="<c:out value='${user.username}' />" class="form-control" name="username">

							 <br><br>
                            <label> password</label> <input type="text" value="<c:out value='${user.password}' />" class="form-control" name="password">
							
                           <br>
                           <button id="bttn" type="submit" class="btn btn-success" >Save</button><br> <br>
                        
                        </fieldset>
                        <br>
                       </div>
                      </form>
                   </div>
                 </div>
              </div>
         </div>
      </div>
                        
        <!-- =========== Scripts =========  -->
    <script>
     // add hovered class to selected list item
     let list = document.querySelectorAll(".navigation li");

    function activeLink() {
      list.forEach((item) => {
        item.classList.remove("hovered");
      });
      this.classList.add("hovered");
    }

    list.forEach((item) => item.addEventListener("mouseover", activeLink));

    // Menu Toggle
    let toggle = document.querySelector(".toggle");
    let navigation = document.querySelector(".navigation");
    let main = document.querySelector(".main");

    toggle.onclick = function () {
      navigation.classList.toggle("active");
      main.classList.toggle("active");
    };

   </script>

   <!-- ====== ionicons ======= -->
   <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
   <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
   
  </body>
 </html>