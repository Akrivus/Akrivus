<script>
  import { Card, CardBody, CardImg, CardFooter, ButtonGroup, Button, Row, Col } from '@sveltestrap/sveltestrap';

  import src from '$lib/images/portrait.jpg';
</script>

<style>
  .name {
    color: var(--bs-success);
    font-size: 3rem;
  }
</style>

<Card class="mb-2">
  <CardBody>
    <Row>
      <Col lg={12} xl={6}>
        <div class="h-100 d-flex align-items-center portrait">
          <CardImg src="{src}" alt="Portrait of Owen" class="rounded-circle m-auto" style="max-height:25vh;width:auto;" />
        </div>
      </Col>
      <Col>
        <div class="h-100 d-flex align-items-center">
          <div>
            <h1>Hi,<br /><span class="name">I'm Owen!</span></h1>
            <hr />
            <p>
              I've been a professional software developer for the past 7 years. I specialize in full-stack web development with an interest in video games and machine learning.
            </p>
          </div>
        </div>
      </Col>
    </Row>
  </CardBody>
  <CardFooter>
    <ButtonGroup>
      <Button color="success" href="./Owen-Adrian-Software-Engineer-Resume.pdf" target="_blank">Résumé (PDF)</Button>
      <Button color="secondary" href="./Owen-Adrian-Software-Engineer-Resume.docx" target="_blank">(DOCX)</Button>
    </ButtonGroup>
    <ButtonGroup style="float: right;">
      <Button color="primary" href="https://linkedin.com/in/owen-adrian" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin" /></Button>
      <Button color="dark" href="https://github.com/Akrivus" target="_blank" aria-label="GitHub"><i class="fab fa-github" /></Button>
      <Button color="danger" href="https://youtube.com/channel/UCA52QVCQ0NI9QWBWpx-aSOg" target="_blank" aria-label="YouTube"><i class="fab fa-youtube" /></Button>
    </ButtonGroup>
  </CardFooter>
</Card>