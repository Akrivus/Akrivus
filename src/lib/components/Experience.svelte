<script>
  export let image = 'https://picsum.photos/seed/picsum/200/300';
  export let title = 'Software Engineer';
  export let company = 'Unity Technologies';
  export let dates = 'May 2021 - Present';
  export let description = 'Paragraph of text beneath the heading to explain the heading. We\'ll add onto it with another sentence and probably just keep going until we run out of words.';
  export let points = [];
</script>

<style>
  @media (max-width: 768px) {
    .d-none-md {
      display: none;
    }
  }
</style>

<div class="row">
  <div class="d-none-md col-5 col-md-4 col-lg-3">
    <img src="{image}" alt="{company}" class="rounded-circle" />
  </div>
  <div class="col">
    <h3 class="text-body-emphasis">{title}</h3>
    <h4 class="text-body-emphasis">{company}</h4>
    <h5 class="text-body-emphasis">{dates}</h5>
    <p>{description}</p>
    <ul>
    {#each points as point}
      <li>{point}</li>
    {/each}
    </ul>
  </div>
</div>