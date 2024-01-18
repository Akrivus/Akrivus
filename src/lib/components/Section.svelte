<script>
  export let h2 = "Featured";
  export let rows = "";
</script>

<main>
  <div class="container px-4 py-5">
    <h2 class="pb-2 border-bottom">{h2}</h2>
    <div class="g-4 py-5 {rows}">
      <slot>Loading...</slot>
    </div>
  </div>
</main>