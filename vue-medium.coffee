# Contenteditable directive
module.exports =
  twoWay: true
  params: ['mode']
  update: (newValue, oldValue) ->
    @mode = if @params.mode? then @params.mode + 'Mode' else 'richMode'
    @medium = new Medium
      element: @el
      mode: Medium[@mode]
    @medium.value newValue
    @medium.element.addEventListener 'keyup', =>
      @set @medium.value()
