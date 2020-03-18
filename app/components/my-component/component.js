import Component from '@ember/component';
import { tracked } from '@glimmer/tracking';
import { computed } from '@ember/object';

export default Component.extend({
    firstName: tracked(),
    lastName: null,
  
    // This computed property _implies_ that `firstName` and `lastName`
    // exist, but we don't know that without reading it.
    fullName: computed('lastName', function() {
      return `${this.firstName} ${this.lastName}`;
    })
  });