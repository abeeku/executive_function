###
@preserve
FullCalendar v1.5.1
http://arshaw.com/fullcalendar/

Use fullcalendar.css for basic styling.
For event drag & drop, requires jQuery UI draggable.
For event resizing, requires jQuery UI resizable.

Copyright (c) 2011 Adam Shaw
Dual licensed under the MIT and GPL licenses, located in
MIT-LICENSE.txt and GPL-LICENSE.txt respectively.

Date: Sat Apr 9 14:09:51 2011 -0700
###

# display

# editing
#editable: false,
#disableDragging: false,
#disableResizing: false,

# event ajax

# time formats
# for event elements
# default

# locale

# jquery-ui theming

#selectable: false,

# right-to-left defaults

# method calling

# would like to have this logic in EventManager, but needs to happen before options are recursively extended
# TODO: look into memory leak implications

# function for adding/overriding defaults

# exports

# imports

# locals
# for making theme classes

# Main Rendering
#	-----------------------------------------------------------------------------

# needed for IE in a 0x0 iframe, b/c when it is resized, never triggers a windowResize

# called when we know the calendar couldn't be rendered when it was initialized,
# but we think it's ready now
# IE7 needs this so dimensions are calculated correctly
# !currentView.start makes sure this never happens more than once

# View Rendering
#	-----------------------------------------------------------------------------

# TODO: improve view switching (still weird transition in IE, and FF has whiteout problem)
# because setMinHeight might change the height before render (and subsequently setSize) is reached
# called before changing min-height. if called after, scroll state is reset (in Opera)
# needs to be 1 (not 0) for IE7, or else view dimensions miscalculated
# the calendar object
# after height has been set, will make absoluteViewElement's position=relative, then set to null
# called after setting min-height/overflow, so in final scroll state (for Opera)
# because renderEvents might temporarily change the height before setSize is reached

# view must render an entire new date range (and refetch/render events)
# responsible for clearing events

# view must resize (and rerender events)

# Resizing
#	-----------------------------------------------------------------------------
# todo: dateChanged?
# view has already been rendered
# add a delay
# in case the windowResize callback changes the height

# calendar must have been initialized in a 0x0 iframe that has just been resized

# Event Fetching/Rendering
#	-----------------------------------------------------------------------------

# fetches events if necessary, rerenders events if necessary (or if forced)
# will call reportEvents

# called when event data arrives

# called when a single event's data has been changed

# attempts to rerenderEvents

# Selection
#	-----------------------------------------------------------------------------
# safe to be called before renderView

# Date
#	-----------------------------------------------------------------------------
# provided 1 argument, a Date

# Misc
#	-----------------------------------------------------------------------------

# External Dragging
#	------------------------------------------------------------------------
# not already inside a calendar

# exports

# locals
# calendar method
# forget why
# why are we using smartProperty here?
# why are we using smartProperty here?

# exports

# imports

# locals

# Fetching
#	-----------------------------------------------------------------------------

# the fetcher is in charge. made its own async request

# the fetcher returned a new source. process it

# Sources
#	-----------------------------------------------------------------------------
# will eventually call reportEvents

# remove all client events from that source

# Manipulation
#	-----------------------------------------------------------------------------
# update an existing event
# getView???
# event._end would be null if event.end
# was null and event was just resized
# remove all

# clear all array sources
# an event ID

# remove events from array sources
# an event ID
# else, return all

# Loading State
#	-----------------------------------------------------------------------------

# Event Normalization
#	-----------------------------------------------------------------------------

# TODO: if there is no start date, return false to indicate an invalid event

# Utils
#	------------------------------------------------------------------------------

# TODO: repeat code, same code for event classNames

# Date Math
#-----------------------------------------------------------------------------
# prevents day overflow/underflow
# prevent infinite looping on invalid dates
# deals with daylight savings
# set to middle of day
# force d to be on check's YMD, for daylight savings purposes
# prevent infinite looping on invalid dates
# returns a Date with time 00:00:00 and dateOfMonth=1
# != 0
# d1 - d2

# Date Parsing
#-----------------------------------------------------------------------------
# ignoreTimezone defaults to true
# already a Date object
# a UNIX timestamp
# a UNIX timestamp

# TODO: never return invalid dates (like from new Date(<string>)), return null instead
# ignoreTimezone defaults to false
# derived from http://delete.me.uk/2005/03/iso8601.html
# TODO: for a know glitch/feature, read tests/issue_206_parseDate_dst.html
# returns minutes since start of day
# an hour
# a Date object

# Date Formatting
#-----------------------------------------------------------------------------

# TODO: use same function formatDate(date, [date2], format, [options])

# Event Date Math
#-----------------------------------------------------------------------------

# Event Sorting
#-----------------------------------------------------------------------------

# event rendering utilities

# event rendering calculation utilities
# the level index where seg should belong

# Event Element Binding
#-----------------------------------------------------------------------------

# Element Dimensions
#-----------------------------------------------------------------------------

# TODO: curCSS has been deprecated (jQuery 1.4.3 - 10/16/2010)

# why can't we just use .css() ? i forget

# Misc Utils
#-----------------------------------------------------------------------------

#TODO: arraySlice
#TODO: isFunction, grep ?
# get a camel-cased/namespaced property of an object

#
#function enableTextSelection(element) {
#	element
#		.attr('unselectable', 'off')
#		.css('MozUserSelect', '')
#		.unbind('selectstart.ui');
#}
#

# TODO: make a way that doesn't rely on order of classes

# exports

# imports

# exports

# imports

#TODO: when calendar's date starts out on a weekend, shouldn't happen

# exports

# imports

# exports
# for selection (kinda hacky)

# imports

# locals

# Rendering
#	------------------------------------------------------------
# need fc- for setDayID
# need fc- for setDayID
# marks first+last tr/th's
# marks first+last td's
# fc-last is done in updateCells
# could the cells' day-of-weeks need updating?

# Day clicking and binding
#	-----------------------------------------------------------
# if selectable, SelectionManager will worry about dayClick
# TODO: maybe use .data

# Semi-transparent Overlay Helpers
#	------------------------------------------------------
# overlayEnd is exclusive
# row1,col1 is inclusive

# Selection
#	-----------------------------------------------------------------------
# rebuild every time???

# External Dragging
#	-----------------------------------------------------------------------

# Utilities
#	--------------------------------------------------------

# what about weekends in middle of week?

# exports
# for DayEventRenderer

# imports

#var setOverflowHidden = t.setOverflowHidden;

# Rendering
#	--------------------------------------------------------------------
# not needed anymore

# needs to be after, because resizableDayEvent might stopImmediatePropagation on click

# Dragging
#	----------------------------------------------------------------------------

#setOverflowHidden(true);

#setOverflowHidden(false);
# clear IE opacity side-effects

#setOverflowHidden(false);

# exports

# imports

# exports

# imports

# TODO: make it work in quirks mode (event corners, all-day height)
# TODO: test liquid width, especially in IE6

# exports
# !!??
# selection mousedown hack

# imports

# locals
# TODO: what if slotHeight changes? (see issue 650)
# no weekends (int)
# day index sign / translate

# Rendering
#	-----------------------------------------------------------------------------
# fc- needed for setDayID
# fc- needed for setDayID
# in jQuery 1.4, we can just do $()
# including divider
# total body height, including borders
# when scrollbars
# when no scrollbars. +1 for bottom border
# +1 for border
# needs to be done after axisWidth (for IE7)
#slotTable.width(slotTableWidth);
# +1 for the border
# overrides any previous scroll state made by the browser

# Slot/Day clicking and binding
#	-----------------------------------------------------------------------
# if selectable, SelectionManager will worry about dayClick
# TODO: maybe use data

# Semi-transparent Overlay Helpers
#	-----------------------------------------------------
# endDate is exclusive
# only for all-day?
# only use it for horizontal coords

# Coordinate Utilities
#	-----------------------------------------------------------------------------
# "cell" terminology is now confusing
# returns dates with 00:00:00

# get the Y coordinate of the given time on the given day (both Date objects)
# both date objects. day holds 00:00 of current day
#.position().top; // need this optimization???

# Selection
#	---------------------------------------------------------------------------------
# only for all-day
# only works when times are on same day
# only for horizontal coords
# protect against selections that are entirely before or after visible range
# conside rect a "seg" now
#
# needs to be after appended
# ev.which==1 means left mouse button

# External Dragging
#	--------------------------------------------------------------------------------

# exports
# for DayEventRenderer

# imports

#var setOverflowHidden = t.setOverflowHidden;
# TODO: streamline binding architecture

# Rendering
#	----------------------------------------------------------------------------
# no params means set to viewHeight
# not needed anymore

# renders events in the 'time slots' at the bottom

# calculate position/dimensions, create html
# TODO: move this to CSS

# indented and thin

# moderately wide, aligned left still
# 12 is the predicted width of resizer =

# can be entire width, aligned left
# leftmost possible
# indentation
# rtl
# faster than html()

# retrieve elements, run through eventRender callback, bind event handlers
# faster than eq()
# for lazySegBind

# record event sides and title positions

# set all positions/dimensions at once

# not enough room for title, put it in the time header
# close inner

# needs to be after, because resizableDayEvent might stopImmediatePropagation on click

# Dragging
#	-----------------------------------------------------------------------------------

# when event starts out FULL-DAY
# use whatever the month view was using

#setOverflowHidden(true);

# on full-days

# mouse is over bottom slots

# convert event to temporary slot-event
# don't use entire width

#setOverflowHidden(false);

# hasn't moved or is out of bounds (draggable has already reverted)
# clear IE opacity side-effects

# changed!

#setOverflowHidden(false);

# when event starts out IN TIMESLOTS

# over full days

# convert to temporary all-day event

# on slots

# changed!

# either no change or out-of-bounds (draggable has already reverted)
# clear IE opacity side-effects
# sometimes fast drags make event revert to wrong position

# convert back to original slot-event
# show() was causing display=inline

# Resizing
#	--------------------------------------------------------------------------------------

# don't rely on ui.size.height, doesn't take grid into account
# no change, so don't display time range

# BUG: if event was really short, need to put title back in span

# exports

#t.setOverflowHidden = setOverflowHidden;

# t.title
# t.start, t.end
# t.visStart, t.visEnd

# imports
# in EventManager

# locals

#
#	function setOverflowHidden(bool) {
#		element.css('overflow', bool ? 'hidden' : '');
#	}
#	
# but also need to make sure the seg.isEnd == true

# Event Data
#	------------------------------------------------------------------------------

# report when view receives new events
# events are already normalized at this point

# returns a Date object for an event's end

# Event Elements
#	------------------------------------------------------------------------------

# report when view creates an element for an event

# attaches eventClick, eventMouseover, eventMouseout

# TODO: don't fire eventMouseover/eventMouseout *while* dragging is occuring (on subject element)
# TODO: same for resizing

# Event Modification Reporting
#	---------------------------------------------------------------------------------

# TODO: investigate cases where this inverse technique might not work

# TODO: investigate cases where this inverse technique might not work

# Event Modification Math
#	---------------------------------------------------------------------------------

# exports

# imports
#TODO: streamline this

# Rendering
#	-----------------------------------------------------------------------------
# faster than .html()

# set row heights, calculate event tops (in relation to row top)

# loop through segs in a row
# faster than .html()
# also sets seg.left and seg.outerWidth

# calculate desired position/dimensions, create html
# makes hit area a lot better for IE6/7
# needs to be exclusive
# sets seg.element
# faster than .eq()

# retrieve elements, run through eventRender callback, bind handlers
# for lazySegBind
# also sets seg.key

# record event horizontal sides

# record event heights
# created in daySegCalcHSides
# optimal selector?
# !!?? but this means the element needs position:relative if in a table cell!!!!
# also triggers eventAfterRender

# Resizing
#	-----------------------------------------------------------------------------------

# TODO: look into using jquery-ui mouse widget for this stuff
# prevent native <a> selection for IE
# prevent native <a> selection for others
# prevent link from being visited (only method that worked in IE6)
# prevent fullcalendar eventClick handler from being called
# (eventElementHandlers needs to be bound after resizableDayEvent)
# needs to be left mouse button
# hack for all-day area in agenda views
# coordinate grid already rebuild at hoverListener.start

# event redraw will clear helpers

# otherwise, the drag handler already restored the old events
# make this happen after the element's click event

#BUG: unselect needs to be triggered when events are dragged+dropped

# exports

# imports

# locals

# unselectAuto
# could be optimized to stop after first match
# not really a generic manager method, oh well
# this is hacky and sort of weird
# which==1 means left mouse button
# TODO: maybe put cellDate/cellIsAllDay info in cell

# exports

# locals
# row1,col1 is inclusive

# a future calendar might have many sources.        

#http://arshaw.com/fullcalendar/docs/event_ui/eventDrop/

# http://arshaw.com/fullcalendar/docs/event_ui/eventResize/

# http://arshaw.com/fullcalendar/docs/mouse/eventClick/

# would like a lightbox here.
updateEvent = (the_event) ->
  $.update "/events/" + the_event.id,
    event:
      title: the_event.title
      starts_at: "" + the_event.start
      ends_at: "" + the_event.end
      description: the_event.description
  , (reponse) ->
    alert "successfully updated task."

