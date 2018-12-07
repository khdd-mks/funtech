import riot from 'riot';
import route from 'riot-route';
require('../tags/todo.tag');

export default function(mainSelector) {
  const todoRoute = route.create();

  todoRoute('/todo', () => {
    riot.mount(mainSelector, 'todo');
  });

  return todoRoute;
}
