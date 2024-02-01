<script>
  export let title;
  export let dates;
  export let src;
  export let alt;

  import ImageCard from "$lib/components/cards/ImageCard.svelte";

  let xs, sm, md, lg, xl;
  let width = 0;
  $: xs = width  <   576;
  $: sm = width  >=  576 && width <  768;
  $: md = width  >=  768 && width <  992;
  $: lg = width  >=  992 && width < 1200;
  $: xl = width  >= 1200 && width < 1400;
  $: xxl = width >= 1400;
</script>

<svelte:window bind:innerWidth={width} />

<ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} {src} {alt}>
  <div slot="header">
    <h5 class="card-title">{title}</h5>
    <h6 class="card-title text-muted">{dates}</h6>
  </div>
  <div slot="content">
    <p class="card-text">
      <slot name="body"></slot>
    </p>
    <ul>
      <slot name="list"></slot>
    </ul>
  </div>
</ImageCard>