(($, undefined_) ->
  setDefaults = (d) ->
    $.extend true, defaults, d
  Calendar = (element, options, eventSources) ->
    render = (inc) ->
      unless content
        initialRender()
      else
        calcSize()
        markSizesDirty()
        markEventsDirty()
        renderView inc
    initialRender = ->
      tm = (if options.theme then "ui" else "fc")
      element.addClass "fc"
      element.addClass "fc-rtl"  if options.isRTL
      element.addClass "ui-widget"  if options.theme
      content = $("<div class='fc-content' style='position:relative'/>").prependTo(element)
      header = new Header(t, options)
      headerElement = header.render()
      element.prepend headerElement  if headerElement
      changeView options.defaultView
      $(window).resize windowResize
      lateRender()  unless bodyVisible()
    lateRender = ->
      setTimeout (->
        renderView()  if not currentView.start and bodyVisible()
      ), 0
    destroy = ->
      $(window).unbind "resize", windowResize
      header.destroy()
      content.remove()
      element.removeClass "fc fc-rtl ui-widget"
    elementVisible = ->
      _element.offsetWidth isnt 0
    bodyVisible = ->
      $("body")[0].offsetWidth isnt 0
    changeView = (newViewName) ->
      if not currentView or newViewName isnt currentView.name
        ignoreWindowResize++
        unselect()
        oldView = currentView
        newViewElement = undefined
        if oldView
          (oldView.beforeHide or noop)()
          setMinHeight content, content.height()
          oldView.element.hide()
        else
          setMinHeight content, 1
        content.css "overflow", "hidden"
        currentView = viewInstances[newViewName]
        if currentView
          currentView.element.show()
        else
          currentView = viewInstances[newViewName] = new fcViews[newViewName](newViewElement = absoluteViewElement = $("<div class='fc-view fc-view-" + newViewName + "' style='position:absolute'/>").appendTo(content), t)
        header.deactivateButton oldView.name  if oldView
        header.activateButton newViewName
        renderView()
        content.css "overflow", ""
        setMinHeight content, 1  if oldView
        (currentView.afterShow or noop)()  unless newViewElement
        ignoreWindowResize--
    renderView = (inc) ->
      if elementVisible()
        ignoreWindowResize++
        unselect()
        calcSize()  if suggestedViewHeight is `undefined`
        forceEventRender = false
        if not currentView.start or inc or date < currentView.start or date >= currentView.end
          currentView.render date, inc or 0
          setSize true
          forceEventRender = true
        else if currentView.sizeDirty
          currentView.clearEvents()
          setSize()
          forceEventRender = true
        else if currentView.eventsDirty
          currentView.clearEvents()
          forceEventRender = true
        currentView.sizeDirty = false
        currentView.eventsDirty = false
        updateEvents forceEventRender
        elementOuterWidth = element.outerWidth()
        header.updateTitle currentView.title
        today = new Date()
        if today >= currentView.start and today < currentView.end
          header.disableButton "today"
        else
          header.enableButton "today"
        ignoreWindowResize--
        currentView.trigger "viewDisplay", _element
    updateSize = ->
      markSizesDirty()
      if elementVisible()
        calcSize()
        setSize()
        unselect()
        currentView.clearEvents()
        currentView.renderEvents events
        currentView.sizeDirty = false
    markSizesDirty = ->
      $.each viewInstances, (i, inst) ->
        inst.sizeDirty = true

    calcSize = ->
      if options.contentHeight
        suggestedViewHeight = options.contentHeight
      else if options.height
        suggestedViewHeight = options.height - ((if headerElement then headerElement.height() else 0)) - vsides(content)
      else
        suggestedViewHeight = Math.round(content.width() / Math.max(options.aspectRatio, .5))
    setSize = (dateChanged) ->
      ignoreWindowResize++
      currentView.setHeight suggestedViewHeight, dateChanged
      if absoluteViewElement
        absoluteViewElement.css "position", "relative"
        absoluteViewElement = null
      currentView.setWidth content.width(), dateChanged
      ignoreWindowResize--
    windowResize = ->
      unless ignoreWindowResize
        if currentView.start
          uid = ++resizeUID
          setTimeout (->
            if uid is resizeUID and not ignoreWindowResize and elementVisible()
              unless elementOuterWidth is (elementOuterWidth = element.outerWidth())
                ignoreWindowResize++
                updateSize()
                currentView.trigger "windowResize", _element
                ignoreWindowResize--
          ), 200
        else
          lateRender()
    updateEvents = (forceRender) ->
      if not options.lazyFetching or isFetchNeeded(currentView.visStart, currentView.visEnd)
        refetchEvents()
      else rerenderEvents()  if forceRender
    refetchEvents = ->
      fetchEvents currentView.visStart, currentView.visEnd
    reportEvents = (_events) ->
      events = _events
      rerenderEvents()
    reportEventChange = (eventID) ->
      rerenderEvents eventID
    rerenderEvents = (modifiedEventID) ->
      markEventsDirty()
      if elementVisible()
        currentView.clearEvents()
        currentView.renderEvents events, modifiedEventID
        currentView.eventsDirty = false
    markEventsDirty = ->
      $.each viewInstances, (i, inst) ->
        inst.eventsDirty = true

    select = (start, end, allDay) ->
      currentView.select start, end, (if allDay is `undefined` then true else allDay)
    unselect = ->
      currentView.unselect()  if currentView
    prev = ->
      renderView -1
    next = ->
      renderView 1
    prevYear = ->
      addYears date, -1
      renderView()
    nextYear = ->
      addYears date, 1
      renderView()
    today = ->
      date = new Date()
      renderView()
    gotoDate = (year, month, dateOfMonth) ->
      if year instanceof Date
        date = cloneDate(year)
      else
        setYMD date, year, month, dateOfMonth
      renderView()
    incrementDate = (years, months, days) ->
      addYears date, years  if years isnt `undefined`
      addMonths date, months  if months isnt `undefined`
      addDays date, days  if days isnt `undefined`
      renderView()
    getDate = ->
      cloneDate date
    getView = ->
      currentView
    option = (name, value) ->
      return options[name]  if value is `undefined`
      if name is "height" or name is "contentHeight" or name is "aspectRatio"
        options[name] = value
        updateSize()
    trigger = (name, thisObj) ->
      options[name].apply thisObj or _element, Array::slice.call(arguments_, 2)  if options[name]
    t = this
    t.options = options
    t.render = render
    t.destroy = destroy
    t.refetchEvents = refetchEvents
    t.reportEvents = reportEvents
    t.reportEventChange = reportEventChange
    t.rerenderEvents = rerenderEvents
    t.changeView = changeView
    t.select = select
    t.unselect = unselect
    t.prev = prev
    t.next = next
    t.prevYear = prevYear
    t.nextYear = nextYear
    t.today = today
    t.gotoDate = gotoDate
    t.incrementDate = incrementDate
    t.formatDate = (format, date) ->
      formatDate format, date, options

    t.formatDates = (format, date1, date2) ->
      formatDates format, date1, date2, options

    t.getDate = getDate
    t.getView = getView
    t.option = option
    t.trigger = trigger
    EventManager.call t, options, eventSources
    isFetchNeeded = t.isFetchNeeded
    fetchEvents = t.fetchEvents
    _element = element[0]
    header = undefined
    headerElement = undefined
    content = undefined
    tm = undefined
    currentView = undefined
    viewInstances = {}
    elementOuterWidth = undefined
    suggestedViewHeight = undefined
    absoluteViewElement = undefined
    resizeUID = 0
    ignoreWindowResize = 0
    date = new Date()
    events = []
    _dragElement = undefined
    setYMD date, options.year, options.month, options.date
    if options.droppable
      $(document).bind("dragstart", (ev, ui) ->
        _e = ev.target
        e = $(_e)
        unless e.parents(".fc").length
          accept = options.dropAccept
          if (if $.isFunction(accept) then accept.call(_e, e) else e.is(accept))
            _dragElement = _e
            currentView.dragStart _dragElement, ev, ui
      ).bind "dragstop", (ev, ui) ->
        if _dragElement
          currentView.dragStop _dragElement, ev, ui
          _dragElement = null

  Header = (calendar, options) ->
    render = ->
      tm = (if options.theme then "ui" else "fc")
      sections = options.header
      if sections
        element = $("<table class='fc-header' style='width:100%'/>").append($("<tr/>").append(renderSection("left")).append(renderSection("center")).append(renderSection("right")))
        element
    destroy = ->
      element.remove()
    renderSection = (position) ->
      e = $("<td class='fc-header-" + position + "'/>")
      buttonStr = options.header[position]
      if buttonStr
        $.each buttonStr.split(" "), (i) ->
          e.append "<span class='fc-header-space'/>"  if i > 0
          prevButton = undefined
          $.each @split(","), (j, buttonName) ->
            if buttonName is "title"
              e.append "<span class='fc-header-title'><h2>&nbsp;</h2></span>"
              prevButton.addClass tm + "-corner-right"  if prevButton
              prevButton = null
            else
              buttonClick = undefined
              if calendar[buttonName]
                buttonClick = calendar[buttonName]
              else if fcViews[buttonName]
                buttonClick = ->
                  button.removeClass tm + "-state-hover"
                  calendar.changeView buttonName
              if buttonClick
                icon = (if options.theme then smartProperty(options.buttonIcons, buttonName) else null)
                text = smartProperty(options.buttonText, buttonName)
                button = $("<span class='fc-button fc-button-" + buttonName + " " + tm + "-state-default'>" + "<span class='fc-button-inner'>" + "<span class='fc-button-content'>" + ((if icon then "<span class='fc-icon-wrap'>" + "<span class='ui-icon ui-icon-" + icon + "'/>" + "</span>" else text)) + "</span>" + "<span class='fc-button-effect'><span></span></span>" + "</span>" + "</span>")
                if button
                  button.click(->
                    buttonClick()  unless button.hasClass(tm + "-state-disabled")
                  ).mousedown(->
                    button.not("." + tm + "-state-active").not("." + tm + "-state-disabled").addClass tm + "-state-down"
                  ).mouseup(->
                    button.removeClass tm + "-state-down"
                  ).hover(->
                    button.not("." + tm + "-state-active").not("." + tm + "-state-disabled").addClass tm + "-state-hover"
                  , ->
                    button.removeClass(tm + "-state-hover").removeClass tm + "-state-down"
                  ).appendTo e
                  button.addClass tm + "-corner-left"  unless prevButton
                  prevButton = button

          prevButton.addClass tm + "-corner-right"  if prevButton

      e
    updateTitle = (html) ->
      element.find("h2").html html
    activateButton = (buttonName) ->
      element.find("span.fc-button-" + buttonName).addClass tm + "-state-active"
    deactivateButton = (buttonName) ->
      element.find("span.fc-button-" + buttonName).removeClass tm + "-state-active"
    disableButton = (buttonName) ->
      element.find("span.fc-button-" + buttonName).addClass tm + "-state-disabled"
    enableButton = (buttonName) ->
      element.find("span.fc-button-" + buttonName).removeClass tm + "-state-disabled"
    t = this
    t.render = render
    t.destroy = destroy
    t.updateTitle = updateTitle
    t.activateButton = activateButton
    t.deactivateButton = deactivateButton
    t.disableButton = disableButton
    t.enableButton = enableButton
    element = $([])
    tm = undefined
  EventManager = (options, _sources) ->
    isFetchNeeded = (start, end) ->
      not rangeStart or start < rangeStart or end > rangeEnd
    fetchEvents = (start, end) ->
      rangeStart = start
      rangeEnd = end
      cache = []
      fetchID = ++currentFetchID
      len = sources.length
      pendingSourceCnt = len
      i = 0

      while i < len
        fetchEventSource sources[i], fetchID
        i++
    fetchEventSource = (source, fetchID) ->
      _fetchEventSource source, (events) ->
        if fetchID is currentFetchID
          if events
            i = 0

            while i < events.length
              events[i].source = source
              normalizeEvent events[i]
              i++
            cache = cache.concat(events)
          pendingSourceCnt--
          reportEvents cache  unless pendingSourceCnt

    _fetchEventSource = (source, callback) ->
      i = undefined
      fetchers = fc.sourceFetchers
      res = undefined
      i = 0
      while i < fetchers.length
        res = fetchers[i](source, rangeStart, rangeEnd, callback)
        if res is true
          return
        else if typeof res is "object"
          _fetchEventSource res, callback
          return
        i++
      events = source.events
      if events
        if $.isFunction(events)
          pushLoading()
          events cloneDate(rangeStart), cloneDate(rangeEnd), (events) ->
            callback events
            popLoading()

        else if $.isArray(events)
          callback events
        else
          callback()
      else
        url = source.url
        if url
          success = source.success
          error = source.error
          complete = source.complete
          data = $.extend({}, source.data or {})
          startParam = firstDefined(source.startParam, options.startParam)
          endParam = firstDefined(source.endParam, options.endParam)
          data[startParam] = Math.round(+rangeStart / 1000)  if startParam
          data[endParam] = Math.round(+rangeEnd / 1000)  if endParam
          pushLoading()
          $.ajax $.extend({}, ajaxDefaults, source,
            data: data
            success: (events) ->
              events = events or []
              res = applyAll(success, this, arguments_)
              events = res  if $.isArray(res)
              callback events

            error: ->
              applyAll error, this, arguments_
              callback()

            complete: ->
              applyAll complete, this, arguments_
              popLoading()
          )
        else
          callback()
    addEventSource = (source) ->
      source = _addEventSource(source)
      if source
        pendingSourceCnt++
        fetchEventSource source, currentFetchID
    _addEventSource = (source) ->
      if $.isFunction(source) or $.isArray(source)
        source = events: source
      else source = url: source  if typeof source is "string"
      if typeof source is "object"
        normalizeSource source
        sources.push source
        source
    removeEventSource = (source) ->
      sources = $.grep(sources, (src) ->
        not isSourcesEqual(src, source)
      )
      cache = $.grep(cache, (e) ->
        not isSourcesEqual(e.source, source)
      )
      reportEvents cache
    updateEvent = (event) ->
      i = undefined
      len = cache.length
      e = undefined
      defaultEventEnd = getView().defaultEventEnd
      startDelta = event.start - event._start
      endDelta = (if event.end then (event.end - (event._end or defaultEventEnd(event))) else 0)
      i = 0
      while i < len
        e = cache[i]
        if e._id is event._id and e isnt event
          e.start = new Date(+e.start + startDelta)
          if event.end
            if e.end
              e.end = new Date(+e.end + endDelta)
            else
              e.end = new Date(+defaultEventEnd(e) + endDelta)
          else
            e.end = null
          e.title = event.title
          e.url = event.url
          e.allDay = event.allDay
          e.className = event.className
          e.editable = event.editable
          e.color = event.color
          e.backgroudColor = event.backgroudColor
          e.borderColor = event.borderColor
          e.textColor = event.textColor
          normalizeEvent e
        i++
      normalizeEvent event
      reportEvents cache
    renderEvent = (event, stick) ->
      normalizeEvent event
      unless event.source
        if stick
          stickySource.events.push event
          event.source = stickySource
        cache.push event
      reportEvents cache
    removeEvents = (filter) ->
      unless filter
        cache = []
        i = 0

        while i < sources.length
          sources[i].events = []  if $.isArray(sources[i].events)
          i++
      else
        unless $.isFunction(filter)
          id = filter + ""
          filter = (e) ->
            e._id is id
        cache = $.grep(cache, filter, true)
        i = 0

        while i < sources.length
          sources[i].events = $.grep(sources[i].events, filter, true)  if $.isArray(sources[i].events)
          i++
      reportEvents cache
    clientEvents = (filter) ->
      if $.isFunction(filter)
        return $.grep(cache, filter)
      else if filter
        filter += ""
        return $.grep(cache, (e) ->
          e._id is filter
        )
      cache
    pushLoading = ->
      trigger "loading", null, true  unless loadingLevel++
    popLoading = ->
      trigger "loading", null, false  unless --loadingLevel
    normalizeEvent = (event) ->
      source = event.source or {}
      ignoreTimezone = firstDefined(source.ignoreTimezone, options.ignoreTimezone)
      event._id = event._id or ((if event.id is `undefined` then "_fc" + eventGUID++ else event.id + ""))
      if event.date
        event.start = event.date  unless event.start
        delete event.date
      event._start = cloneDate(event.start = parseDate(event.start, ignoreTimezone))
      event.end = parseDate(event.end, ignoreTimezone)
      event.end = null  if event.end and event.end <= event.start
      event._end = (if event.end then cloneDate(event.end) else null)
      event.allDay = firstDefined(source.allDayDefault, options.allDayDefault)  if event.allDay is `undefined`
      if event.className
        event.className = event.className.split(/\s+/)  if typeof event.className is "string"
      else
        event.className = []
    normalizeSource = (source) ->
      if source.className
        source.className = source.className.split(/\s+/)  if typeof source.className is "string"
      else
        source.className = []
      normalizers = fc.sourceNormalizers
      i = 0

      while i < normalizers.length
        normalizers[i] source
        i++
    isSourcesEqual = (source1, source2) ->
      source1 and source2 and getSourcePrimitive(source1) is getSourcePrimitive(source2)
    getSourcePrimitive = (source) ->
      ((if (typeof source is "object") then (source.events or source.url) else "")) or source
    t = this
    t.isFetchNeeded = isFetchNeeded
    t.fetchEvents = fetchEvents
    t.addEventSource = addEventSource
    t.removeEventSource = removeEventSource
    t.updateEvent = updateEvent
    t.renderEvent = renderEvent
    t.removeEvents = removeEvents
    t.clientEvents = clientEvents
    t.normalizeEvent = normalizeEvent
    trigger = t.trigger
    getView = t.getView
    reportEvents = t.reportEvents
    stickySource = events: []
    sources = [stickySource]
    rangeStart = undefined
    rangeEnd = undefined
    currentFetchID = 0
    pendingSourceCnt = 0
    loadingLevel = 0
    cache = []
    i = 0

    while i < _sources.length
      _addEventSource _sources[i]
      i++
  addYears = (d, n, keepTime) ->
    d.setFullYear d.getFullYear() + n
    clearTime d  unless keepTime
    d
  addMonths = (d, n, keepTime) ->
    if +d
      m = d.getMonth() + n
      check = cloneDate(d)
      check.setDate 1
      check.setMonth m
      d.setMonth m
      clearTime d  unless keepTime
      d.setDate d.getDate() + ((if d < check then 1 else -1))  until d.getMonth() is check.getMonth()
    d
  addDays = (d, n, keepTime) ->
    if +d
      dd = d.getDate() + n
      check = cloneDate(d)
      check.setHours 9
      check.setDate dd
      d.setDate dd
      clearTime d  unless keepTime
      fixDate d, check
    d
  fixDate = (d, check) ->
    d.setTime +d + ((if d < check then 1 else -1)) * HOUR_MS  until d.getDate() is check.getDate()  if +d
  addMinutes = (d, n) ->
    d.setMinutes d.getMinutes() + n
    d
  clearTime = (d) ->
    d.setHours 0
    d.setMinutes 0
    d.setSeconds 0
    d.setMilliseconds 0
    d
  cloneDate = (d, dontKeepTime) ->
    return clearTime(new Date(+d))  if dontKeepTime
    new Date(+d)
  zeroDate = ->
    i = 0
    d = undefined
    loop
      d = new Date(1970, i++, 1)
      break unless d.getHours()
    d
  skipWeekend = (date, inc, excl) ->
    inc = inc or 1
    addDays date, inc  while not date.getDay() or (excl and date.getDay() is 1 or not excl and date.getDay() is 6)
    date
  dayDiff = (d1, d2) ->
    Math.round (cloneDate(d1, true) - cloneDate(d2, true)) / DAY_MS
  setYMD = (date, y, m, d) ->
    if y isnt `undefined` and y isnt date.getFullYear()
      date.setDate 1
      date.setMonth 0
      date.setFullYear y
    if m isnt `undefined` and m isnt date.getMonth()
      date.setDate 1
      date.setMonth m
    date.setDate d  if d isnt `undefined`
  parseDate = (s, ignoreTimezone) ->
    return s  if typeof s is "object"
    return new Date(s * 1000)  if typeof s is "number"
    if typeof s is "string"
      return new Date(parseFloat(s) * 1000)  if s.match(/^\d+(\.\d+)?$/)
      ignoreTimezone = true  if ignoreTimezone is `undefined`
      return parseISO8601(s, ignoreTimezone) or ((if s then new Date(s) else null))
    null
  parseISO8601 = (s, ignoreTimezone) ->
    m = s.match(/^([0-9]{4})(-([0-9]{2})(-([0-9]{2})([T ]([0-9]{2}):([0-9]{2})(:([0-9]{2})(\.([0-9]+))?)?(Z|(([-+])([0-9]{2})(:?([0-9]{2}))?))?)?)?)?$/)
    return null  unless m
    date = new Date(m[1], 0, 1)
    if ignoreTimezone or not m[14]
      check = new Date(m[1], 0, 1, 9, 0)
      if m[3]
        date.setMonth m[3] - 1
        check.setMonth m[3] - 1
      if m[5]
        date.setDate m[5]
        check.setDate m[5]
      fixDate date, check
      date.setHours m[7]  if m[7]
      date.setMinutes m[8]  if m[8]
      date.setSeconds m[10]  if m[10]
      date.setMilliseconds Number("0." + m[12]) * 1000  if m[12]
      fixDate date, check
    else
      date.setUTCFullYear m[1], (if m[3] then m[3] - 1 else 0), m[5] or 1
      date.setUTCHours m[7] or 0, m[8] or 0, m[10] or 0, (if m[12] then Number("0." + m[12]) * 1000 else 0)
      offset = Number(m[16]) * 60 + ((if m[18] then Number(m[18]) else 0))
      offset *= (if m[15] is "-" then 1 else -1)
      date = new Date(+date + (offset * 60 * 1000))
    date
  parseTime = (s) ->
    return s * 60  if typeof s is "number"
    return s.getHours() * 60 + s.getMinutes()  if typeof s is "object"
    m = s.match(/(\d+)(?::(\d+))?\s*(\w+)?/)
    if m
      h = parseInt(m[1], 10)
      if m[3]
        h %= 12
        h += 12  if m[3].toLowerCase().charAt(0) is "p"
      h * 60 + ((if m[2] then parseInt(m[2], 10) else 0))
  formatDate = (date, format, options) ->
    formatDates date, null, format, options
  formatDates = (date1, date2, format, options) ->
    options = options or defaults
    date = date1
    otherDate = date2
    i = undefined
    len = format.length
    c = undefined
    i2 = undefined
    formatter = undefined
    res = ""
    i = 0
    while i < len
      c = format.charAt(i)
      if c is "'"
        i2 = i + 1
        while i2 < len
          if format.charAt(i2) is "'"
            if date
              if i2 is i + 1
                res += "'"
              else
                res += format.substring(i + 1, i2)
              i = i2
            break
          i2++
      else if c is "("
        i2 = i + 1
        while i2 < len
          if format.charAt(i2) is ")"
            subres = formatDate(date, format.substring(i + 1, i2), options)
            res += subres  if parseInt(subres.replace(/\D/, ""), 10)
            i = i2
            break
          i2++
      else if c is "["
        i2 = i + 1
        while i2 < len
          if format.charAt(i2) is "]"
            subformat = format.substring(i + 1, i2)
            subres = formatDate(date, subformat, options)
            res += subres  unless subres is formatDate(otherDate, subformat, options)
            i = i2
            break
          i2++
      else if c is "{"
        date = date2
        otherDate = date1
      else if c is "}"
        date = date1
        otherDate = date2
      else
        i2 = len
        while i2 > i
          if formatter = dateFormatters[format.substring(i, i2)]
            res += formatter(date, options)  if date
            i = i2 - 1
            break
          i2--
        res += c  if date  if i2 is i
      i++
    res
  exclEndDay = (event) ->
    if event.end
      _exclEndDay event.end, event.allDay
    else
      addDays cloneDate(event.start), 1
  _exclEndDay = (end, allDay) ->
    end = cloneDate(end)
    (if allDay or end.getHours() or end.getMinutes() then addDays(end, 1) else clearTime(end))
  segCmp = (a, b) ->
    (b.msLength - a.msLength) * 100 + (a.event.start - b.event.start)
  segsCollide = (seg1, seg2) ->
    seg1.end > seg2.start and seg1.start < seg2.end
  sliceSegs = (events, visEventEnds, start, end) ->
    segs = []
    i = undefined
    len = events.length
    event = undefined
    eventStart = undefined
    eventEnd = undefined
    segStart = undefined
    segEnd = undefined
    isStart = undefined
    isEnd = undefined
    i = 0
    while i < len
      event = events[i]
      eventStart = event.start
      eventEnd = visEventEnds[i]
      if eventEnd > start and eventStart < end
        if eventStart < start
          segStart = cloneDate(start)
          isStart = false
        else
          segStart = eventStart
          isStart = true
        if eventEnd > end
          segEnd = cloneDate(end)
          isEnd = false
        else
          segEnd = eventEnd
          isEnd = true
        segs.push
          event: event
          start: segStart
          end: segEnd
          isStart: isStart
          isEnd: isEnd
          msLength: segEnd - segStart

      i++
    segs.sort segCmp
  stackSegs = (segs) ->
    levels = []
    i = undefined
    len = segs.length
    seg = undefined
    j = undefined
    collide = undefined
    k = undefined
    i = 0
    while i < len
      seg = segs[i]
      j = 0
      loop
        collide = false
        if levels[j]
          k = 0
          while k < levels[j].length
            if segsCollide(levels[j][k], seg)
              collide = true
              break
            k++
        if collide
          j++
        else
          break
      if levels[j]
        levels[j].push seg
      else
        levels[j] = [seg]
      i++
    levels
  lazySegBind = (container, segs, bindHandlers) ->
    container.unbind("mouseover").mouseover (ev) ->
      parent = ev.target
      e = undefined
      i = undefined
      seg = undefined
      until parent is this
        e = parent
        parent = parent.parentNode
      if (i = e._fci) isnt `undefined`
        e._fci = `undefined`
        seg = segs[i]
        bindHandlers seg.event, seg.element, seg
        $(ev.target).trigger ev
      ev.stopPropagation()

  setOuterWidth = (element, width, includeMargins) ->
    i = 0
    e = undefined

    while i < element.length
      e = $(element[i])
      e.width Math.max(0, width - hsides(e, includeMargins))
      i++
  setOuterHeight = (element, height, includeMargins) ->
    i = 0
    e = undefined

    while i < element.length
      e = $(element[i])
      e.height Math.max(0, height - vsides(e, includeMargins))
      i++
  hsides = (element, includeMargins) ->
    hpadding(element) + hborders(element) + ((if includeMargins then hmargins(element) else 0))
  hpadding = (element) ->
    (parseFloat($.curCSS(element[0], "paddingLeft", true)) or 0) + (parseFloat($.curCSS(element[0], "paddingRight", true)) or 0)
  hmargins = (element) ->
    (parseFloat($.curCSS(element[0], "marginLeft", true)) or 0) + (parseFloat($.curCSS(element[0], "marginRight", true)) or 0)
  hborders = (element) ->
    (parseFloat($.curCSS(element[0], "borderLeftWidth", true)) or 0) + (parseFloat($.curCSS(element[0], "borderRightWidth", true)) or 0)
  vsides = (element, includeMargins) ->
    vpadding(element) + vborders(element) + ((if includeMargins then vmargins(element) else 0))
  vpadding = (element) ->
    (parseFloat($.curCSS(element[0], "paddingTop", true)) or 0) + (parseFloat($.curCSS(element[0], "paddingBottom", true)) or 0)
  vmargins = (element) ->
    (parseFloat($.curCSS(element[0], "marginTop", true)) or 0) + (parseFloat($.curCSS(element[0], "marginBottom", true)) or 0)
  vborders = (element) ->
    (parseFloat($.curCSS(element[0], "borderTopWidth", true)) or 0) + (parseFloat($.curCSS(element[0], "borderBottomWidth", true)) or 0)
  setMinHeight = (element, height) ->
    height = ((if typeof height is "number" then height + "px" else height))
    element.each (i, _element) ->
      _element.style.cssText += ";min-height:" + height + ";_height:" + height

  noop = ->
  cmp = (a, b) ->
    a - b
  arrayMax = (a) ->
    Math.max.apply Math, a
  zeroPad = (n) ->
    ((if n < 10 then "0" else "")) + n
  smartProperty = (obj, name) ->
    return obj[name]  if obj[name] isnt `undefined`
    parts = name.split(/(?=[A-Z])/)
    i = parts.length - 1
    res = undefined
    while i >= 0
      res = obj[parts[i].toLowerCase()]
      return res  if res isnt `undefined`
      i--
    obj[""]
  htmlEscape = (s) ->
    s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/'/g, "&#039;").replace(/"/g, "&quot;").replace /\n/g, "<br />"
  cssKey = (_element) ->
    _element.id + "/" + _element.className + "/" + _element.style.cssText.replace(/(^|;)\s*(top|left|width|height)\s*:[^;]*/g, "")
  disableTextSelection = (element) ->
    element.attr("unselectable", "on").css("MozUserSelect", "none").bind "selectstart.ui", ->
      false

  markFirstLast = (e) ->
    e.children().removeClass("fc-first fc-last").filter(":first-child").addClass("fc-first").end().filter(":last-child").addClass "fc-last"
  setDayID = (cell, date) ->
    cell.each (i, _cell) ->
      _cell.className = _cell.className.replace(/^fc-\w*/, "fc-" + dayIDs[date.getDay()])

  getSkinCss = (event, opt) ->
    source = event.source or {}
    eventColor = event.color
    sourceColor = source.color
    optionColor = opt("eventColor")
    backgroundColor = event.backgroundColor or eventColor or source.backgroundColor or sourceColor or opt("eventBackgroundColor") or optionColor
    borderColor = event.borderColor or eventColor or source.borderColor or sourceColor or opt("eventBorderColor") or optionColor
    textColor = event.textColor or source.textColor or opt("eventTextColor")
    statements = []
    statements.push "background-color:" + backgroundColor  if backgroundColor
    statements.push "border-color:" + borderColor  if borderColor
    statements.push "color:" + textColor  if textColor
    statements.join ";"
  applyAll = (functions, thisObj, args) ->
    functions = [functions]  if $.isFunction(functions)
    if functions
      i = undefined
      ret = undefined
      i = 0
      while i < functions.length
        ret = functions[i].apply(thisObj, args) or ret
        i++
      ret
  firstDefined = ->
    i = 0

    while i < arguments_.length
      return arguments_[i]  if arguments_[i] isnt `undefined`
      i++
  MonthView = (element, calendar) ->
    render = (date, delta) ->
      if delta
        addMonths date, delta
        date.setDate 1
      start = cloneDate(date, true)
      start.setDate 1
      end = addMonths(cloneDate(start), 1)
      visStart = cloneDate(start)
      visEnd = cloneDate(end)
      firstDay = opt("firstDay")
      nwe = (if opt("weekends") then 0 else 1)
      if nwe
        skipWeekend visStart
        skipWeekend visEnd, -1, true
      addDays visStart, -((visStart.getDay() - Math.max(firstDay, nwe) + 7) % 7)
      addDays visEnd, (7 - visEnd.getDay() + Math.max(firstDay, nwe)) % 7
      rowCnt = Math.round((visEnd - visStart) / (DAY_MS * 7))
      if opt("weekMode") is "fixed"
        addDays visEnd, (6 - rowCnt) * 7
        rowCnt = 6
      t.title = formatDate(start, opt("titleFormat"))
      t.start = start
      t.end = end
      t.visStart = visStart
      t.visEnd = visEnd
      renderBasic 6, rowCnt, (if nwe then 5 else 7), true
    t = this
    t.render = render
    BasicView.call t, element, calendar, "month"
    opt = t.opt
    renderBasic = t.renderBasic
    formatDate = calendar.formatDate
  BasicWeekView = (element, calendar) ->
    render = (date, delta) ->
      addDays date, delta * 7  if delta
      start = addDays(cloneDate(date), -((date.getDay() - opt("firstDay") + 7) % 7))
      end = addDays(cloneDate(start), 7)
      visStart = cloneDate(start)
      visEnd = cloneDate(end)
      weekends = opt("weekends")
      unless weekends
        skipWeekend visStart
        skipWeekend visEnd, -1, true
      t.title = formatDates(visStart, addDays(cloneDate(visEnd), -1), opt("titleFormat"))
      t.start = start
      t.end = end
      t.visStart = visStart
      t.visEnd = visEnd
      renderBasic 1, 1, (if weekends then 7 else 5), false
    t = this
    t.render = render
    BasicView.call t, element, calendar, "basicWeek"
    opt = t.opt
    renderBasic = t.renderBasic
    formatDates = calendar.formatDates
  BasicDayView = (element, calendar) ->
    render = (date, delta) ->
      if delta
        addDays date, delta
        skipWeekend date, (if delta < 0 then -1 else 1)  unless opt("weekends")
      t.title = formatDate(date, opt("titleFormat"))
      t.start = t.visStart = cloneDate(date, true)
      t.end = t.visEnd = addDays(cloneDate(t.start), 1)
      renderBasic 1, 1, 1, false
    t = this
    t.render = render
    BasicView.call t, element, calendar, "basicDay"
    opt = t.opt
    renderBasic = t.renderBasic
    formatDate = calendar.formatDate
  BasicView = (element, calendar, viewName) ->
    renderBasic = (maxr, r, c, showNumbers) ->
      rowCnt = r
      colCnt = c
      updateOptions()
      firstTime = not body
      if firstTime
        buildSkeleton maxr, showNumbers
      else
        clearEvents()
      updateCells firstTime
    updateOptions = ->
      rtl = opt("isRTL")
      if rtl
        dis = -1
        dit = colCnt - 1
      else
        dis = 1
        dit = 0
      firstDay = opt("firstDay")
      nwe = (if opt("weekends") then 0 else 1)
      tm = (if opt("theme") then "ui" else "fc")
      colFormat = opt("columnFormat")
    buildSkeleton = (maxRowCnt, showNumbers) ->
      s = undefined
      headerClass = tm + "-widget-header"
      contentClass = tm + "-widget-content"
      i = undefined
      j = undefined
      table = undefined
      s = "<table class='fc-border-separate' style='width:100%' cellspacing='0'>" + "<thead>" + "<tr>"
      i = 0
      while i < colCnt
        s += "<th class='fc- " + headerClass + "'/>"
        i++
      s += "</tr>" + "</thead>" + "<tbody>"
      i = 0
      while i < maxRowCnt
        s += "<tr class='fc-week" + i + "'>"
        j = 0
        while j < colCnt
          s += "<td class='fc- " + contentClass + " fc-day" + (i * colCnt + j) + "'>" + "<div>" + ((if showNumbers then "<div class='fc-day-number'/>" else "")) + "<div class='fc-day-content'>" + "<div style='position:relative'>&nbsp;</div>" + "</div>" + "</div>" + "</td>"
          j++
        s += "</tr>"
        i++
      s += "</tbody>" + "</table>"
      table = $(s).appendTo(element)
      head = table.find("thead")
      headCells = head.find("th")
      body = table.find("tbody")
      bodyRows = body.find("tr")
      bodyCells = body.find("td")
      bodyFirstCells = bodyCells.filter(":first-child")
      bodyCellTopInners = bodyRows.eq(0).find("div.fc-day-content div")
      markFirstLast head.add(head.find("tr"))
      markFirstLast bodyRows
      bodyRows.eq(0).addClass "fc-first"
      dayBind bodyCells
      daySegmentContainer = $("<div style='position:absolute;z-index:8;top:0;left:0'/>").appendTo(element)
    updateCells = (firstTime) ->
      dowDirty = firstTime or rowCnt is 1
      month = t.start.getMonth()
      today = clearTime(new Date())
      cell = undefined
      date = undefined
      row = undefined
      if dowDirty
        headCells.each (i, _cell) ->
          cell = $(_cell)
          date = indexDate(i)
          cell.html formatDate(date, colFormat)
          setDayID cell, date

      bodyCells.each (i, _cell) ->
        cell = $(_cell)
        date = indexDate(i)
        if date.getMonth() is month
          cell.removeClass "fc-other-month"
        else
          cell.addClass "fc-other-month"
        if +date is +today
          cell.addClass tm + "-state-highlight fc-today"
        else
          cell.removeClass tm + "-state-highlight fc-today"
        cell.find("div.fc-day-number").text date.getDate()
        setDayID cell, date  if dowDirty

      bodyRows.each (i, _row) ->
        row = $(_row)
        if i < rowCnt
          row.show()
          if i is rowCnt - 1
            row.addClass "fc-last"
          else
            row.removeClass "fc-last"
        else
          row.hide()

    setHeight = (height) ->
      viewHeight = height
      bodyHeight = viewHeight - head.height()
      rowHeight = undefined
      rowHeightLast = undefined
      cell = undefined
      if opt("weekMode") is "variable"
        rowHeight = rowHeightLast = Math.floor(bodyHeight / ((if rowCnt is 1 then 2 else 6)))
      else
        rowHeight = Math.floor(bodyHeight / rowCnt)
        rowHeightLast = bodyHeight - rowHeight * (rowCnt - 1)
      bodyFirstCells.each (i, _cell) ->
        if i < rowCnt
          cell = $(_cell)
          setMinHeight cell.find("> div"), ((if i is rowCnt - 1 then rowHeightLast else rowHeight)) - vsides(cell)

    setWidth = (width) ->
      viewWidth = width
      colContentPositions.clear()
      colWidth = Math.floor(viewWidth / colCnt)
      setOuterWidth headCells.slice(0, -1), colWidth
    dayBind = (days) ->
      days.click(dayClick).mousedown daySelectionMousedown
    dayClick = (ev) ->
      unless opt("selectable")
        index = parseInt(@className.match(/fc\-day(\d+)/)[1])
        date = indexDate(index)
        trigger "dayClick", this, date, true, ev
    renderDayOverlay = (overlayStart, overlayEnd, refreshCoordinateGrid) ->
      coordinateGrid.build()  if refreshCoordinateGrid
      rowStart = cloneDate(t.visStart)
      rowEnd = addDays(cloneDate(rowStart), colCnt)
      i = 0

      while i < rowCnt
        stretchStart = new Date(Math.max(rowStart, overlayStart))
        stretchEnd = new Date(Math.min(rowEnd, overlayEnd))
        if stretchStart < stretchEnd
          colStart = undefined
          colEnd = undefined
          if rtl
            colStart = dayDiff(stretchEnd, rowStart) * dis + dit + 1
            colEnd = dayDiff(stretchStart, rowStart) * dis + dit + 1
          else
            colStart = dayDiff(stretchStart, rowStart)
            colEnd = dayDiff(stretchEnd, rowStart)
          dayBind renderCellOverlay(i, colStart, i, colEnd - 1)
        addDays rowStart, 7
        addDays rowEnd, 7
        i++
    renderCellOverlay = (row0, col0, row1, col1) ->
      rect = coordinateGrid.rect(row0, col0, row1, col1, element)
      renderOverlay rect, element
    defaultSelectionEnd = (startDate, allDay) ->
      cloneDate startDate
    renderSelection = (startDate, endDate, allDay) ->
      renderDayOverlay startDate, addDays(cloneDate(endDate), 1), true
    clearSelection = ->
      clearOverlays()
    reportDayClick = (date, allDay, ev) ->
      cell = dateCell(date)
      _element = bodyCells[cell.row * colCnt + cell.col]
      trigger "dayClick", _element, date, allDay, ev
    dragStart = (_dragElement, ev, ui) ->
      hoverListener.start ((cell) ->
        clearOverlays()
        renderCellOverlay cell.row, cell.col, cell.row, cell.col  if cell
      ), ev
    dragStop = (_dragElement, ev, ui) ->
      cell = hoverListener.stop()
      clearOverlays()
      if cell
        d = cellDate(cell)
        trigger "drop", _dragElement, d, true, ev, ui
    defaultEventEnd = (event) ->
      cloneDate event.start
    colContentLeft = (col) ->
      colContentPositions.left col
    colContentRight = (col) ->
      colContentPositions.right col
    dateCell = (date) ->
      row: Math.floor(dayDiff(date, t.visStart) / 7)
      col: dayOfWeekCol(date.getDay())
    cellDate = (cell) ->
      _cellDate cell.row, cell.col
    _cellDate = (row, col) ->
      addDays cloneDate(t.visStart), row * 7 + col * dis + dit
    indexDate = (index) ->
      _cellDate Math.floor(index / colCnt), index % colCnt
    dayOfWeekCol = (dayOfWeek) ->
      ((dayOfWeek - Math.max(firstDay, nwe) + colCnt) % colCnt) * dis + dit
    allDayRow = (i) ->
      bodyRows.eq i
    allDayBounds = (i) ->
      left: 0
      right: viewWidth
    t = this
    t.renderBasic = renderBasic
    t.setHeight = setHeight
    t.setWidth = setWidth
    t.renderDayOverlay = renderDayOverlay
    t.defaultSelectionEnd = defaultSelectionEnd
    t.renderSelection = renderSelection
    t.clearSelection = clearSelection
    t.reportDayClick = reportDayClick
    t.dragStart = dragStart
    t.dragStop = dragStop
    t.defaultEventEnd = defaultEventEnd
    t.getHoverListener = ->
      hoverListener

    t.colContentLeft = colContentLeft
    t.colContentRight = colContentRight
    t.dayOfWeekCol = dayOfWeekCol
    t.dateCell = dateCell
    t.cellDate = cellDate
    t.cellIsAllDay = ->
      true

    t.allDayRow = allDayRow
    t.allDayBounds = allDayBounds
    t.getRowCnt = ->
      rowCnt

    t.getColCnt = ->
      colCnt

    t.getColWidth = ->
      colWidth

    t.getDaySegmentContainer = ->
      daySegmentContainer

    View.call t, element, calendar, viewName
    OverlayManager.call t
    SelectionManager.call t
    BasicEventRenderer.call t
    opt = t.opt
    trigger = t.trigger
    clearEvents = t.clearEvents
    renderOverlay = t.renderOverlay
    clearOverlays = t.clearOverlays
    daySelectionMousedown = t.daySelectionMousedown
    formatDate = calendar.formatDate
    head = undefined
    headCells = undefined
    body = undefined
    bodyRows = undefined
    bodyCells = undefined
    bodyFirstCells = undefined
    bodyCellTopInners = undefined
    daySegmentContainer = undefined
    viewWidth = undefined
    viewHeight = undefined
    colWidth = undefined
    rowCnt = undefined
    colCnt = undefined
    coordinateGrid = undefined
    hoverListener = undefined
    colContentPositions = undefined
    rtl = undefined
    dis = undefined
    dit = undefined
    firstDay = undefined
    nwe = undefined
    tm = undefined
    colFormat = undefined
    disableTextSelection element.addClass("fc-grid")
    coordinateGrid = new CoordinateGrid((rows, cols) ->
      e = undefined
      n = undefined
      p = undefined
      headCells.each (i, _e) ->
        e = $(_e)
        n = e.offset().left
        p[1] = n  if i
        p = [n]
        cols[i] = p

      p[1] = n + e.outerWidth()
      bodyRows.each (i, _e) ->
        if i < rowCnt
          e = $(_e)
          n = e.offset().top
          p[1] = n  if i
          p = [n]
          rows[i] = p

      p[1] = n + e.outerHeight()
    )
    hoverListener = new HoverListener(coordinateGrid)
    colContentPositions = new HorizontalPositionCache((col) ->
      bodyCellTopInners.eq col
    )
  BasicEventRenderer = ->
    renderEvents = (events, modifiedEventId) ->
      reportEvents events
      renderDaySegs compileSegs(events), modifiedEventId
    clearEvents = ->
      reportEventClear()
      getDaySegmentContainer().empty()
    compileSegs = (events) ->
      rowCnt = getRowCnt()
      colCnt = getColCnt()
      d1 = cloneDate(t.visStart)
      d2 = addDays(cloneDate(d1), colCnt)
      visEventsEnds = $.map(events, exclEndDay)
      i = undefined
      row = undefined
      j = undefined
      level = undefined
      k = undefined
      seg = undefined
      segs = []
      i = 0
      while i < rowCnt
        row = stackSegs(sliceSegs(events, visEventsEnds, d1, d2))
        j = 0
        while j < row.length
          level = row[j]
          k = 0
          while k < level.length
            seg = level[k]
            seg.row = i
            seg.level = j
            segs.push seg
            k++
          j++
        addDays d1, 7
        addDays d2, 7
        i++
      segs
    bindDaySeg = (event, eventElement, seg) ->
      draggableDayEvent event, eventElement  if isEventDraggable(event)
      resizableDayEvent event, eventElement, seg  if seg.isEnd and isEventResizable(event)
      eventElementHandlers event, eventElement
    draggableDayEvent = (event, eventElement) ->
      hoverListener = getHoverListener()
      dayDelta = undefined
      eventElement.draggable
        zIndex: 9
        delay: 50
        opacity: opt("dragOpacity")
        revertDuration: opt("dragRevertDuration")
        start: (ev, ui) ->
          trigger "eventDragStart", eventElement, event, ev, ui
          hideEvents event, eventElement
          hoverListener.start ((cell, origCell, rowDelta, colDelta) ->
            eventElement.draggable "option", "revert", not cell or not rowDelta and not colDelta
            clearOverlays()
            if cell
              dayDelta = rowDelta * 7 + colDelta * ((if opt("isRTL") then -1 else 1))
              renderDayOverlay addDays(cloneDate(event.start), dayDelta), addDays(exclEndDay(event), dayDelta)
            else
              dayDelta = 0
          ), ev, "drag"

        stop: (ev, ui) ->
          hoverListener.stop()
          clearOverlays()
          trigger "eventDragStop", eventElement, event, ev, ui
          if dayDelta
            eventDrop this, event, dayDelta, 0, event.allDay, ev, ui
          else
            eventElement.css "filter", ""
            showEvents event, eventElement

    t = this
    t.renderEvents = renderEvents
    t.compileDaySegs = compileSegs
    t.clearEvents = clearEvents
    t.bindDaySeg = bindDaySeg
    DayEventRenderer.call t
    opt = t.opt
    trigger = t.trigger
    isEventDraggable = t.isEventDraggable
    isEventResizable = t.isEventResizable
    reportEvents = t.reportEvents
    reportEventClear = t.reportEventClear
    eventElementHandlers = t.eventElementHandlers
    showEvents = t.showEvents
    hideEvents = t.hideEvents
    eventDrop = t.eventDrop
    getDaySegmentContainer = t.getDaySegmentContainer
    getHoverListener = t.getHoverListener
    renderDayOverlay = t.renderDayOverlay
    clearOverlays = t.clearOverlays
    getRowCnt = t.getRowCnt
    getColCnt = t.getColCnt
    renderDaySegs = t.renderDaySegs
    resizableDayEvent = t.resizableDayEvent
  AgendaWeekView = (element, calendar) ->
    render = (date, delta) ->
      addDays date, delta * 7  if delta
      start = addDays(cloneDate(date), -((date.getDay() - opt("firstDay") + 7) % 7))
      end = addDays(cloneDate(start), 7)
      visStart = cloneDate(start)
      visEnd = cloneDate(end)
      weekends = opt("weekends")
      unless weekends
        skipWeekend visStart
        skipWeekend visEnd, -1, true
      t.title = formatDates(visStart, addDays(cloneDate(visEnd), -1), opt("titleFormat"))
      t.start = start
      t.end = end
      t.visStart = visStart
      t.visEnd = visEnd
      renderAgenda (if weekends then 7 else 5)
    t = this
    t.render = render
    AgendaView.call t, element, calendar, "agendaWeek"
    opt = t.opt
    renderAgenda = t.renderAgenda
    formatDates = calendar.formatDates
  AgendaDayView = (element, calendar) ->
    render = (date, delta) ->
      if delta
        addDays date, delta
        skipWeekend date, (if delta < 0 then -1 else 1)  unless opt("weekends")
      start = cloneDate(date, true)
      end = addDays(cloneDate(start), 1)
      t.title = formatDate(date, opt("titleFormat"))
      t.start = t.visStart = start
      t.end = t.visEnd = end
      renderAgenda 1
    t = this
    t.render = render
    AgendaView.call t, element, calendar, "agendaDay"
    opt = t.opt
    renderAgenda = t.renderAgenda
    formatDate = calendar.formatDate
  AgendaView = (element, calendar, viewName) ->
    renderAgenda = (c) ->
      colCnt = c
      updateOptions()
      unless dayTable
        buildSkeleton()
      else
        clearEvents()
      updateCells()
    updateOptions = ->
      tm = (if opt("theme") then "ui" else "fc")
      nwe = (if opt("weekends") then 0 else 1)
      firstDay = opt("firstDay")
      if rtl = opt("isRTL")
        dis = -1
        dit = colCnt - 1
      else
        dis = 1
        dit = 0
      minMinute = parseTime(opt("minTime"))
      maxMinute = parseTime(opt("maxTime"))
      colFormat = opt("columnFormat")
    buildSkeleton = ->
      headerClass = tm + "-widget-header"
      contentClass = tm + "-widget-content"
      s = undefined
      i = undefined
      d = undefined
      maxd = undefined
      minutes = undefined
      slotNormal = opt("slotMinutes") % 15 is 0
      s = "<table style='width:100%' class='fc-agenda-days fc-border-separate' cellspacing='0'>" + "<thead>" + "<tr>" + "<th class='fc-agenda-axis " + headerClass + "'>&nbsp;</th>"
      i = 0
      while i < colCnt
        s += "<th class='fc- fc-col" + i + " " + headerClass + "'/>"
        i++
      s += "<th class='fc-agenda-gutter " + headerClass + "'>&nbsp;</th>" + "</tr>" + "</thead>" + "<tbody>" + "<tr>" + "<th class='fc-agenda-axis " + headerClass + "'>&nbsp;</th>"
      i = 0
      while i < colCnt
        s += "<td class='fc- fc-col" + i + " " + contentClass + "'>" + "<div>" + "<div class='fc-day-content'>" + "<div style='position:relative'>&nbsp;</div>" + "</div>" + "</div>" + "</td>"
        i++
      s += "<td class='fc-agenda-gutter " + contentClass + "'>&nbsp;</td>" + "</tr>" + "</tbody>" + "</table>"
      dayTable = $(s).appendTo(element)
      dayHead = dayTable.find("thead")
      dayHeadCells = dayHead.find("th").slice(1, -1)
      dayBody = dayTable.find("tbody")
      dayBodyCells = dayBody.find("td").slice(0, -1)
      dayBodyCellInners = dayBodyCells.find("div.fc-day-content div")
      dayBodyFirstCell = dayBodyCells.eq(0)
      dayBodyFirstCellStretcher = dayBodyFirstCell.find("> div")
      markFirstLast dayHead.add(dayHead.find("tr"))
      markFirstLast dayBody.add(dayBody.find("tr"))
      axisFirstCells = dayHead.find("th:first")
      gutterCells = dayTable.find(".fc-agenda-gutter")
      slotLayer = $("<div style='position:absolute;z-index:2;left:0;width:100%'/>").appendTo(element)
      if opt("allDaySlot")
        daySegmentContainer = $("<div style='position:absolute;z-index:8;top:0;left:0'/>").appendTo(slotLayer)
        s = "<table style='width:100%' class='fc-agenda-allday' cellspacing='0'>" + "<tr>" + "<th class='" + headerClass + " fc-agenda-axis'>" + opt("allDayText") + "</th>" + "<td>" + "<div class='fc-day-content'><div style='position:relative'/></div>" + "</td>" + "<th class='" + headerClass + " fc-agenda-gutter'>&nbsp;</th>" + "</tr>" + "</table>"
        allDayTable = $(s).appendTo(slotLayer)
        allDayRow = allDayTable.find("tr")
        dayBind allDayRow.find("td")
        axisFirstCells = axisFirstCells.add(allDayTable.find("th:first"))
        gutterCells = gutterCells.add(allDayTable.find("th.fc-agenda-gutter"))
        slotLayer.append "<div class='fc-agenda-divider " + headerClass + "'>" + "<div class='fc-agenda-divider-inner'/>" + "</div>"
      else
        daySegmentContainer = $([])
      slotScroller = $("<div style='position:absolute;width:100%;overflow-x:hidden;overflow-y:auto'/>").appendTo(slotLayer)
      slotContent = $("<div style='position:relative;width:100%;overflow:hidden'/>").appendTo(slotScroller)
      slotSegmentContainer = $("<div style='position:absolute;z-index:8;top:0;left:0'/>").appendTo(slotContent)
      s = "<table class='fc-agenda-slots' style='width:100%' cellspacing='0'>" + "<tbody>"
      d = zeroDate()
      maxd = addMinutes(cloneDate(d), maxMinute)
      addMinutes d, minMinute
      slotCnt = 0
      i = 0
      while d < maxd
        minutes = d.getMinutes()
        s += "<tr class='fc-slot" + i + " " + ((if not minutes then "" else "fc-minor")) + "'>" + "<th class='fc-agenda-axis " + headerClass + "'>" + ((if (not slotNormal or not minutes) then formatDate(d, opt("axisFormat")) else "&nbsp;")) + "</th>" + "<td class='" + contentClass + "'>" + "<div style='position:relative'>&nbsp;</div>" + "</td>" + "</tr>"
        addMinutes d, opt("slotMinutes")
        slotCnt++
        i++
      s += "</tbody>" + "</table>"
      slotTable = $(s).appendTo(slotContent)
      slotTableFirstInner = slotTable.find("div:first")
      slotBind slotTable.find("td")
      axisFirstCells = axisFirstCells.add(slotTable.find("th:first"))
    updateCells = ->
      i = undefined
      headCell = undefined
      bodyCell = undefined
      date = undefined
      today = clearTime(new Date())
      i = 0
      while i < colCnt
        date = colDate(i)
        headCell = dayHeadCells.eq(i)
        headCell.html formatDate(date, colFormat)
        bodyCell = dayBodyCells.eq(i)
        if +date is +today
          bodyCell.addClass tm + "-state-highlight fc-today"
        else
          bodyCell.removeClass tm + "-state-highlight fc-today"
        setDayID headCell.add(bodyCell), date
        i++
    setHeight = (height, dateChanged) ->
      height = viewHeight  if height is `undefined`
      viewHeight = height
      slotTopCache = {}
      headHeight = dayBody.position().top
      allDayHeight = slotScroller.position().top
      bodyHeight = Math.min(height - headHeight, slotTable.height() + allDayHeight + 1)
      dayBodyFirstCellStretcher.height bodyHeight - vsides(dayBodyFirstCell)
      slotLayer.css "top", headHeight
      slotScroller.height bodyHeight - allDayHeight - 1
      slotHeight = slotTableFirstInner.height() + 1
      resetScroll()  if dateChanged
    setWidth = (width) ->
      viewWidth = width
      colContentPositions.clear()
      axisWidth = 0
      setOuterWidth axisFirstCells.width("").each((i, _cell) ->
        axisWidth = Math.max(axisWidth, $(_cell).outerWidth())
      ), axisWidth
      slotTableWidth = slotScroller[0].clientWidth
      gutterWidth = slotScroller.width() - slotTableWidth
      if gutterWidth
        setOuterWidth gutterCells, gutterWidth
        gutterCells.show().prev().removeClass "fc-last"
      else
        gutterCells.hide().prev().addClass "fc-last"
      colWidth = Math.floor((slotTableWidth - axisWidth) / colCnt)
      setOuterWidth dayHeadCells.slice(0, -1), colWidth
    resetScroll = ->
      scroll = ->
        slotScroller.scrollTop top
      d0 = zeroDate()
      scrollDate = cloneDate(d0)
      scrollDate.setHours opt("firstHour")
      top = timePosition(d0, scrollDate) + 1
      scroll()
      setTimeout scroll, 0
    beforeHide = ->
      savedScrollTop = slotScroller.scrollTop()
    afterShow = ->
      slotScroller.scrollTop savedScrollTop
    dayBind = (cells) ->
      cells.click(slotClick).mousedown daySelectionMousedown
    slotBind = (cells) ->
      cells.click(slotClick).mousedown slotSelectionMousedown
    slotClick = (ev) ->
      unless opt("selectable")
        col = Math.min(colCnt - 1, Math.floor((ev.pageX - dayTable.offset().left - axisWidth) / colWidth))
        date = colDate(col)
        rowMatch = @parentNode.className.match(/fc-slot(\d+)/)
        if rowMatch
          mins = parseInt(rowMatch[1]) * opt("slotMinutes")
          hours = Math.floor(mins / 60)
          date.setHours hours
          date.setMinutes mins % 60 + minMinute
          trigger "dayClick", dayBodyCells[col], date, false, ev
        else
          trigger "dayClick", dayBodyCells[col], date, true, ev
    renderDayOverlay = (startDate, endDate, refreshCoordinateGrid) ->
      coordinateGrid.build()  if refreshCoordinateGrid
      visStart = cloneDate(t.visStart)
      startCol = undefined
      endCol = undefined
      if rtl
        startCol = dayDiff(endDate, visStart) * dis + dit + 1
        endCol = dayDiff(startDate, visStart) * dis + dit + 1
      else
        startCol = dayDiff(startDate, visStart)
        endCol = dayDiff(endDate, visStart)
      startCol = Math.max(0, startCol)
      endCol = Math.min(colCnt, endCol)
      dayBind renderCellOverlay(0, startCol, 0, endCol - 1)  if startCol < endCol
    renderCellOverlay = (row0, col0, row1, col1) ->
      rect = coordinateGrid.rect(row0, col0, row1, col1, slotLayer)
      renderOverlay rect, slotLayer
    renderSlotOverlay = (overlayStart, overlayEnd) ->
      dayStart = cloneDate(t.visStart)
      dayEnd = addDays(cloneDate(dayStart), 1)
      i = 0

      while i < colCnt
        stretchStart = new Date(Math.max(dayStart, overlayStart))
        stretchEnd = new Date(Math.min(dayEnd, overlayEnd))
        if stretchStart < stretchEnd
          col = i * dis + dit
          rect = coordinateGrid.rect(0, col, 0, col, slotContent)
          top = timePosition(dayStart, stretchStart)
          bottom = timePosition(dayStart, stretchEnd)
          rect.top = top
          rect.height = bottom - top
          slotBind renderOverlay(rect, slotContent)
        addDays dayStart, 1
        addDays dayEnd, 1
        i++
    colContentLeft = (col) ->
      colContentPositions.left col
    colContentRight = (col) ->
      colContentPositions.right col
    dateCell = (date) ->
      row: Math.floor(dayDiff(date, t.visStart) / 7)
      col: dayOfWeekCol(date.getDay())
    cellDate = (cell) ->
      d = colDate(cell.col)
      slotIndex = cell.row
      slotIndex--  if opt("allDaySlot")
      addMinutes d, minMinute + slotIndex * opt("slotMinutes")  if slotIndex >= 0
      d
    colDate = (col) ->
      addDays cloneDate(t.visStart), col * dis + dit
    cellIsAllDay = (cell) ->
      opt("allDaySlot") and not cell.row
    dayOfWeekCol = (dayOfWeek) ->
      ((dayOfWeek - Math.max(firstDay, nwe) + colCnt) % colCnt) * dis + dit
    timePosition = (day, time) ->
      day = cloneDate(day, true)
      return 0  if time < addMinutes(cloneDate(day), minMinute)
      return slotTable.height()  if time >= addMinutes(cloneDate(day), maxMinute)
      slotMinutes = opt("slotMinutes")
      minutes = time.getHours() * 60 + time.getMinutes() - minMinute
      slotI = Math.floor(minutes / slotMinutes)
      slotTop = slotTopCache[slotI]
      slotTop = slotTopCache[slotI] = slotTable.find("tr:eq(" + slotI + ") td div")[0].offsetTop  if slotTop is `undefined`
      Math.max 0, Math.round(slotTop - 1 + slotHeight * ((minutes % slotMinutes) / slotMinutes))
    allDayBounds = ->
      left: axisWidth
      right: viewWidth - gutterWidth
    getAllDayRow = (index) ->
      allDayRow
    defaultEventEnd = (event) ->
      start = cloneDate(event.start)
      return start  if event.allDay
      addMinutes start, opt("defaultEventMinutes")
    defaultSelectionEnd = (startDate, allDay) ->
      return cloneDate(startDate)  if allDay
      addMinutes cloneDate(startDate), opt("slotMinutes")
    renderSelection = (startDate, endDate, allDay) ->
      if allDay
        renderDayOverlay startDate, addDays(cloneDate(endDate), 1), true  if opt("allDaySlot")
      else
        renderSlotSelection startDate, endDate
    renderSlotSelection = (startDate, endDate) ->
      helperOption = opt("selectHelper")
      coordinateGrid.build()
      if helperOption
        col = dayDiff(startDate, t.visStart) * dis + dit
        if col >= 0 and col < colCnt
          rect = coordinateGrid.rect(0, col, 0, col, slotContent)
          top = timePosition(startDate, startDate)
          bottom = timePosition(startDate, endDate)
          if bottom > top
            rect.top = top
            rect.height = bottom - top
            rect.left += 2
            rect.width -= 5
            if $.isFunction(helperOption)
              helperRes = helperOption(startDate, endDate)
              if helperRes
                rect.position = "absolute"
                rect.zIndex = 8
                selectionHelper = $(helperRes).css(rect).appendTo(slotContent)
            else
              rect.isStart = true
              rect.isEnd = true
              selectionHelper = $(slotSegHtml(
                title: ""
                start: startDate
                end: endDate
                className: ["fc-select-helper"]
                editable: false
              , rect))
              selectionHelper.css "opacity", opt("dragOpacity")
            if selectionHelper
              slotBind selectionHelper
              slotContent.append selectionHelper
              setOuterWidth selectionHelper, rect.width, true
              setOuterHeight selectionHelper, rect.height, true
      else
        renderSlotOverlay startDate, endDate
    clearSelection = ->
      clearOverlays()
      if selectionHelper
        selectionHelper.remove()
        selectionHelper = null
    slotSelectionMousedown = (ev) ->
      if ev.which is 1 and opt("selectable")
        unselect ev
        dates = undefined
        hoverListener.start ((cell, origCell) ->
          clearSelection()
          if cell and cell.col is origCell.col and not cellIsAllDay(cell)
            d1 = cellDate(origCell)
            d2 = cellDate(cell)
            dates = [d1, addMinutes(cloneDate(d1), opt("slotMinutes")), d2, addMinutes(cloneDate(d2), opt("slotMinutes"))].sort(cmp)
            renderSlotSelection dates[0], dates[3]
          else
            dates = null
        ), ev
        $(document).one "mouseup", (ev) ->
          hoverListener.stop()
          if dates
            reportDayClick dates[0], false, ev  if +dates[0] is +dates[1]
            reportSelection dates[0], dates[3], false, ev

    reportDayClick = (date, allDay, ev) ->
      trigger "dayClick", dayBodyCells[dayOfWeekCol(date.getDay())], date, allDay, ev
    dragStart = (_dragElement, ev, ui) ->
      hoverListener.start ((cell) ->
        clearOverlays()
        if cell
          if cellIsAllDay(cell)
            renderCellOverlay cell.row, cell.col, cell.row, cell.col
          else
            d1 = cellDate(cell)
            d2 = addMinutes(cloneDate(d1), opt("defaultEventMinutes"))
            renderSlotOverlay d1, d2
      ), ev
    dragStop = (_dragElement, ev, ui) ->
      cell = hoverListener.stop()
      clearOverlays()
      trigger "drop", _dragElement, cellDate(cell), cellIsAllDay(cell), ev, ui  if cell
    t = this
    t.renderAgenda = renderAgenda
    t.setWidth = setWidth
    t.setHeight = setHeight
    t.beforeHide = beforeHide
    t.afterShow = afterShow
    t.defaultEventEnd = defaultEventEnd
    t.timePosition = timePosition
    t.dayOfWeekCol = dayOfWeekCol
    t.dateCell = dateCell
    t.cellDate = cellDate
    t.cellIsAllDay = cellIsAllDay
    t.allDayRow = getAllDayRow
    t.allDayBounds = allDayBounds
    t.getHoverListener = ->
      hoverListener

    t.colContentLeft = colContentLeft
    t.colContentRight = colContentRight
    t.getDaySegmentContainer = ->
      daySegmentContainer

    t.getSlotSegmentContainer = ->
      slotSegmentContainer

    t.getMinMinute = ->
      minMinute

    t.getMaxMinute = ->
      maxMinute

    t.getBodyContent = ->
      slotContent

    t.getRowCnt = ->
      1

    t.getColCnt = ->
      colCnt

    t.getColWidth = ->
      colWidth

    t.getSlotHeight = ->
      slotHeight

    t.defaultSelectionEnd = defaultSelectionEnd
    t.renderDayOverlay = renderDayOverlay
    t.renderSelection = renderSelection
    t.clearSelection = clearSelection
    t.reportDayClick = reportDayClick
    t.dragStart = dragStart
    t.dragStop = dragStop
    View.call t, element, calendar, viewName
    OverlayManager.call t
    SelectionManager.call t
    AgendaEventRenderer.call t
    opt = t.opt
    trigger = t.trigger
    clearEvents = t.clearEvents
    renderOverlay = t.renderOverlay
    clearOverlays = t.clearOverlays
    reportSelection = t.reportSelection
    unselect = t.unselect
    daySelectionMousedown = t.daySelectionMousedown
    slotSegHtml = t.slotSegHtml
    formatDate = calendar.formatDate
    dayTable = undefined
    dayHead = undefined
    dayHeadCells = undefined
    dayBody = undefined
    dayBodyCells = undefined
    dayBodyCellInners = undefined
    dayBodyFirstCell = undefined
    dayBodyFirstCellStretcher = undefined
    slotLayer = undefined
    daySegmentContainer = undefined
    allDayTable = undefined
    allDayRow = undefined
    slotScroller = undefined
    slotContent = undefined
    slotSegmentContainer = undefined
    slotTable = undefined
    slotTableFirstInner = undefined
    axisFirstCells = undefined
    gutterCells = undefined
    selectionHelper = undefined
    viewWidth = undefined
    viewHeight = undefined
    axisWidth = undefined
    colWidth = undefined
    gutterWidth = undefined
    slotHeight = undefined
    savedScrollTop = undefined
    colCnt = undefined
    slotCnt = undefined
    coordinateGrid = undefined
    hoverListener = undefined
    colContentPositions = undefined
    slotTopCache = {}
    tm = undefined
    firstDay = undefined
    nwe = undefined
    rtl = undefined
    dis = undefined
    dit = undefined
    minMinute = undefined
    maxMinute = undefined
    colFormat = undefined
    disableTextSelection element.addClass("fc-agenda")
    coordinateGrid = new CoordinateGrid((rows, cols) ->
      constrain = (n) ->
        Math.max slotScrollerTop, Math.min(slotScrollerBottom, n)
      e = undefined
      n = undefined
      p = undefined
      dayHeadCells.each (i, _e) ->
        e = $(_e)
        n = e.offset().left
        p[1] = n  if i
        p = [n]
        cols[i] = p

      p[1] = n + e.outerWidth()
      if opt("allDaySlot")
        e = allDayRow
        n = e.offset().top
        rows[0] = [n, n + e.outerHeight()]
      slotTableTop = slotContent.offset().top
      slotScrollerTop = slotScroller.offset().top
      slotScrollerBottom = slotScrollerTop + slotScroller.outerHeight()
      i = 0

      while i < slotCnt
        rows.push [constrain(slotTableTop + slotHeight * i), constrain(slotTableTop + slotHeight * (i + 1))]
        i++
    )
    hoverListener = new HoverListener(coordinateGrid)
    colContentPositions = new HorizontalPositionCache((col) ->
      dayBodyCellInners.eq col
    )
  AgendaEventRenderer = ->
    renderEvents = (events, modifiedEventId) ->
      reportEvents events
      i = undefined
      len = events.length
      dayEvents = []
      slotEvents = []
      i = 0
      while i < len
        if events[i].allDay
          dayEvents.push events[i]
        else
          slotEvents.push events[i]
        i++
      if opt("allDaySlot")
        renderDaySegs compileDaySegs(dayEvents), modifiedEventId
        setHeight()
      renderSlotSegs compileSlotSegs(slotEvents), modifiedEventId
    clearEvents = ->
      reportEventClear()
      getDaySegmentContainer().empty()
      getSlotSegmentContainer().empty()
    compileDaySegs = (events) ->
      levels = stackSegs(sliceSegs(events, $.map(events, exclEndDay), t.visStart, t.visEnd))
      i = undefined
      levelCnt = levels.length
      level = undefined
      j = undefined
      seg = undefined
      segs = []
      i = 0
      while i < levelCnt
        level = levels[i]
        j = 0
        while j < level.length
          seg = level[j]
          seg.row = 0
          seg.level = i
          segs.push seg
          j++
        i++
      segs
    compileSlotSegs = (events) ->
      colCnt = getColCnt()
      minMinute = getMinMinute()
      maxMinute = getMaxMinute()
      d = addMinutes(cloneDate(t.visStart), minMinute)
      visEventEnds = $.map(events, slotEventEnd)
      i = undefined
      col = undefined
      j = undefined
      level = undefined
      k = undefined
      seg = undefined
      segs = []
      i = 0
      while i < colCnt
        col = stackSegs(sliceSegs(events, visEventEnds, d, addMinutes(cloneDate(d), maxMinute - minMinute)))
        countForwardSegs col
        j = 0
        while j < col.length
          level = col[j]
          k = 0
          while k < level.length
            seg = level[k]
            seg.col = i
            seg.level = j
            segs.push seg
            k++
          j++
        addDays d, 1, true
        i++
      segs
    slotEventEnd = (event) ->
      if event.end
        cloneDate event.end
      else
        addMinutes cloneDate(event.start), opt("defaultEventMinutes")
    renderSlotSegs = (segs, modifiedEventId) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      event = undefined
      classes = undefined
      top = undefined
      bottom = undefined
      colI = undefined
      levelI = undefined
      forward = undefined
      leftmost = undefined
      availWidth = undefined
      outerWidth = undefined
      left = undefined
      html = ""
      eventElements = undefined
      eventElement = undefined
      triggerRes = undefined
      vsideCache = {}
      hsideCache = {}
      key = undefined
      val = undefined
      contentElement = undefined
      height = undefined
      slotSegmentContainer = getSlotSegmentContainer()
      rtl = undefined
      dis = undefined
      dit = undefined
      colCnt = getColCnt()
      if rtl = opt("isRTL")
        dis = -1
        dit = colCnt - 1
      else
        dis = 1
        dit = 0
      i = 0
      while i < segCnt
        seg = segs[i]
        event = seg.event
        top = timePosition(seg.start, seg.start)
        bottom = timePosition(seg.start, seg.end)
        colI = seg.col
        levelI = seg.level
        forward = seg.forward or 0
        leftmost = colContentLeft(colI * dis + dit)
        availWidth = colContentRight(colI * dis + dit) - leftmost
        availWidth = Math.min(availWidth - 6, availWidth * .95)
        if levelI
          outerWidth = availWidth / (levelI + forward + 1)
        else
          if forward
            outerWidth = ((availWidth / (forward + 1)) - (12 / 2)) * 2
          else
            outerWidth = availWidth
        left = leftmost + (availWidth / (levelI + forward + 1) * levelI) * dis + ((if rtl then availWidth - outerWidth else 0))
        seg.top = top
        seg.left = left
        seg.outerWidth = outerWidth
        seg.outerHeight = bottom - top
        html += slotSegHtml(event, seg)
        i++
      slotSegmentContainer[0].innerHTML = html
      eventElements = slotSegmentContainer.children()
      i = 0
      while i < segCnt
        seg = segs[i]
        event = seg.event
        eventElement = $(eventElements[i])
        triggerRes = trigger("eventRender", event, event, eventElement)
        if triggerRes is false
          eventElement.remove()
        else
          if triggerRes and triggerRes isnt true
            eventElement.remove()
            eventElement = $(triggerRes).css(
              position: "absolute"
              top: seg.top
              left: seg.left
            ).appendTo(slotSegmentContainer)
          seg.element = eventElement
          if event._id is modifiedEventId
            bindSlotSeg event, eventElement, seg
          else
            eventElement[0]._fci = i
          reportEventElement event, eventElement
        i++
      lazySegBind slotSegmentContainer, segs, bindSlotSeg
      i = 0
      while i < segCnt
        seg = segs[i]
        if eventElement = seg.element
          val = vsideCache[key = seg.key = cssKey(eventElement[0])]
          seg.vsides = (if val is `undefined` then (vsideCache[key] = vsides(eventElement, true)) else val)
          val = hsideCache[key]
          seg.hsides = (if val is `undefined` then (hsideCache[key] = hsides(eventElement, true)) else val)
          contentElement = eventElement.find("div.fc-event-content")
          seg.contentTop = contentElement[0].offsetTop  if contentElement.length
        i++
      i = 0
      while i < segCnt
        seg = segs[i]
        if eventElement = seg.element
          eventElement[0].style.width = Math.max(0, seg.outerWidth - seg.hsides) + "px"
          height = Math.max(0, seg.outerHeight - seg.vsides)
          eventElement[0].style.height = height + "px"
          event = seg.event
          if seg.contentTop isnt `undefined` and height - seg.contentTop < 10
            eventElement.find("div.fc-event-time").text formatDate(event.start, opt("timeFormat")) + " - " + event.title
            eventElement.find("div.fc-event-title").remove()
          trigger "eventAfterRender", event, event, eventElement
        i++
    slotSegHtml = (event, seg) ->
      html = "<"
      url = event.url
      skinCss = getSkinCss(event, opt)
      skinCssAttr = ((if skinCss then " style='" + skinCss + "'" else ""))
      classes = ["fc-event", "fc-event-skin", "fc-event-vert"]
      classes.push "fc-event-draggable"  if isEventDraggable(event)
      classes.push "fc-corner-top"  if seg.isStart
      classes.push "fc-corner-bottom"  if seg.isEnd
      classes = classes.concat(event.className)
      classes = classes.concat(event.source.className or [])  if event.source
      if url
        html += "a href='" + htmlEscape(event.url) + "'"
      else
        html += "div"
      html += " class='" + classes.join(" ") + "'" + " style='position:absolute;z-index:8;top:" + seg.top + "px;left:" + seg.left + "px;" + skinCss + "'" + ">" + "<div class='fc-event-inner fc-event-skin'" + skinCssAttr + ">" + "<div class='fc-event-head fc-event-skin'" + skinCssAttr + ">" + "<div class='fc-event-time'>" + htmlEscape(formatDates(event.start, event.end, opt("timeFormat"))) + "</div>" + "</div>" + "<div class='fc-event-content'>" + "<div class='fc-event-title'>" + htmlEscape(event.title) + "</div>" + "</div>" + "<div class='fc-event-bg'></div>" + "</div>"
      html += "<div class='ui-resizable-handle ui-resizable-s'>=</div>"  if seg.isEnd and isEventResizable(event)
      html += "</" + ((if url then "a" else "div")) + ">"
      html
    bindDaySeg = (event, eventElement, seg) ->
      draggableDayEvent event, eventElement, seg.isStart  if isEventDraggable(event)
      resizableDayEvent event, eventElement, seg  if seg.isEnd and isEventResizable(event)
      eventElementHandlers event, eventElement
    bindSlotSeg = (event, eventElement, seg) ->
      timeElement = eventElement.find("div.fc-event-time")
      draggableSlotEvent event, eventElement, timeElement  if isEventDraggable(event)
      resizableSlotEvent event, eventElement, timeElement  if seg.isEnd and isEventResizable(event)
      eventElementHandlers event, eventElement
    draggableDayEvent = (event, eventElement, isStart) ->
      resetElement = ->
        unless allDay
          eventElement.width(origWidth).height("").draggable "option", "grid", null
          allDay = true
      origWidth = undefined
      revert = undefined
      allDay = true
      dayDelta = undefined
      dis = (if opt("isRTL") then -1 else 1)
      hoverListener = getHoverListener()
      colWidth = getColWidth()
      slotHeight = getSlotHeight()
      minMinute = getMinMinute()
      eventElement.draggable
        zIndex: 9
        opacity: opt("dragOpacity", "month")
        revertDuration: opt("dragRevertDuration")
        start: (ev, ui) ->
          trigger "eventDragStart", eventElement, event, ev, ui
          hideEvents event, eventElement
          origWidth = eventElement.width()
          hoverListener.start ((cell, origCell, rowDelta, colDelta) ->
            clearOverlays()
            if cell
              revert = false
              dayDelta = colDelta * dis
              unless cell.row
                renderDayOverlay addDays(cloneDate(event.start), dayDelta), addDays(exclEndDay(event), dayDelta)
                resetElement()
              else
                if isStart
                  if allDay
                    eventElement.width colWidth - 10
                    setOuterHeight eventElement, slotHeight * Math.round(((if event.end then ((event.end - event.start) / MINUTE_MS) else opt("defaultEventMinutes"))) / opt("slotMinutes"))
                    eventElement.draggable "option", "grid", [colWidth, 1]
                    allDay = false
                else
                  revert = true
              revert = revert or (allDay and not dayDelta)
            else
              resetElement()
              revert = true
            eventElement.draggable "option", "revert", revert
          ), ev, "drag"

        stop: (ev, ui) ->
          hoverListener.stop()
          clearOverlays()
          trigger "eventDragStop", eventElement, event, ev, ui
          if revert
            resetElement()
            eventElement.css "filter", ""
            showEvents event, eventElement
          else
            minuteDelta = 0
            minuteDelta = Math.round((eventElement.offset().top - getBodyContent().offset().top) / slotHeight) * opt("slotMinutes") + minMinute - (event.start.getHours() * 60 + event.start.getMinutes())  unless allDay
            eventDrop this, event, dayDelta, minuteDelta, allDay, ev, ui

    draggableSlotEvent = (event, eventElement, timeElement) ->
      updateTimeText = (minuteDelta) ->
        newStart = addMinutes(cloneDate(event.start), minuteDelta)
        newEnd = undefined
        newEnd = addMinutes(cloneDate(event.end), minuteDelta)  if event.end
        timeElement.text formatDates(newStart, newEnd, opt("timeFormat"))
      resetElement = ->
        if allDay
          timeElement.css "display", ""
          eventElement.draggable "option", "grid", [colWidth, slotHeight]
          allDay = false
      origPosition = undefined
      allDay = false
      dayDelta = undefined
      minuteDelta = undefined
      prevMinuteDelta = undefined
      dis = (if opt("isRTL") then -1 else 1)
      hoverListener = getHoverListener()
      colCnt = getColCnt()
      colWidth = getColWidth()
      slotHeight = getSlotHeight()
      eventElement.draggable
        zIndex: 9
        scroll: false
        grid: [colWidth, slotHeight]
        axis: (if colCnt is 1 then "y" else false)
        opacity: opt("dragOpacity")
        revertDuration: opt("dragRevertDuration")
        start: (ev, ui) ->
          trigger "eventDragStart", eventElement, event, ev, ui
          hideEvents event, eventElement
          origPosition = eventElement.position()
          minuteDelta = prevMinuteDelta = 0
          hoverListener.start ((cell, origCell, rowDelta, colDelta) ->
            eventElement.draggable "option", "revert", not cell
            clearOverlays()
            if cell
              dayDelta = colDelta * dis
              if opt("allDaySlot") and not cell.row
                unless allDay
                  allDay = true
                  timeElement.hide()
                  eventElement.draggable "option", "grid", null
                renderDayOverlay addDays(cloneDate(event.start), dayDelta), addDays(exclEndDay(event), dayDelta)
              else
                resetElement()
          ), ev, "drag"

        drag: (ev, ui) ->
          minuteDelta = Math.round((ui.position.top - origPosition.top) / slotHeight) * opt("slotMinutes")
          unless minuteDelta is prevMinuteDelta
            updateTimeText minuteDelta  unless allDay
            prevMinuteDelta = minuteDelta

        stop: (ev, ui) ->
          cell = hoverListener.stop()
          clearOverlays()
          trigger "eventDragStop", eventElement, event, ev, ui
          if cell and (dayDelta or minuteDelta or allDay)
            eventDrop this, event, dayDelta, (if allDay then 0 else minuteDelta), allDay, ev, ui
          else
            resetElement()
            eventElement.css "filter", ""
            eventElement.css origPosition
            updateTimeText 0
            showEvents event, eventElement

    resizableSlotEvent = (event, eventElement, timeElement) ->
      slotDelta = undefined
      prevSlotDelta = undefined
      slotHeight = getSlotHeight()
      eventElement.resizable
        handles:
          s: "div.ui-resizable-s"

        grid: slotHeight
        start: (ev, ui) ->
          slotDelta = prevSlotDelta = 0
          hideEvents event, eventElement
          eventElement.css "z-index", 9
          trigger "eventResizeStart", this, event, ev, ui

        resize: (ev, ui) ->
          slotDelta = Math.round((Math.max(slotHeight, eventElement.height()) - ui.originalSize.height) / slotHeight)
          unless slotDelta is prevSlotDelta
            timeElement.text formatDates(event.start, (if (not slotDelta and not event.end) then null else addMinutes(eventEnd(event), opt("slotMinutes") * slotDelta)), opt("timeFormat"))
            prevSlotDelta = slotDelta

        stop: (ev, ui) ->
          trigger "eventResizeStop", this, event, ev, ui
          if slotDelta
            eventResize this, event, 0, opt("slotMinutes") * slotDelta, ev, ui
          else
            eventElement.css "z-index", 8
            showEvents event, eventElement

    t = this
    t.renderEvents = renderEvents
    t.compileDaySegs = compileDaySegs
    t.clearEvents = clearEvents
    t.slotSegHtml = slotSegHtml
    t.bindDaySeg = bindDaySeg
    DayEventRenderer.call t
    opt = t.opt
    trigger = t.trigger
    isEventDraggable = t.isEventDraggable
    isEventResizable = t.isEventResizable
    eventEnd = t.eventEnd
    reportEvents = t.reportEvents
    reportEventClear = t.reportEventClear
    eventElementHandlers = t.eventElementHandlers
    setHeight = t.setHeight
    getDaySegmentContainer = t.getDaySegmentContainer
    getSlotSegmentContainer = t.getSlotSegmentContainer
    getHoverListener = t.getHoverListener
    getMaxMinute = t.getMaxMinute
    getMinMinute = t.getMinMinute
    timePosition = t.timePosition
    colContentLeft = t.colContentLeft
    colContentRight = t.colContentRight
    renderDaySegs = t.renderDaySegs
    resizableDayEvent = t.resizableDayEvent
    getColCnt = t.getColCnt
    getColWidth = t.getColWidth
    getSlotHeight = t.getSlotHeight
    getBodyContent = t.getBodyContent
    reportEventElement = t.reportEventElement
    showEvents = t.showEvents
    hideEvents = t.hideEvents
    eventDrop = t.eventDrop
    eventResize = t.eventResize
    renderDayOverlay = t.renderDayOverlay
    clearOverlays = t.clearOverlays
    calendar = t.calendar
    formatDate = calendar.formatDate
    formatDates = calendar.formatDates
  countForwardSegs = (levels) ->
    i = undefined
    j = undefined
    k = undefined
    level = undefined
    segForward = undefined
    segBack = undefined
    i = levels.length - 1
    while i > 0
      level = levels[i]
      j = 0
      while j < level.length
        segForward = level[j]
        k = 0
        while k < levels[i - 1].length
          segBack = levels[i - 1][k]
          segBack.forward = Math.max(segBack.forward or 0, (segForward.forward or 0) + 1)  if segsCollide(segForward, segBack)
          k++
        j++
      i--
  View = (element, calendar, viewName) ->
    opt = (name, viewNameOverride) ->
      v = options[name]
      return smartProperty(v, viewNameOverride or viewName)  if typeof v is "object"
      v
    trigger = (name, thisObj) ->
      calendar.trigger.apply calendar, [name, thisObj or t].concat(Array::slice.call(arguments_, 2), [t])
    isEventDraggable = (event) ->
      isEventEditable(event) and not opt("disableDragging")
    isEventResizable = (event) ->
      isEventEditable(event) and not opt("disableResizing")
    isEventEditable = (event) ->
      firstDefined event.editable, (event.source or {}).editable, opt("editable")
    reportEvents = (events) ->
      eventsByID = {}
      i = undefined
      len = events.length
      event = undefined
      i = 0
      while i < len
        event = events[i]
        if eventsByID[event._id]
          eventsByID[event._id].push event
        else
          eventsByID[event._id] = [event]
        i++
    eventEnd = (event) ->
      (if event.end then cloneDate(event.end) else defaultEventEnd(event))
    reportEventElement = (event, element) ->
      eventElements.push element
      if eventElementsByID[event._id]
        eventElementsByID[event._id].push element
      else
        eventElementsByID[event._id] = [element]
    reportEventClear = ->
      eventElements = []
      eventElementsByID = {}
    eventElementHandlers = (event, eventElement) ->
      eventElement.click((ev) ->
        trigger "eventClick", this, event, ev  if not eventElement.hasClass("ui-draggable-dragging") and not eventElement.hasClass("ui-resizable-resizing")
      ).hover ((ev) ->
        trigger "eventMouseover", this, event, ev
      ), (ev) ->
        trigger "eventMouseout", this, event, ev

    showEvents = (event, exceptElement) ->
      eachEventElement event, exceptElement, "show"
    hideEvents = (event, exceptElement) ->
      eachEventElement event, exceptElement, "hide"
    eachEventElement = (event, exceptElement, funcName) ->
      elements = eventElementsByID[event._id]
      i = undefined
      len = elements.length
      i = 0
      while i < len
        elements[i][funcName]()  if not exceptElement or elements[i][0] isnt exceptElement[0]
        i++
    eventDrop = (e, event, dayDelta, minuteDelta, allDay, ev, ui) ->
      oldAllDay = event.allDay
      eventId = event._id
      moveEvents eventsByID[eventId], dayDelta, minuteDelta, allDay
      trigger "eventDrop", e, event, dayDelta, minuteDelta, allDay, (->
        moveEvents eventsByID[eventId], -dayDelta, -minuteDelta, oldAllDay
        reportEventChange eventId
      ), ev, ui
      reportEventChange eventId
    eventResize = (e, event, dayDelta, minuteDelta, ev, ui) ->
      eventId = event._id
      elongateEvents eventsByID[eventId], dayDelta, minuteDelta
      trigger "eventResize", e, event, dayDelta, minuteDelta, (->
        elongateEvents eventsByID[eventId], -dayDelta, -minuteDelta
        reportEventChange eventId
      ), ev, ui
      reportEventChange eventId
    moveEvents = (events, dayDelta, minuteDelta, allDay) ->
      minuteDelta = minuteDelta or 0
      e = undefined
      len = events.length
      i = 0

      while i < len
        e = events[i]
        e.allDay = allDay  if allDay isnt `undefined`
        addMinutes addDays(e.start, dayDelta, true), minuteDelta
        e.end = addMinutes(addDays(e.end, dayDelta, true), minuteDelta)  if e.end
        normalizeEvent e, options
        i++
    elongateEvents = (events, dayDelta, minuteDelta) ->
      minuteDelta = minuteDelta or 0
      e = undefined
      len = events.length
      i = 0

      while i < len
        e = events[i]
        e.end = addMinutes(addDays(eventEnd(e), dayDelta, true), minuteDelta)
        normalizeEvent e, options
        i++
    t = this
    t.element = element
    t.calendar = calendar
    t.name = viewName
    t.opt = opt
    t.trigger = trigger
    t.isEventDraggable = isEventDraggable
    t.isEventResizable = isEventResizable
    t.reportEvents = reportEvents
    t.eventEnd = eventEnd
    t.reportEventElement = reportEventElement
    t.reportEventClear = reportEventClear
    t.eventElementHandlers = eventElementHandlers
    t.showEvents = showEvents
    t.hideEvents = hideEvents
    t.eventDrop = eventDrop
    t.eventResize = eventResize
    defaultEventEnd = t.defaultEventEnd
    normalizeEvent = calendar.normalizeEvent
    reportEventChange = calendar.reportEventChange
    eventsByID = {}
    eventElements = []
    eventElementsByID = {}
    options = calendar.options
  DayEventRenderer = ->
    renderDaySegs = (segs, modifiedEventId) ->
      segmentContainer = getDaySegmentContainer()
      rowDivs = undefined
      rowCnt = getRowCnt()
      colCnt = getColCnt()
      i = 0
      rowI = undefined
      levelI = undefined
      colHeights = undefined
      j = undefined
      segCnt = segs.length
      seg = undefined
      top = undefined
      k = undefined
      segmentContainer[0].innerHTML = daySegHTML(segs)
      daySegElementResolve segs, segmentContainer.children()
      daySegElementReport segs
      daySegHandlers segs, segmentContainer, modifiedEventId
      daySegCalcHSides segs
      daySegSetWidths segs
      daySegCalcHeights segs
      rowDivs = getRowDivs()
      rowI = 0
      while rowI < rowCnt
        levelI = 0
        colHeights = []
        j = 0
        while j < colCnt
          colHeights[j] = 0
          j++
        while i < segCnt and (seg = segs[i]).row is rowI
          top = arrayMax(colHeights.slice(seg.startCol, seg.endCol))
          seg.top = top
          top += seg.outerHeight
          k = seg.startCol
          while k < seg.endCol
            colHeights[k] = top
            k++
          i++
        rowDivs[rowI].height arrayMax(colHeights)
        rowI++
      daySegSetTops segs, getRowTops(rowDivs)
    renderTempDaySegs = (segs, adjustRow, adjustTop) ->
      tempContainer = $("<div/>")
      elements = undefined
      segmentContainer = getDaySegmentContainer()
      i = undefined
      segCnt = segs.length
      element = undefined
      tempContainer[0].innerHTML = daySegHTML(segs)
      elements = tempContainer.children()
      segmentContainer.append elements
      daySegElementResolve segs, elements
      daySegCalcHSides segs
      daySegSetWidths segs
      daySegCalcHeights segs
      daySegSetTops segs, getRowTops(getRowDivs())
      elements = []
      i = 0
      while i < segCnt
        element = segs[i].element
        if element
          element.css "top", adjustTop  if segs[i].row is adjustRow
          elements.push element[0]
        i++
      $ elements
    daySegHTML = (segs) ->
      rtl = opt("isRTL")
      i = undefined
      segCnt = segs.length
      seg = undefined
      event = undefined
      url = undefined
      classes = undefined
      bounds = allDayBounds()
      minLeft = bounds.left
      maxLeft = bounds.right
      leftCol = undefined
      rightCol = undefined
      left = undefined
      right = undefined
      skinCss = undefined
      html = ""
      i = 0
      while i < segCnt
        seg = segs[i]
        event = seg.event
        classes = ["fc-event", "fc-event-skin", "fc-event-hori"]
        classes.push "fc-event-draggable"  if isEventDraggable(event)
        if rtl
          classes.push "fc-corner-right"  if seg.isStart
          classes.push "fc-corner-left"  if seg.isEnd
          leftCol = dayOfWeekCol(seg.end.getDay() - 1)
          rightCol = dayOfWeekCol(seg.start.getDay())
          left = (if seg.isEnd then colContentLeft(leftCol) else minLeft)
          right = (if seg.isStart then colContentRight(rightCol) else maxLeft)
        else
          classes.push "fc-corner-left"  if seg.isStart
          classes.push "fc-corner-right"  if seg.isEnd
          leftCol = dayOfWeekCol(seg.start.getDay())
          rightCol = dayOfWeekCol(seg.end.getDay() - 1)
          left = (if seg.isStart then colContentLeft(leftCol) else minLeft)
          right = (if seg.isEnd then colContentRight(rightCol) else maxLeft)
        classes = classes.concat(event.className)
        classes = classes.concat(event.source.className or [])  if event.source
        url = event.url
        skinCss = getSkinCss(event, opt)
        if url
          html += "<a href='" + htmlEscape(url) + "'"
        else
          html += "<div"
        html += " class='" + classes.join(" ") + "'" + " style='position:absolute;z-index:8;left:" + left + "px;" + skinCss + "'" + ">" + "<div" + " class='fc-event-inner fc-event-skin'" + ((if skinCss then " style='" + skinCss + "'" else "")) + ">"
        html += "<span class='fc-event-time'>" + htmlEscape(formatDates(event.start, event.end, opt("timeFormat"))) + "</span>"  if not event.allDay and seg.isStart
        html += "<span class='fc-event-title'>" + htmlEscape(event.title) + "</span>" + "</div>"
        html += "<div class='ui-resizable-handle ui-resizable-" + ((if rtl then "w" else "e")) + "'>" + "&nbsp;&nbsp;&nbsp;" + "</div>"  if seg.isEnd and isEventResizable(event)
        html += "</" + ((if url then "a" else "div")) + ">"
        seg.left = left
        seg.outerWidth = right - left
        seg.startCol = leftCol
        seg.endCol = rightCol + 1
        i++
      html
    daySegElementResolve = (segs, elements) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      event = undefined
      element = undefined
      triggerRes = undefined
      i = 0
      while i < segCnt
        seg = segs[i]
        event = seg.event
        element = $(elements[i])
        triggerRes = trigger("eventRender", event, event, element)
        if triggerRes is false
          element.remove()
        else
          if triggerRes and triggerRes isnt true
            triggerRes = $(triggerRes).css(
              position: "absolute"
              left: seg.left
            )
            element.replaceWith triggerRes
            element = triggerRes
          seg.element = element
        i++
    daySegElementReport = (segs) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        reportEventElement seg.event, element  if element
        i++
    daySegHandlers = (segs, segmentContainer, modifiedEventId) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      event = undefined
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        if element
          event = seg.event
          if event._id is modifiedEventId
            bindDaySeg event, element, seg
          else
            element[0]._fci = i
        i++
      lazySegBind segmentContainer, segs, bindDaySeg
    daySegCalcHSides = (segs) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      key = undefined
      val = undefined
      hsideCache = {}
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        if element
          key = seg.key = cssKey(element[0])
          val = hsideCache[key]
          val = hsideCache[key] = hsides(element, true)  if val is `undefined`
          seg.hsides = val
        i++
    daySegSetWidths = (segs) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        element[0].style.width = Math.max(0, seg.outerWidth - seg.hsides) + "px"  if element
        i++
    daySegCalcHeights = (segs) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      key = undefined
      val = undefined
      vmarginCache = {}
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        if element
          key = seg.key
          val = vmarginCache[key]
          val = vmarginCache[key] = vmargins(element)  if val is `undefined`
          seg.outerHeight = element[0].offsetHeight + val
        i++
    getRowDivs = ->
      i = undefined
      rowCnt = getRowCnt()
      rowDivs = []
      i = 0
      while i < rowCnt
        rowDivs[i] = allDayRow(i).find("td:first div.fc-day-content > div")
        i++
      rowDivs
    getRowTops = (rowDivs) ->
      i = undefined
      rowCnt = rowDivs.length
      tops = []
      i = 0
      while i < rowCnt
        tops[i] = rowDivs[i][0].offsetTop
        i++
      tops
    daySegSetTops = (segs, rowTops) ->
      i = undefined
      segCnt = segs.length
      seg = undefined
      element = undefined
      event = undefined
      i = 0
      while i < segCnt
        seg = segs[i]
        element = seg.element
        if element
          element[0].style.top = rowTops[seg.row] + (seg.top or 0) + "px"
          event = seg.event
          trigger "eventAfterRender", event, event, element
        i++
    resizableDayEvent = (event, element, seg) ->
      rtl = opt("isRTL")
      direction = (if rtl then "w" else "e")
      handle = element.find("div.ui-resizable-" + direction)
      isResizing = false
      disableTextSelection element
      element.mousedown((ev) ->
        ev.preventDefault()
      ).click (ev) ->
        if isResizing
          ev.preventDefault()
          ev.stopImmediatePropagation()

      handle.mousedown (ev) ->
        mouseup = (ev) ->
          trigger "eventResizeStop", this, event, ev
          $("body").css "cursor", ""
          hoverListener.stop()
          clearOverlays()
          eventResize this, event, dayDelta, 0, ev  if dayDelta
          setTimeout (->
            isResizing = false
          ), 0
        return  unless ev.which is 1
        isResizing = true
        hoverListener = t.getHoverListener()
        rowCnt = getRowCnt()
        colCnt = getColCnt()
        dis = (if rtl then -1 else 1)
        dit = (if rtl then colCnt - 1 else 0)
        elementTop = element.css("top")
        dayDelta = undefined
        helpers = undefined
        eventCopy = $.extend({}, event)
        minCell = dateCell(event.start)
        clearSelection()
        $("body").css("cursor", direction + "-resize").one "mouseup", mouseup
        trigger "eventResizeStart", this, event, ev
        hoverListener.start ((cell, origCell) ->
          if cell
            r = Math.max(minCell.row, cell.row)
            c = cell.col
            r = 0  if rowCnt is 1
            if r is minCell.row
              if rtl
                c = Math.min(minCell.col, c)
              else
                c = Math.max(minCell.col, c)
            dayDelta = (r * 7 + c * dis + dit) - (origCell.row * 7 + origCell.col * dis + dit)
            newEnd = addDays(eventEnd(event), dayDelta, true)
            if dayDelta
              eventCopy.end = newEnd
              oldHelpers = helpers
              helpers = renderTempDaySegs(compileDaySegs([eventCopy]), seg.row, elementTop)
              helpers.find("*").css "cursor", direction + "-resize"
              oldHelpers.remove()  if oldHelpers
              hideEvents event
            else
              if helpers
                showEvents event
                helpers.remove()
                helpers = null
            clearOverlays()
            renderDayOverlay event.start, addDays(cloneDate(newEnd), 1)
        ), ev

    t = this
    t.renderDaySegs = renderDaySegs
    t.resizableDayEvent = resizableDayEvent
    opt = t.opt
    trigger = t.trigger
    isEventDraggable = t.isEventDraggable
    isEventResizable = t.isEventResizable
    eventEnd = t.eventEnd
    reportEventElement = t.reportEventElement
    showEvents = t.showEvents
    hideEvents = t.hideEvents
    eventResize = t.eventResize
    getRowCnt = t.getRowCnt
    getColCnt = t.getColCnt
    getColWidth = t.getColWidth
    allDayRow = t.allDayRow
    allDayBounds = t.allDayBounds
    colContentLeft = t.colContentLeft
    colContentRight = t.colContentRight
    dayOfWeekCol = t.dayOfWeekCol
    dateCell = t.dateCell
    compileDaySegs = t.compileDaySegs
    getDaySegmentContainer = t.getDaySegmentContainer
    bindDaySeg = t.bindDaySeg
    formatDates = t.calendar.formatDates
    renderDayOverlay = t.renderDayOverlay
    clearOverlays = t.clearOverlays
    clearSelection = t.clearSelection
  SelectionManager = ->
    select = (startDate, endDate, allDay) ->
      unselect()
      endDate = defaultSelectionEnd(startDate, allDay)  unless endDate
      renderSelection startDate, endDate, allDay
      reportSelection startDate, endDate, allDay
    unselect = (ev) ->
      if selected
        selected = false
        clearSelection()
        trigger "unselect", null, ev
    reportSelection = (startDate, endDate, allDay, ev) ->
      selected = true
      trigger "select", null, startDate, endDate, allDay, ev
    daySelectionMousedown = (ev) ->
      cellDate = t.cellDate
      cellIsAllDay = t.cellIsAllDay
      hoverListener = t.getHoverListener()
      reportDayClick = t.reportDayClick
      if ev.which is 1 and opt("selectable")
        unselect ev
        _mousedownElement = this
        dates = undefined
        hoverListener.start ((cell, origCell) ->
          clearSelection()
          if cell and cellIsAllDay(cell)
            dates = [cellDate(origCell), cellDate(cell)].sort(cmp)
            renderSelection dates[0], dates[1], true
          else
            dates = null
        ), ev
        $(document).one "mouseup", (ev) ->
          hoverListener.stop()
          if dates
            reportDayClick dates[0], true, ev  if +dates[0] is +dates[1]
            reportSelection dates[0], dates[1], true, ev

    t = this
    t.select = select
    t.unselect = unselect
    t.reportSelection = reportSelection
    t.daySelectionMousedown = daySelectionMousedown
    opt = t.opt
    trigger = t.trigger
    defaultSelectionEnd = t.defaultSelectionEnd
    renderSelection = t.renderSelection
    clearSelection = t.clearSelection
    selected = false
    if opt("selectable") and opt("unselectAuto")
      $(document).mousedown (ev) ->
        ignore = opt("unselectCancel")
        return  if $(ev.target).parents(ignore).length  if ignore
        unselect ev

  OverlayManager = ->
    renderOverlay = (rect, parent) ->
      e = unusedOverlays.shift()
      e = $("<div class='fc-cell-overlay' style='position:absolute;z-index:3'/>")  unless e
      e.appendTo parent  unless e[0].parentNode is parent[0]
      usedOverlays.push e.css(rect).show()
      e
    clearOverlays = ->
      e = undefined
      unusedOverlays.push e.hide().unbind()  while e = usedOverlays.shift()
    t = this
    t.renderOverlay = renderOverlay
    t.clearOverlays = clearOverlays
    usedOverlays = []
    unusedOverlays = []
  CoordinateGrid = (buildFunc) ->
    t = this
    rows = undefined
    cols = undefined
    t.build = ->
      rows = []
      cols = []
      buildFunc rows, cols

    t.cell = (x, y) ->
      rowCnt = rows.length
      colCnt = cols.length
      i = undefined
      r = -1
      c = -1
      i = 0
      while i < rowCnt
        if y >= rows[i][0] and y < rows[i][1]
          r = i
          break
        i++
      i = 0
      while i < colCnt
        if x >= cols[i][0] and x < cols[i][1]
          c = i
          break
        i++
      (if (r >= 0 and c >= 0) then
        row: r
        col: c
       else null)

    t.rect = (row0, col0, row1, col1, originElement) ->
      origin = originElement.offset()
      top: rows[row0][0] - origin.top
      left: cols[col0][0] - origin.left
      width: cols[col1][1] - cols[col0][0]
      height: rows[row1][1] - rows[row0][0]
  HoverListener = (coordinateGrid) ->
    mouse = (ev) ->
      newCell = coordinateGrid.cell(ev.pageX, ev.pageY)
      if not newCell isnt not cell or newCell and (newCell.row isnt cell.row or newCell.col isnt cell.col)
        if newCell
          firstCell = newCell  unless firstCell
          change newCell, firstCell, newCell.row - firstCell.row, newCell.col - firstCell.col
        else
          change newCell, firstCell
        cell = newCell
    t = this
    bindType = undefined
    change = undefined
    firstCell = undefined
    cell = undefined
    t.start = (_change, ev, _bindType) ->
      change = _change
      firstCell = cell = null
      coordinateGrid.build()
      mouse ev
      bindType = _bindType or "mousemove"
      $(document).bind bindType, mouse

    t.stop = ->
      $(document).unbind bindType, mouse
      cell
  HorizontalPositionCache = (getElement) ->
    e = (i) ->
      elements[i] = elements[i] or getElement(i)
    t = this
    elements = {}
    lefts = {}
    rights = {}
    t.left = (i) ->
      lefts[i] = (if lefts[i] is `undefined` then e(i).position().left else lefts[i])

    t.right = (i) ->
      rights[i] = (if rights[i] is `undefined` then t.left(i) + e(i).width() else rights[i])

    t.clear = ->
      elements = {}
      lefts = {}
      rights = {}
  defaults =
    defaultView: "month"
    aspectRatio: 1.35
    header:
      left: "title"
      center: ""
      right: "today prev,next"

    weekends: true
    allDayDefault: true
    ignoreTimezone: true
    lazyFetching: true
    startParam: "start"
    endParam: "end"
    titleFormat:
      month: "MMMM yyyy"
      week: "MMM d[ yyyy]{ '&#8212;'[ MMM] d yyyy}"
      day: "dddd, MMM d, yyyy"

    columnFormat:
      month: "ddd"
      week: "ddd M/d"
      day: "dddd M/d"

    timeFormat:
      "": "h(:mm)t"

    isRTL: false
    firstDay: 0
    monthNames: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    monthNamesShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    dayNames: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    dayNamesShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    buttonText:
      prev: "&nbsp;&#9668;&nbsp;"
      next: "&nbsp;&#9658;&nbsp;"
      prevYear: "&nbsp;&lt;&lt;&nbsp;"
      nextYear: "&nbsp;&gt;&gt;&nbsp;"
      today: "today"
      month: "month"
      week: "week"
      day: "day"

    theme: false
    buttonIcons:
      prev: "circle-triangle-w"
      next: "circle-triangle-e"

    unselectAuto: true
    dropAccept: "*"

  rtlDefaults =
    header:
      left: "next,prev today"
      center: ""
      right: "title"

    buttonText:
      prev: "&nbsp;&#9658;&nbsp;"
      next: "&nbsp;&#9668;&nbsp;"
      prevYear: "&nbsp;&gt;&gt;&nbsp;"
      nextYear: "&nbsp;&lt;&lt;&nbsp;"

    buttonIcons:
      prev: "circle-triangle-e"
      next: "circle-triangle-w"

  fc = $.fullCalendar = version: "1.5.1"
  fcViews = fc.views = {}
  $.fn.fullCalendar = (options) ->
    if typeof options is "string"
      args = Array::slice.call(arguments_, 1)
      res = undefined
      @each ->
        calendar = $.data(this, "fullCalendar")
        if calendar and $.isFunction(calendar[options])
          r = calendar[options].apply(calendar, args)
          res = r  if res is `undefined`
          $.removeData this, "fullCalendar"  if options is "destroy"

      return res  if res isnt `undefined`
      return this
    eventSources = options.eventSources or []
    delete options.eventSources

    if options.events
      eventSources.push options.events
      delete options.events
    options = $.extend(true, {}, defaults, (if (options.isRTL or options.isRTL is `undefined` and defaults.isRTL) then rtlDefaults else {}), options)
    @each (i, _element) ->
      element = $(_element)
      calendar = new Calendar(element, options, eventSources)
      element.data "fullCalendar", calendar
      calendar.render()

    this

  fc.sourceNormalizers = []
  fc.sourceFetchers = []
  ajaxDefaults =
    dataType: "json"
    cache: false

  eventGUID = 1
  fc.addDays = addDays
  fc.cloneDate = cloneDate
  fc.parseDate = parseDate
  fc.parseISO8601 = parseISO8601
  fc.parseTime = parseTime
  fc.formatDate = formatDate
  fc.formatDates = formatDates
  dayIDs = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"]
  DAY_MS = 86400000
  HOUR_MS = 3600000
  MINUTE_MS = 60000
  dateFormatters =
    s: (d) ->
      d.getSeconds()

    ss: (d) ->
      zeroPad d.getSeconds()

    m: (d) ->
      d.getMinutes()

    mm: (d) ->
      zeroPad d.getMinutes()

    h: (d) ->
      d.getHours() % 12 or 12

    hh: (d) ->
      zeroPad d.getHours() % 12 or 12

    H: (d) ->
      d.getHours()

    HH: (d) ->
      zeroPad d.getHours()

    d: (d) ->
      d.getDate()

    dd: (d) ->
      zeroPad d.getDate()

    ddd: (d, o) ->
      o.dayNamesShort[d.getDay()]

    dddd: (d, o) ->
      o.dayNames[d.getDay()]

    M: (d) ->
      d.getMonth() + 1

    MM: (d) ->
      zeroPad d.getMonth() + 1

    MMM: (d, o) ->
      o.monthNamesShort[d.getMonth()]

    MMMM: (d, o) ->
      o.monthNames[d.getMonth()]

    yy: (d) ->
      (d.getFullYear() + "").substring 2

    yyyy: (d) ->
      d.getFullYear()

    t: (d) ->
      (if d.getHours() < 12 then "a" else "p")

    tt: (d) ->
      (if d.getHours() < 12 then "am" else "pm")

    T: (d) ->
      (if d.getHours() < 12 then "A" else "P")

    TT: (d) ->
      (if d.getHours() < 12 then "AM" else "PM")

    u: (d) ->
      formatDate d, "yyyy-MM-dd'T'HH:mm:ss'Z'"

    S: (d) ->
      date = d.getDate()
      return "th"  if date > 10 and date < 20
      ["st", "nd", "rd"][date % 10 - 1] or "th"

  fc.applyAll = applyAll
  fcViews.month = MonthView
  fcViews.basicWeek = BasicWeekView
  fcViews.basicDay = BasicDayView
  setDefaults weekMode: "fixed"
  fcViews.agendaWeek = AgendaWeekView
  fcViews.agendaDay = AgendaDayView
  setDefaults
    allDaySlot: true
    allDayText: "all-day"
    firstHour: 6
    slotMinutes: 30
    defaultEventMinutes: 120
    axisFormat: "h(:mm)tt"
    timeFormat:
      agenda: "h:mm{ - h:mm}"

    dragOpacity:
      agenda: .5

    minTime: 0
    maxTime: 24

) jQuery
$(document).ready ->
  date = new Date()
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  $("#calendar").fullCalendar
    header:
      left: "prev,next today"
      center: "title"
      right: "month,agendaWeek,agendaDay"

    defaultView: "month"
    height: 500
    slotMinutes: 15
    loading: (bool) ->
      if bool
        $("#loading").show()
      else
        $("#loading").hide()

    eventSources: [
      url: "/events"
      color: "yellow"
      textColor: "black"
      ignoreTimezone: false
    ]
    timeFormat: "h:mm t{ - h:mm t} "
    dragOpacity: "0.5"
    eventDrop: (event, dayDelta, minuteDelta, allDay, revertFunc) ->
      updateEvent event

    eventResize: (event, dayDelta, minuteDelta, revertFunc) ->
      updateEvent event

    eventClick: (event, jsEvent, view) ->

