<todo3>

  <!-- layout -->
  <h3>{ opts.title }</h3>

  <menu2></menu2>

  <ul>
    <li each={ item, i in items }>{ item }</li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input">
    <button>Add #{ items.length + 1 }</button>
  </form>

  <!-- style -->
  <style>
    h3 {
      font-size: 14px;
    }
  </style>

  <!-- logic -->
  <script>
    // riotはimport不要 (というかimportするとコケる)
    //import riot from 'riot';
    require("./menu2.tag");

    riot.mount('menu2');

    this.items = []

    add(e) {
      e.preventDefault()
      var input = this.refs.input
      this.items.push(input.value)
      input.value = ''
    }
  </script>

</todo3>
