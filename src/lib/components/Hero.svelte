<style>
  .hero {
    background-image: url('$lib/images/hero.jpg');
    background-size: cover;
    background-position: center;

    min-height: 100vh;
  }
</style>

<div class="hero container-fluid px-0 py-2 align-content-center">
  <slot>Hello World!</slot>
</div>