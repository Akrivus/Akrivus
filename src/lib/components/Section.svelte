<script>
  export let title = "Featured";
  export let id = null;

  import { navlinkStore } from '$lib/stores/NavLinkStore.js';

  id = id ?? title.toLowerCase();
  navlinkStore.update((navlinks) => navlinks = [...navlinks, {id, title}]);
</script>

<section id="{id}">
  <div class="container px-4 py-5">
    <h2 class="pb-2 border-bottom">{title}</h2>
    <div class="g-4 py-5">
      <slot>Loading...</slot>
    </div>
  </div>
</section>