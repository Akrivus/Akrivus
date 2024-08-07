<script>
  import { Row, Col, CardFooter, Button } from '@sveltestrap/sveltestrap';
  import CardCol from './CardCol.svelte';

  export let expanded = false;

  export let xs;
  export let sm;
  export let md;
  export let lg;
  export let xl;

  let _height = 'auto';
  $: height = expanded ? _height : 'auto';

  function flipCard()
  {
    let slot = document.querySelector('.height');
    let style = window.getComputedStyle(slot);
    _height = style.getPropertyValue('height');
    expanded = !expanded;
  }
</script>

<CardCol xs={xs} sm={sm} md={md} lg={lg} xl={xl}>
  <Row>
    <Col>
        {#if expanded}
          <div style="height: {height}; overflow-y: auto;">
            <slot name="body" />
          </div>
        {:else}
          <div class="height">
            <slot />
          </div>
        {/if}
      <CardFooter>
        <Button on:click={flipCard}>{expanded ? 'See Less' : 'See More'}</Button>
        <slot name="footer" />
      </CardFooter>
    </Col>
  </Row>
</CardCol>