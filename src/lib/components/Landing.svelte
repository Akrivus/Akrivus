<style>
  section
  {
    background-image: url('$lib/images/landing.jpg');
    background-size: cover;
    background-position: center;
  }
</style>

<section id="header" class="px-3 d-flex justify-content-center align-items-center image-background" style="height: 100vh;">
  <div class="row">
    <div class="col-12 col-md-8 col-xl-7 d-flex">
      <div class="m-auto align-self-center">
        <slot name="lead"></slot>
      </div>
    </div>
    <div class="col-0 col-md-4 col-xl-5 d-flex">
      <div class="m-auto align-self-center">
        <slot name="side"></slot>
      </div>
    </div>
  </div>
</section>
