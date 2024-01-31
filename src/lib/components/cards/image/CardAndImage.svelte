<script>
  export let src;
  export let alt;
  export let sizes = ["4"];

  const size = sizes.join(" col-");
</script>

<div class="col-{size} mb-3">
  <div class="card h-100">
    <div class="row g-0">
      <div class="card-header">
        <slot name="header">
          <h5 class="card-title">Card title</h5>
        </slot>
      </div>
      <div class="card-body row">
        <div class="col">
          <slot name="content">
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </slot>
        </div>
        <div class="col-4 d-flex">
          <img {src} {alt} class="rounded-circle m-auto" height="270px" />
        </div>
      </div>
    </div>
  </div>
</div>