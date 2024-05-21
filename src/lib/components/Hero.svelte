<script>
  import { Container } from '@sveltestrap/sveltestrap';
</script>

<style>
  .hero {
    background-image: url('$lib/images/hero.jpg');
    background-size: cover;
    background-position: center;

    min-height: 100vh;
  }
</style>

<div class="hero container-fluid px-0 py-2">
  <slot>Hello World!</slot>
</div>