<style>
  h1 {
    font-size: 3rem;
  }

  .image-background {
    background-image: url('$lib/images/yucca.jpg');
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
  <div class="row col-sm col-lg-9 col-xl-7">
    <div class="col-md-7 col-lg-8 col-xl-9">
      <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
      <p class="lead">
        <slot name="content">Content loading...</slot>
      </p>
      <a href="Owen Adrian - Resume.pdf" class="btn btn-lg btn-outline-success">Résumé</a>
      <a aria-label="LinkedIn" href="https://linkedin.com/in/owen-adrian" class="btn btn-lg btn-outline-success"><i class="fab fa-linkedin" /></a>
      <a aria-label="GitHub" href="https://github.com/Akrivus" class="btn btn-lg btn-outline-success"><i class="fab fa-github" /></a>
      <a href="#content" class="btn btn-lg btn-success">Read On <i class="fas fa-arrow-down" /></a>
    </div>
    <div class="col-md-5 col-lg-4 col-xl-3">
      <div aria-label="Portrait of Owen Adrian" class="portrait mx-auto py-auto"></div>
    </div>
  </div>
</main>
