<script>
  import CardAndImage from "$lib/components/cards/image/CardAndImage.svelte";
  import SideImageCard from "$lib/components/cards/image/SideImageCard.svelte";
  import TopImageCard from "$lib/components/cards/image/TopImageCard.svelte";

  export let src;
  export let alt;
  export let sizes = ["4"];
  export let top;
  export let side;
</script>

{#if top}
  <TopImageCard {src} {alt} {sizes}>
    <slot slot="header" name="header">
      <h5 class="card-title">Card title</h5>
    </slot>
    <slot slot="content" name="content">
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </slot>
  </TopImageCard>
{:else if side}
  <SideImageCard {src} {alt} {sizes}>
    <slot slot="header" name="header">
      <h5 class="card-title">Card title</h5>
    </slot>
    <slot slot="content" name="content">
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </slot>
  </SideImageCard>
{:else}
  <CardAndImage {src} {alt} {sizes}>
    <slot slot="header" name="header">
      <h5 class="card-title">Card title</h5>
    </slot>
    <slot slot="content" name="content">
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </slot>
  </CardAndImage>
{/if}