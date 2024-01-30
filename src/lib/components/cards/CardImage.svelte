<script>
  export let src;
  export let alt;
  export let left;
</script>

<div class="col-4">
  <img {src} {alt} class="img-fluid rounded-{left ? 'start' : 'end'}" />
</div>