@Sites = React.createClass
  getInitialState: ->
    sites: @props.data
    all_site: @props.all_site
  getDefaultState: ->
    sites: []
  render: ->
    console.log 'Render Sites'
    React.DOM.div
      className: 'sites_wrapper'
      for site in @state.sites       
        console.log site.id
        React.createElement Site, key: site.id, id: site.id, site: site, articles: site.articles, all_site: @state.all_site
