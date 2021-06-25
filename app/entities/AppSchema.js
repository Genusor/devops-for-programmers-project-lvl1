import { EntitySchema } from 'typeorm';

import App from './App.js';

export default new EntitySchema({
  name: 'apps',
  target: App,
  columns: {
    id: {
      primary: true,
      type: 'int',
      generated: true,
    },
    email: {
      type: 'varchar',
    },
    firstName: {
      type: 'varchar',
    }
  }
});
