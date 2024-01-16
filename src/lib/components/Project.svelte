<script>
  export let icon = 'star';
  export let title = 'Featured title';
  export let description = 'Paragraph of text beneath the heading to explain the heading. We\'ll add onto it with another sentence and probably just keep going until we run out of words.';
  export let action = 'Call to action';
  export let actionHref = '#';
</script>

<div class="feature col">
  <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient w-100 py-5 fs-2 mb-3">
    <i class="fas fa-{icon}"/>
  </div>
  <h3 class="fs-2 text-body-emphasis">{title}</h3>
  <p>{description}</p>
  <a href={actionHref} class="icon-link">
    {action}
    <i class="fas fa-chevron-right" />
  </a>
</div>