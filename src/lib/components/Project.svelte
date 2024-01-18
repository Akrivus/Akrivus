<script>
  export let icon = 'star';
  export let image = 'https://picsum.photos/seed/picsum/200/300';
  export let title = 'Featured title';
  export let description = 'Paragraph of text beneath the heading to explain the heading. We\'ll add onto it with another sentence and probably just keep going until we run out of words.';
  export let action;
  export let actionHref;
</script>

<style>
  .feature-icon {
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    text-shadow: 0 0 20px black;
  }
</style>

<div class="feature col">
  <div class="feature-icon d-inline-flex align-items-center justify-content-center w-100 py-5 fs-2 mb-3" style="background-image: url('{image}') !important;">
    <i class="fas fa-{icon}"/>
  </div>
  <h3 class="fs-2 text-body-emphasis">{title}</h3>
  <p>{description}</p>
  {#if action}
    <i class="fas fa-chevron-right" />
    <a href={actionHref} class="icon-link">{action}</a>
  {/if}
</div>