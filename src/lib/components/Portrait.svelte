<script>
  import src from '$lib/images/portrait.jpg';
</script>

<style>
  @media (max-width: 768px)
  {
    .portrait
    {
      width: 30vw;
    }
  }

  @media (min-width: 992px)
  {
    .portrait
    {
      width: 20vw;
    }
  }

  @media (min-width: 1200px)
  {
    .portrait
    {
      width: 25vw;
    }
  }

  .portrait
  {
    height: auto;
    width: 20vw;
  }
</style>

<img {src} alt="Owen Adrian" class="rounded-circle portrait" />