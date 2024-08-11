<script>
  import { Container, Col, Row } from '@sveltestrap/sveltestrap';

  import CardCol from '../lib/components/CardCol.svelte';

  import CaseStudy from '../lib/components/cards/CaseStudy.svelte';
  import About from '../lib/components/cards/About.svelte';
  import SkillSearch from '../lib/components/cards/SkillSearch.svelte';
</script>

<style>
  :global(body) {
    background-color: #121416;
  }
</style>

<Container class="mt-5">
  <Row>
    <CardCol lg={6}>
      <About />
    </CardCol>
    <Col>
      <Row>
        <h2>Where I've Been</h2>
        <CaseStudy title="Unity Technologies" subtitle="Software Engineer" />
        <CaseStudy title="VisualLive" subtitle="Full Stack Developer" />
        <CaseStudy title="Hammerhand Coffee" subtitle="Developer Consultant" />
        <CaseStudy title="Syntreno" subtitle="Lead Software Engineer" />
      </Row>
    </Col>
  </Row>

  <Row class="mt-5">
    <h2>What I've Done</h2>
    <CaseStudy md={6} lg={3} title="Unity Reflect" subtitle="Optimized BIM workflows." image />
    <CaseStudy md={6} lg={3} title="VisualLive Web" subtitle="Simplified monolithic codebase." image />
    <CaseStudy md={6} lg={3} title="Order Coffee Online" subtitle="Increased mid-shift sales." image />
    <CaseStudy md={6} lg={3} title="Gino Syntreno" subtitle="Reinforced soft skills using AI." image />
    <CaseStudy md={6} lg={3} title="Portfolio" subtitle="Continuing learning with Svelte." image
      github="https://github.com/Akrivus/Akrivus" />
    <CaseStudy md={6} lg={3} title="Confable" subtitle="Generating movies in Unity." image format="gif"
      youtube="https://www.youtube.com/watch?v=Oac47MnbjCc" />
    <CaseStudy md={6} lg={3} title="PhotoGo" subtitle="Demonstrating skill with Rails." image
      github="https://github.com/Akrivus/PhotoGo" />
    <CaseStudy md={6} lg={3} title="Block Party" subtitle="Made in 11,000 lines of Java." image
      github="https://github.com/Akrivus/BlockParty"
      youtube="https://www.youtube.com/watch?v=bT3_n-Ajxnk" />
  </Row>

  <h2 class="mt-5">What I Do</h2>
  <SkillSearch />
</Container>