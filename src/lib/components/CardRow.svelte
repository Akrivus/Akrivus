<script>
  import { Container, Row } from '@sveltestrap/sveltestrap';

  export let header;
</script>

<Container fluid class="mt-4">
  {#if header}
    <h1 class="pt-2 pb-1">{header}</h1>
  {/if}
  <Row>
    <slot />
  </Row>
</Container>