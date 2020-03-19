import Component from '@ember/component'
import { tracked } from '@glimmer/tracking'
import { computed } from '@ember/object'

g3t = (name, fn) ->
  return Object.defineProperty @, name, get: fn.bind(@)

export default Component.extend
    firstName: tracked value: 'foo'
    lastName: tracked value: 'bar'

    fullName: computed 'lastName', 'firstName', ->
      return "#{@firstName} #{@lastName}"

    init: ->
      @_super arguments...
      g3t.call @, 'afullname', -> 
        return "#{@firstName} #{@lastName}"
      g3t.call @, 'reverseReverse',->
        return "#{@lastName} #{@firstName}"