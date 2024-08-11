<script>
  import { onMount } from 'svelte';
  import { Row, Col, CardBody, CardImg, CardFooter, ButtonGroup, Button, Modal, ModalHeader, ModalBody, ModalFooter } from '@sveltestrap/sveltestrap';

  import Content from '../Content.svelte';
  import CardCol from '../CardCol.svelte';

  const src = './obsidian/About Me.md';
  const portait = './obsidian/Images/Portrait.jpg';

  const width = () => _width = window.innerWidth;
  const toggle = () => open = !open;

  let open = false;
  let _width = 1080;

  $: display = _width > 576 ? 'flex' : 'none';

  onMount(() => {
    width();
    window.addEventListener('resize', width);
    return () => window.removeEventListener('resize', width);
  });
</script>

<style>
  .name {
    color: var(--bs-success);
    font-size: 3rem;
  }
</style>

<CardCol lg={6}>
  <CardBody>
    <Row class="justify-content-evenly">
      <Col>
        <div class="h-100 d-flex align-items-center">
          <div>
            <h1>Hi,<br /><span class="name">I'm Owen!</span></h1>
            <hr />
            <Content {src} />
          </div>
        </div>
      </Col>
      <Col sm={3} style="display:{display}">
        <div class="h-100 d-flex align-items-center portrait">
          <CardImg src={portait} alt="Portrait of Owen" class="rounded-circle m-auto" style="max-height: 30vh;" />
        </div>
      </Col>
    </Row>
  </CardBody>
  <CardFooter>
    <ButtonGroup>
      <Button color="success" href="./Owen-Adrian-Software-Engineer-Resume.pdf" target="_blank">
        <i class="fas fa-file-pdf" />&nbsp;
        Résumé
      </Button>
      <Button color="secondary" on:click={toggle}>
        <i class="fas fa-book" />&nbsp;
        My Story
      </Button>
    </ButtonGroup>
    <ButtonGroup style="float:right">
      <Button color="primary" href="https://linkedin.com/in/owen-adrian" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin" /></Button>
      <Button color="dark" href="https://github.com/Akrivus" target="_blank" aria-label="GitHub"><i class="fab fa-github" /></Button>
      <Button color="danger" href="https://youtube.com/channel/UCA52QVCQ0NI9QWBWpx-aSOg" target="_blank" aria-label="YouTube"><i class="fab fa-youtube" /></Button>
    </ButtonGroup>
  </CardFooter>
</CardCol>

<Modal {toggle} size="lg" bind:isOpen={open}>
  <ModalHeader {toggle}>
    <h5>My Story</h5>
  </ModalHeader>
  <ModalBody>
    <Content {src} />
  </ModalBody>
  <ModalFooter>
    <Button color="danger" on:click={toggle}>Close</Button>
  </ModalFooter>
</Modal>