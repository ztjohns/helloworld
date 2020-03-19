import Component from '@glimmer/component'
import { tracked } from '@glimmer/tracking'
import { computed } from '@ember/object'

g3t = (name, fn) ->
  return Object.defineProperty @, name, get: fn.bind(@)

class Foo extends Component

export default -> Foo
    firstName: tracked value: 'foo'
    lastName: tracked value: 'bar'

    fullName: computed 'lastName', 'firstName', ->
      return "#{@firstName} #{@lastName}"

    constructor: ->
      @super @, arguments...
      g3t.call @, 'afullname', -> 
        return "#{@firstName} #{@lastName}"
      g3t.call @, 'reverseReverse',->
        return "#{@lastName} #{@firstName}"