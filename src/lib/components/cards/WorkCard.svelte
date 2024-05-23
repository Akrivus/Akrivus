<script>
  import { Card, CardBody, CardHeader, CardImg } from '@sveltestrap/sveltestrap';

  export let src;
  export let alt;
  export let title;
  export let body;
</script>

<Card class="mb-2">
  <CardImg src="{src}" alt="{alt}" top />
  <slot>
    {#if title}
    <CardHeader class="pt-3">
      <h5>{title}</h5>
    </CardHeader>
    {/if}
    <CardBody>
      {body}
    </CardBody>
  </slot>
</Card>