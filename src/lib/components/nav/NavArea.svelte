<script>
  import { navlinkStore } from '$lib/util/NavLinkStore.js';
  navlinkStore.set([]); // Reset navlinks
</script>

<header id="content" class="d-fixed navbar sticky-top bg-dark p-2 shadow" data-bs-theme="dark">
  <ul class="navbar-nav flex-row w-100 justify-content-end">
    {#each $navlinkStore as navlink}
      <li class="nav-item text-nowrap">
        <a class="nav-link px-3 text-white" href="#{navlink.id}">{navlink.title}</a>
      </li>
    {/each}
  </ul>
</header>

<slot>Loading...</slot>