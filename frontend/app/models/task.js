import DS from 'ember-data';

export default DS.Model.extend({
    due_date: DS.attr(),
    priority: DS.attr(),
    completion_time: DS.attr(),
});
