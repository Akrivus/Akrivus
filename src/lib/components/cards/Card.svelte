<script>
  export let size = 4;
</script>

<div class="col-{size} mb-3">
  <div class="card h-100">
    <div class="card-header">
      <slot name="header">
        <h5 class="card-title">Card title</h5>
      </slot>
    </div>
    <div class="card-body">
      <slot name="content">
        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </slot>
    </div>
  </div>
</div>