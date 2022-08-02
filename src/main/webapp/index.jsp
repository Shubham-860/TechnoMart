<%@ include file="fix/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TechnoMart</title>
<%@include file="fix/head.jsp" %>
</head>
<body class="text-white bg-dark">
<%@include file="fix/nav.jsp" %>


	<main class="text-white bg-dark page landing-page">
        <section id="carousel" style="margin-top: -30px;">
            <div class="carousel slide" data-bs-ride="carousel" id="carousel-1" style="height: 93vh;width: auto;/*z-index: 1;*/">
                <div class="carousel-inner h-100">
                    <div class="carousel-item active h-100"><img class="img-fluid w-100 d-block position-absolute w-100 fit-cover" src="assets/img/TM/build-from-scratch.png" alt="Slide Image">
                        <div class="container d-flex flex-column justify-content-center h-100">
                            <div class="row">
                                <div class="col col-md-8 col-xl-6 offset-md-2" data-aos="fade-right" data-aos-duration="1200" style="z-index: 1;">
                                    <div>
                                        <h1 class="text-uppercase fw-bold">Build It Better!<br><br>Build It Your Self!<br><br></h1>
                                        <p class="text-light my-3">Enjoy The Most Simplified PC Building Experience With Ant PC</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item h-100"><img class="w-100 d-block position-absolute h-100 fit-cover" src="assets/img/TM/gaming-pc.png" alt="Slide Image" style="/*z-index: -1;*/">
                        <div class="container d-flex flex-column justify-content-center h-100">
                            <div class="row">
                                <div class="col col-md-8 col-xl-6 offset-md-2" style="z-index: 1;">
                                    <div style="max-width: 500px;">
                                        <h1 class="text-uppercase fw-bold">HIGH PERFORMANCE ,<br><br>CUSTOM BUILD &amp; GAMING PCS<br><br></h1>
                                        <p class="text-white my-3" style="padding-right: 45px;">Custom build pc for entry level gaming to extreme gaming enthusiasts</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item h-100"><img class="w-100 d-block position-absolute h-100 fit-cover" src="assets/img/TM/workstation.png" alt="Slide Image" style="/*z-index: -1;*/">
                        <div class="container d-flex flex-column justify-content-center h-100">
                            <div class="row">
                                <div class="col col-md-8 col-xl-6 offset-md-2" style="z-index: 1;">
                                    <div style="max-width: 500px;">
                                        <h1 class="text-uppercase fw-bold">READY. SET. GAME!</h1>
                                        <p class="text-white my-3" style="padding-right: 75px;">Time for an Upgrade. New Ready-To-Ship (RTS) Desktops include Free US Ground Shipping, featuring</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
                <ol class="carousel-indicators">
                    <li data-bs-target="#carousel-1" data-bs-slide-to="0" class="active"></li>
                    <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
                    <li data-bs-target="#carousel-1" data-bs-slide-to="2"></li>
                </ol>
            </div>
        </section>
        <section class="clean-block features">
            <div class="container">
                <div data-aos="fade-up" data-aos-duration="900" class="block-heading">
                    <h2 class="fs-1 text-info">Features</h2>
                    <p class="text-white">Enjoy The Most Simplified PC Building Experience With Ant PC</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-5 feature-box" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="100"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-gear icon">
                            <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"></path>
                            <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"></path>
                        </svg>
                        <h4 class="fs-4"><strong>ONE-OF-A KIND CUSTOMIZATION</strong><br></h4>
                        <p class="text-white">It's your choice. It's your ORIGIN PC. Personalize your ORIGIN PC your way to experience award-winning performance.</p>
                    </div>
                    <div class="col-md-5 feature-box" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="100"><i class="icon-rocket icon"></i>
                        <h4 class="fs-4"><strong>Build Your Dream PC</strong></h4>
                        <p class="text-white">Get your dream PC built either at our store or online using our build your PC page and get the complete setup delivered at your door step.<br></p>
                    </div>
                    <div class="col-md-5 feature-box" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="300"><i class="fas fa-tv icon"></i>
                        <h4 class="fs-4"><strong>Pre Built PC</strong></h4>
                        <p class="text-white">Confused on building your own PC? Do not worry ! Try our already built PCs which include gaming, professional and streaming pcs</p>
                    </div>
                    <div class="col-md-5 feature-box" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="300"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-sticky icon">
                            <path d="M2.5 1A1.5 1.5 0 0 0 1 2.5v11A1.5 1.5 0 0 0 2.5 15h6.086a1.5 1.5 0 0 0 1.06-.44l4.915-4.914A1.5 1.5 0 0 0 15 8.586V2.5A1.5 1.5 0 0 0 13.5 1h-11zM2 2.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 .5.5V8H9.5A1.5 1.5 0 0 0 8 9.5V14H2.5a.5.5 0 0 1-.5-.5v-11zm7 11.293V9.5a.5.5 0 0 1 .5-.5h4.293L9 13.793z"></path>
                        </svg>
                        <h4 class="fs-4"><strong>Most Stylish&nbsp;Gaming PC</strong><br></h4>
                        <p class="text-white">TechnoMart PC MILLENNIUM Nominated most Stylistic Gaming PC<br></p>
                    </div>
                </div>
            </div>
        </section>
        <section class="clean-block about-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xxl-6" data-aos="fade-right"><img class="rounded img-fluid border" src="assets/img/TM/lian-li-gaming-bundle-1.jpg"></div>
                    <div class="col-md-12 col-xxl-6" data-aos="fade-left"><img class="rounded img-fluid border" src="assets/img/TM/lian-li-gaming-bundle-2.jpg"></div>
                </div>
            </div>
        </section>
    </main>


<%@include file="fix/footer.jsp" %>
<%@include file="fix/scripts.jsp" %>
</body>
</html>