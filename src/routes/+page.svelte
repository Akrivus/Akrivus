<script>
  import NavArea from '../lib/components/NavArea.svelte';
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

<Landing content="
  I drive productivity and efficiency with robust cloud solutions. Leveraging my
  expertise in software engineering, I have enabled stakeholder growth and delivered
  high-value applications and efficient workflows for over six years." />

<NavArea>
  <Section id="story" title="My Story">
    <div class="row row-cols-2 row-cols-sm-1">
      <div class="col">
        <p>
          Greetings! I'm Owen, an experienced software engineer with a passion for creating
          meaningful change through technology. My journey began with a childhood fascination
          for understanding how things worked, driven by a love for absorbing information
          from books and documentaries.
        </p>
        <p>
          My hands-on learning approach naturally led me into the world of software development.
          I initially delved into coding through video games, particularly rogue-likes, during my
          early teens. The statistical gameplay and the ability to devise emergent systems
          captivated me. At the age of 12, I started my coding journey with Visual Basic, later
          expanding into C# and Java through Minecraft modding. Developing Minecraft mods exposed
          me to the practical application of code, problem-solving, and optimizing in-game workflows.
          In high school, I applied my coding knowledge to automate assignments in advanced computer
          classes using OCR and keyboard handling, and built a chatbot using Markov chains.
        </p>
        <p>
          My quick grasp of patterns led me to thrive in high-paced, goal-oriented environments,
          particularly startups. In 2017, I launched my first business venture after identifying an
          untapped market of commuters leaving town for coffee due to parking issues around local cafes.
          With an optimized online ordering system, I showcased how my inquisitive and innovative nature
          could yield tangible business results. This venture not only expanded my client's revenue but
          also facilitated significant growth, doubling their revenue. It marked the beginning of my
          web development journey, leading to successful partnerships, exits, and impactful contributions
          to organizations like VisualLive and Unity Technologies.
        </p>
        <p>
          I'm excited about future opportunities and look forward to leveraging my diverse experiences
          to continue making a lasting impact in the tech industry.
        </p>
      </div>
    </div>
  </Section>

  <Section id="skills" title="My Skills">
    <div class="row row-cols-2 row-cols-sm-1">
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
        </ul>
      </div>
      <div class="col">
        <ul>
          <li>C++</li>
          <li>Visual Basic</li>
          <li>Unity</li>
          <li>Python</li>
          <li>SQL</li>
          <li>Java</li>
          <li>Docker</li>
          <li>Git</li>
          <li>Linux</li>
          <li>Windows</li>
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