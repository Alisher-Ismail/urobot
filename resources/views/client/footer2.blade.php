<footer id="footer" style="position: fixed;
    bottom: 0;
    right: 0;
    left: 0;">
      <div class="container footer-bottom clearfix" >
        <div class="copyright">
          &copy; Copyright <strong><span>UROBOT</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by <a href="">UROBOT</a>
        </div>
      </div>
    </footer><!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="{{asset('client/assets/vendor/aos/aos.js')}}"></script>
<script src="{{asset('client/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('client/assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{asset('client/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('client/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{asset('client/assets/vendor/waypoints/noframework.waypoints.js')}}"></script>
<script src="{{asset('client/assets/vendor/php-email-form/validate.js')}}"></script>

<!-- Template Main JS File -->
<script src="{{asset('client/assets/js/main.js')}}"></script>

<script>
  window.addEventListener('scroll', function() {
    var footer = document.getElementById('footer');
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
        footer.style.display = 'block';
    } else {
        footer.style.display = 'none';
    }
});

  </script>