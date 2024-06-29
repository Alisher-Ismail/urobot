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
 @include('client.header2')
 <!-- End Header -->
   
  <section id="services" class="services section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-top: 3%">
          <h2>Xizmatlar/Dasturlar</h2>
        </div>

        <div class="row">
        <div class="container">
        <h1>{{ $service->title }}</h1>
        <p>{!! $service->content !!}</p>
        </div>          
        </div>

      </div>
    </section>
  </m<!-- End #main -->

  <!-- ======= Footer ======= -->
  @include('client.footer2');

</body>
</html>
