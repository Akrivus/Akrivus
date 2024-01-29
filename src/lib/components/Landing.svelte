<style>
  h1 {
    font-size: 3rem;
  }

  .image-background {
    background-image: url('$lib/images/landing.jpg');
    background-size: cover;
    background-position: center;
  }

  .portrait {
    background-image: url('$lib/images/portrait.jpg');
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    border-radius: 50%;
    width: 300px;
    height: 300px;
  }

  .name {
    font-size: 4rem;
    color: var(--bs-success);
  }

  @media (max-width: 768px) {
    .portrait {
      display: none;
    }
  }
</style>

<main id="header" class="px-3 d-flex justify-content-center align-items-center image-background" style="height: 100vh;">
  <div class="row col-sm col-xl-9">
    <div class="col-md-7 col-lg-8">
      <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
      <slot>Content loading...</slot>
      <br />
      <a href="Owen Adrian - Resume.pdf" class="btn btn-lg btn-outline-success">Résumé</a>
      <a href="https://linkedin.com/in/owen-adrian" class="btn btn-lg btn-outline-success" aria-label="LinkedIn"><i class="fab fa-linkedin" /></a>
      <a href="https://github.com/Akrivus" class="btn btn-lg btn-outline-success" aria-label="GitHub"><i class="fab fa-github" /></a>
    </div>
    <div class="col-md-5 col-lg-4">
      <div aria-label="Portrait of Owen Adrian" class="portrait mx-auto py-auto"></div>
    </div>
  </div>
</main>
