import DS from 'ember-data';

export default DS.JSONAPIAdapter.extend({
    // init() {
    //     this._super(...arguments);
    //     this.set('headers', {
    //         'Content-Type': 'application/json'
    //     });
    // },
    namespace: 'api/v1',
});
