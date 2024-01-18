<script>
  import TopBarMenu from '../lib/components/TopBarMenu.svelte';
  import Section from '$lib/components/Section.svelte';
  import Landing from '$lib/components/Landing.svelte';
  import Project from '$lib/components/Project.svelte';
  import Experience from '$lib/components/Experience.svelte';

  import portfolio from '$lib/images/projects/portfolio.png';
  import tides from '$lib/images/projects/tides.png';
  import mlagents from '$lib/images/projects/mlagents.png';

  import unity from '$lib/images/logos/unity.png';
  import visuallive from '$lib/images/logos/visuallive.png';
  import oco from '$lib/images/logos/oco.png';
</script>

<TopBarMenu />
<Landing content="
  I drive productivity and efficiency with robust cloud solutions. Leveraging my
  expertise in software engineering, I have enabled stakeholder growth and delivered
  high-value applications and efficient workflows for over six years." />

<Section h2="Experience">
  <Experience image="{unity}"
    title="Software Engineer"
    company="Unity Technologies"
    dates="March 2021 - June 2023"
    description=""
    points={[
      "Vital in integrating VisualLive’s cloud offerings into the Unity Industrial Collection after its acquisition, leading the creation of the Issues and Status Tracking APIs.",
      "Reduced costs and improved productivity by building a faster, leaner 3D cloud converter microservice that leveraged FFI calls to access native code from shared libraries.",
      "Enhanced UIC's collaboration features by implementing SSO in a React dashboard and developing an API that imports and updates third-party data.",
      "Improved developer velocity in UI applications made with Unity by designing a package for effortlessly creating reactive view models for forms and lists.",
    ]}
  />
  <Experience image="{visuallive}"
    title="Software Engineer"
    company="VisualLive"
    dates="March 2020 - March 2021"
    description=""
    points={[
      "Led the advancement of VisualLive’s cloud infrastructure, powering 3D visualization and collaboration software on the Microsoft HoloLens with a Ruby on Rails monolith.",
      "Participated in client calls to provide technical expertise and improve planning.",
      "Addressed performance concerns by adding API pagination and middleware for handling bulk CRUD operations, reducing response times by as much as 90%.",
    ]}
  />
  <Experience image="{oco}"
    title="Software Engineer"
    company="Order Coffee Online"
    dates="September 2017 - March 2020"
    description=""
    points={[
      "Provided stakeholders an additional revenue stream with an online ordering system developed in Ruby on Rails, enabling expansion and mutual success.",
      "Optimized order workflows with analytics from an in-house IoT solution that accurately predicted user preferences, spiking conversion by 38%.",
    ]}
  />
</Section>

<Section h2="Projects" rows="row row-cols-1 row-cols-lg-3">
  <Project icon="cloud" image="{portfolio}"
    title="My Portfolio"
    description="In 2024, I developed a new portfolio website to showcase my
    skills and experience using SvelteKit, a new way to develop single page
    web front-ends in JavaScript."
    action="View Source Code"
    actionHref="https://github.com/Akrivus/Akrivus"
    />
  <Project icon="brain" image="{mlagents}"
    title="ML Agents"
    description="Using Unity's ML Agents, I'm developing a torque-driven
    active ragdoll that responds to an LLM by replicating different poses and movements
    for AI storytelling and filmmaking."
    />
  <Project icon="gamepad" image="{tides}"
    title="AI Storytelling"
    description="I'm developing a procedurally generated island with simulated erosion,
    ecosystems, civilizations that can be explored by an AI storyteller with GPT-4."
    />
</Section>