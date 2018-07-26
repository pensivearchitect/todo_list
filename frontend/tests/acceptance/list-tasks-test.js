import { module, test } from 'qunit';
import { visit, currentURL } from '@ember/test-helpers';
import { setupApplicationTest } from 'ember-qunit';

module('Acceptance | list tasks', function(hooks) {
  setupApplicationTest(hooks);

  test('visiting /tasks', async function(assert) {
    await visit('/tasks');

    assert.equal(currentURL(), '/tasks');
  });
});
