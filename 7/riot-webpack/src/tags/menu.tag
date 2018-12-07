<menu>
  <button each={ target in targets } onclick={ parent.jump.bind(this, target.path) }>{ target.name }</button>

  <style>
    button {
      font-size: 14px;
    }
  </style>

  <script>
    import route from 'riot-route';

    this.targets = [
      { path: '/todo', name: 'TODO 1' },
      { path: '/todo2', name: 'TODO 2' },
      { path: '/todo3', name: 'TODO 3' },
    ];

    jump(path, e) {
      console.log(path);
      route(path);
    }
  </script>

</menu>
