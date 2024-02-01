<script>
  export let title;
  export let src;
  export let alt;

  import TopImageCard from "$lib/components/cards/image/TopImageCard.svelte";
</script>

<TopImageCard {src} {alt} sizes={["12", "md-6", "lg-4"]}>
  <div slot="header">
    <h5 class="card-title">{title}</h5>
  </div>
  <div slot="content">
    <p class="card-text">
      <slot name="body"></slot>
    </p>
    <slot name="link"></slot>
</TopImageCard>