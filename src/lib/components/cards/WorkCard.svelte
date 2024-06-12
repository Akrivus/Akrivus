<script>
  import { Card, CardBody, CardHeader, CardImg } from '@sveltestrap/sveltestrap';

  export let src;
  export let alt;
  export let title;
  export let body;

  export let repo;
  export let demo;
</script>

<style>
  a {
    float: right;
    text-decoration: none;
    margin-left: 0.5rem;
  }
</style>

<Card class="mb-2">
  <CardImg src="{src}" alt="{alt}" top />
  <slot>
    {#if title}
    <CardHeader class="pt-3">
      <h5 class="d-inline">{title}</h5>
      {#if repo}
        <a href="https://github.com/Akrivus/{repo}" target="_blank" rel="noopener noreferrer">GitHub</a>
      {/if}
      {#if demo}
        <a href="{demo}" target="_blank" rel="noopener noreferrer">Demo</a>
      {/if}
    </CardHeader>
    {/if}
    <CardBody>
      {body}
    </CardBody>
  </slot>
</Card>