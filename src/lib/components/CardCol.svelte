<script>
  import { Col, Card } from '@sveltestrap/sveltestrap';
  
  export let body;
  export let center;

  export let xs;
  export let sm;
  export let md;
  export let lg;
  export let xl;
  export let xxl;
</script>

<Col xs={xs} sm={sm} md={md} lg={lg} xl={xl} xxl={xxl} class="mb-2 align-content-center">
  <Card body={body} style={center ? "text-align:center" : ""}><slot /></Card>
</Col>