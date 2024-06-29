<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>UROBOT</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<!-- Favicons -->
<link href="{{ asset('client/assets/img/favicon.png') }}" rel="icon">
<link href="{{ asset('client/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

<!-- Vendor CSS Files -->
<link href="{{ asset('client/assets/vendor/aos/aos.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
<link href="{{ asset('client/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="{{ asset('client/assets/css/style.css') }}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
    body {
    margin: 0;
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.bottom-fixed-div {
    position: fixed;
    bottom: 0;
    width: 100%;
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
}

    </style>
</head>

<body>

 <!-- ======= Header ======= -->
 @include('client.header')
 <!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
       @foreach($first as $f) 
      <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h2>{!! $f->content !!}</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#about" class="btn-get-started scrollto">Biz bilan biznesingizni rivojlantiring</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="{{$f->image}}" class="img-fluid animated" alt="">
        </div>
        
      </div>
      @endforeach
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Biz Haqimizda</h2>
        </div>

        <div class="row content">
        @foreach($about as $abt)
            <p>
              {!! $abt->content !!}
            </p>
            @endforeach
          <div class="col-lg-6">
            
            
          </div>
       
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Xizmatlar/Dasturlar</h2>
        </div>

        <div class="row">
        @foreach($services as $sr)
          <div class="col-xl-3 col-md-6 d-flex align-items-stretch mt-4 " data-aos="zoom-in" data-aos-delay="200" >
            <div class="icon-box" style="width: 300px">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="{{ route('xizmat.edit', $sr->id) }}">{{$sr->title}}</a></h4>
              <p>{!! substr($sr->content, 0, 100) !!}</p>
            </div>
          </div>
        @endforeach
          
        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Jamoa</h2>
        </div>

        <div class="row">
        @foreach($teams as $tm)
          <div class="col-lg-6 mt-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="{{$tm->image}}" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>{{$tm->ism}}</h4>
                <span>{{$tm->lavozim}}</span>
                <div class="social">
                  <a href="{{$tm->twitter}}"><i class="ri-twitter-fill"></i></a>
                  <a href="{{$tm->facebook}}"><i class="ri-facebook-fill"></i></a>
                  <a href="{{$tm->instagram}}"><i class="ri-instagram-fill"></i></a>
                  <a href="{{$tm->linkedin}}"> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Aloqa</h2>
          <p></p>
        </div>

        <div class="row">

          <div class="col-lg-5 d-flex align-items-stretch">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Manzil:</h4>
                <p>Andijon</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>alisherismailov1991@gmail.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Telefon Nomer:</h4>
                <p>+998 99 499 73 64</p>
              </div>

              <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
            </div>

          </div>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="name">Your Name</label>
                  <input type="text" name="name" class="form-control" id="name" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="name">Your Email</label>
                  <input type="email" class="form-control" name="email" id="email" required>
                </div>
              </div>
              <div class="form-group">
                <label for="name">Subject</label>
                <input type="text" class="form-control" name="subject" id="subject" required>
              </div>
              <div class="form-group">
                <label for="name">Message</label>
                <textarea class="form-control" name="message" rows="10" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 @include('client.footer');

</body>

</html>