<script>
  import { CardImg, CardBody, CardHeader, Button, Modal, ModalBody, ModalHeader, ModalFooter } from '@sveltestrap/sveltestrap';

  import Content from '../Content.svelte';
  import FlipCard from '../FlipCard.svelte';

  export let format = "png";
  
  export let title;
  export let subtitle;
  export let note = "";

  export let md = 12;
  export let lg = 6;

  let img = `./obsidian/Images/card-${title}.${format}`;
  let src = `./obsidian/Case Studies/${title}.md`;

  let open = false;

  function toggle()
  {
    open = !open;
  }
</script>

<FlipCard {md} {lg}>
  <CardImg src="{img}" />
  <CardBody>
    <h5>{title}</h5>
    <p>
      {subtitle}
      {#if note}
        <br />
        <span class="small text-muted">{note}</span>
      {/if}
    </p>
  </CardBody>
  <svelte:fragment slot="body">
    <CardHeader>
      <h5>{title}</h5>
      <span>{subtitle}</span>
      {#if note}
        <br />
        <span class="small text-muted">{note}</span>
      {/if}
    </CardHeader>
    <CardBody>
      <Content {src} />
    </CardBody>
  </svelte:fragment>
  <div slot="footer" style="float: right;">
    <Button on:click={toggle}>Read</Button>
  </div>
</FlipCard>
<Modal {toggle} size="lg" bind:isOpen={open}>
  <ModalHeader {toggle}>
    <h5>{title}</h5>
    <span>{subtitle}</span>
  </ModalHeader>
  <ModalBody>
    <Content {src} />
  </ModalBody>
  <ModalFooter>
    <Button color="secondary" on:click={toggle}>Close</Button>
  </ModalFooter>
</Modal>