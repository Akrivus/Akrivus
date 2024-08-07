<script>
  import { Container, Input } from '@sveltestrap/sveltestrap';

  import { onMount } from 'svelte';

  import CardRow from './CardRow.svelte';
  import SearchCard from './SearchCard.svelte';

  export let key;

  const csvToMap = (csv) => {
    map = csv.split('\n').map(row => row.split(','));
    rows = filterByKeyword();
  }
  const byKeyword = row => {
    let keywords = row[2];
    if (!keywords) return false;
    return keywords.toLowerCase().includes(search.toLowerCase());
  }
  const filterByKeyword = () => rows = map.filter(byKeyword);

  let search = 'backend';
  let src = './data/' + key + '.csv';
  let map = [];
  let rows = [];

  onMount(() => fetch(src).then(async res => map = csvToMap(await res.text())));
</script>

<CardRow header="Skills">
  <Container class="mb-2">
    <Input type="search" placeholder="Search Skills" bind:value={search} on:input={filterByKeyword} />
  </Container>
  {#each rows as row}
    <SearchCard name={row[0]} level={row[1]} />
  {/each}
</CardRow>