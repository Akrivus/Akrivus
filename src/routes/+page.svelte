<script>
  import { Container, Col, Row } from '@sveltestrap/sveltestrap';

  import CaseStudy from '../lib/components/cards/CaseStudy.svelte';
  import About from '../lib/components/cards/About.svelte';
  import SkillSearch from '../lib/components/cards/SkillSearch.svelte';
    import CardCol from '../lib/components/CardCol.svelte';
</script>

<style>
  :global(body) {
    background-color: #121416;
  }
</style>

<Container class="mt-5">
  <Row>
    <About />
    <Col>
      <Row>
        <h2>Experience</h2>
        <CaseStudy title="VisualLive" subtitle="Full Stack Developer" />
        <CaseStudy title="Unity Technologies" subtitle="Software Engineer" />
        <CaseStudy title="Freelance" subtitle="Software Development" />
        <CaseStudy title="Syntreno" subtitle="Software Engineer" />
      </Row>
    </Col>
  </Row>
  <Row>
    <CardCol sm={4} body center>
      <i class="fas fa-graduation-cap fa-2x mb-3" />
      <h5>I'm curious</h5>
      <p>Always learning and growing.</p>
    </CardCol>
    <CardCol sm={4} body center>
      <i class="fas fa-code fa-2x mb-3" />
      <h5>I'm independent</h5>
      <p>Self-motivated and self-taught.</p>
    </CardCol>
    <CardCol sm={4} body center>
      <i class="fas fa-rocket fa-2x mb-3" />
      <h5>I'm agile</h5>
      <p>Quick to adapt and iterate.</p>
    </CardCol>
  </Row>

  <Row class="mt-4">
    <h2>Projects & Case Studies</h2>
    <CaseStudy md={6} lg={3} title="Order Coffee Online"
      subtitle="Increasing mid-shift café sales." image />
    <CaseStudy md={6} lg={3} title="Portfolio"
      subtitle="Curating my skills and experience." image
      github="https://github.com/Akrivus/Akrivus" />
    <CaseStudy md={6} lg={3} title="Confable"
      subtitle="Generating reels with AI and Unity." image format="gif"
      github="https://github.com/Akrivus/Confable"
      youtube="https://www.youtube.com/watch?v=Oac47MnbjCc" />
    <CaseStudy md={6} lg={3} title="Block Party"
      subtitle="Bring characters to life in Minecraft." image
      github="https://github.com/Akrivus/BlockParty"
      youtube="https://www.youtube.com/watch?v=bT3_n-Ajxnk" />

    <CaseStudy md={6} lg={3} title="PhotoGo"
      subtitle="Share photos in Ruby on Rails." image
      github="https://github.com/Akrivus/PhotoGo" />
    <CaseStudy md={6} lg={3} title="ChatWS"
      subtitle="Exchange messages over WebSocket." image
      github="https://github.com/Akrivus/ChatWS" />
    <CaseStudy md={6} lg={3} title="MobiMenu"
      subtitle="Configure smart multimedia displays." image
      github="https://github.com/Akrivus/MobiMenu" />
    <CaseStudy md={6} lg={3} title="HackCar"
      subtitle="Control RC cars with a Raspberry Pi." image
      github="https://github.com/Akrivus/HackCar" />
  </Row>
  
  <SkillSearch />
</Container>