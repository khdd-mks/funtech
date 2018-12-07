import riot from 'riot';
import route from 'riot-route';
require('../tags/todo2.tag');

export default function(mainSelector) {
  const todoRoute = route.create();

  todoRoute('/todo2', () => {
    riot.mount(mainSelector, 'todo2', { title: 'TODO 2' });
  });

  return todoRoute;
}
