<script>
  import { onMount } from 'svelte';

  $: isGoingDown = true;

  onMount(() => {
    window.addEventListener('scroll', () => {
      isGoingDown = window.scrollY < 270;
    });
  });
</script>

<style>
  .float-right
  {
    float: right;
    margin: 1.5rem;
  }
</style>

<div class="fixed-bottom">
  {#if isGoingDown}
    <a href="#content" class="btn btn-lg btn-success float-right">Read On <i class="fas fa-arrow-down" /></a>
  {:else}
    <a href="#header"  class="btn btn-lg btn-success float-right">Go Home <i class="fas fa-arrow-up" /></a>
  {/if}
</div>