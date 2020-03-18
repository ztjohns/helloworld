import Component from '@ember/component';
import { tracked } from '@glimmer/tracking';
import { computed } from '@ember/object';
export default Component.extend({
    firstName: tracked(),
    lastName: tracked(),
    fullName: computed('lastName', 'firstName', function() {
      return `${this.firstName} ${this.lastName}`;
    }),
    get afullname() {
        return `${this.firstName} ${this.lastName}`
    }

  });