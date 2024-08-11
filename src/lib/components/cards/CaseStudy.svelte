<script>
  import { CardImg, CardBody, Button, Modal, ModalBody, ModalHeader, ModalFooter, CardFooter, ButtonGroup } from '@sveltestrap/sveltestrap';

  import Content from '../Content.svelte';
  import CardCol from '../CardCol.svelte';

  export let format = "png";
  export let image = false;
  
  export let title;
  export let subtitle;

  export let github;
  export let youtube;

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

<CardCol {md} {lg}>
  {#if image}
    <CardImg src="{img}" />
  {/if}
  <CardBody>
    <h5>{title}</h5>
    {subtitle}
  </CardBody>
  <CardFooter>
    <Button color="success" on:click={toggle}>
      <i class="fas fa-book" />&nbsp;
      Read
    </Button>
    <ButtonGroup style="float:right">
      {#if github}
        <Button color="dark" href="{github}" target="_blank"><i class="fab fa-github" /></Button>
      {/if}
      {#if youtube}
        <Button color="danger" href="{youtube}" target="_blank"><i class="fab fa-youtube" /></Button>
      {/if}
    </ButtonGroup>
  </CardFooter>
</CardCol>

<Modal {toggle} size="lg" bind:isOpen={open}>
  <ModalHeader {toggle}>
    <h5>{title}</h5>
    <span>{subtitle}</span>
  </ModalHeader>
  <ModalBody>
    <Content {src} />
  </ModalBody>
  <ModalFooter>
    <Button color="danger" on:click={toggle}>Close</Button>
  </ModalFooter>
</Modal>