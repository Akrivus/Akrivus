<script>
  import NavArea from '../lib/components/nav/NavArea.svelte';
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

<style>
  #vertical-carousel {
    background-image: url('$lib/images/journey.jpg');
    background-size: cover;
    background-position-x: center;
    background-repeat: no-repeat;
    animation: vertical-scroll 120s linear infinite;
  }

  @keyframes vertical-scroll {
    from {
      background-position-y: 0%;
    }
    50% {
      background-position-y: 100%;
    }
    to {
      background-position-y: 0%;
    }
  }
</style>

<Landing>
  <p class="lead">
    I break ground with performant and scalable solutions to real-world problems. From building start-ups to
    scaling global enterprises, I deliver results with my passion for technology and diverse experience.
  </p>
</Landing>

<NavArea>
  <Section id="journey" title="My Journey">
    <div class="row row-cols-2">
      <div class="col">
        <p>
          My journey into tech began with a childhood curiosity, leading me to explore coding
          through video games and later diving into software development with C#, and Java.
        </p>
        <p>
          In high school, I automated tasks with Java and built a chatbot in Ruby, showcasing
          my knack for practical applications.
        </p>
        <p>
          Venturing into entrepreneurship in 2017, I addressed a local cafe's parking issue
          by developing an optimized online ordering system and increasing their revenue.
        </p>
        <p>
          This success launched my web development career, leading to impactful solutions for
          organizations in the AEC and video game industries like VisualLive and Unity Technologies.
        </p>
        <p>
          I'm passionate about using my diverse experience and strategic problem solving to
          continue making meaningful impacts to projects and organizations and toeing the line
          of what is possible with technology.
        </p>
      </div>
      <div class="col" id="vertical-carousel">
        
      </div>
    </div>
  </Section>

  <Section id="skills" title="My Skills">
    <div class="row row-cols-2">
      <div class="col">
        <ul>
          <li>Ruby</li>
          <li>Ruby on Rails</li>
          <li>Sinatra</li>
          <li>JavaScript</li>
          <li>C#</li>
          <li>ASP.NET Core</li>
          <li>React</li>
          <li>Svelte</li>
          <li>Node.js</li>
          <li>Express</li>
          <li>HTML</li>
          <li>CSS</li>
          <li>Python</li>
        </ul>
      </div>
      <div class="col">
        <ul>
          <li>Docker</li>
          <li>Git</li>
          <li>Linux</li>
          <li>Windows</li>
          <li>Azure</li>
          <li>AWS</li>
          <li>Heroku</li>
          <li>PostgreSQL</li>
          <li>Visual Basic</li>
          <li>Unity</li>
          <li>SQL</li>
          <li>Java</li>
          <li>C++</li>
        </ul>
      </div>
    </div>
  </Section>
  
  <Section id="projects" title="Projects">
    <div class="row row-cols-1 row-cols-lg-3">
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
    </div>
  </Section>
  
  <Section title="Experience">
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

  <Section id="contact" title="Contact Me">
    <p>
      I'm always looking for new opportunities to grow and develop my skills.
      If you'd like to get in touch, please feel free to reach out to me at
      <a href="mailto:me@owen.codes">me@owen.codes</a>
    </p>
  </Section>
</NavArea>