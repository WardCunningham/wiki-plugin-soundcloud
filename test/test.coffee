# build time tests for soundcloud plugin
# see http://mochajs.org/

soundcloud = require '../client/soundcloud'
expect = require 'expect.js'

describe 'soundcloud plugin', ->

  describe 'expand', ->

    it 'can make itallic', ->
      result = soundcloud.expand 'hello *world*'
      expect(result).to.be 'hello <i>world</i>'
