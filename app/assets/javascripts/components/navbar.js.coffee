@Navbar = React.createClass
  getInitialState: ->
    visibleMsg: false
  componentDidMount: ->
    $('.item')
      .popup({
        inline   : true,
        hoverable: true,
        position : 'bottom left',
        inverted: true
      });
    $('#knefel').click (e) ->
      e.stopPropagation()
      $('.ui.sidebar').sidebar('toggle')
    self = this
    $(window).on 'thanks', (e) ->
      text = $('#showmsg')
      text.fadeIn("slow")
      setTimeout ->
          $('#showmsg').fadeOut("slow")
      , 2500
  showModal: ->
    $(window).trigger('modal.visible')
  render: ->
    newsletter = 
      <div className="item text-center kontakt" onClick={@showModal}>
        <button className="ui button inverted red">Kontakt</button>
      </div> 
    facebook_link = 
      <div className="item text-center" data-content="Zobacz nasz profil na Facebooku">
        <a href="https://www.facebook.com/tasiemka.info">
          <i className="facebook icon"></i>
        </a>
      </div>
    about =         
      <div className="item text-center" data-content="Przeczytaj więcej o Tasiemce">
        <a href="about">
          <i className="info icon"></i>
        </a>
      </div>
    sidebar = 
      <div className="item" id='knefel' data-content="Ustawienia">
        <i className="sidebar icon"></i>
      </div>
    thanksmsg = 
      <div className="ui floating message purple" id='showmsg'>
        <p className="text-center">Twoja wiadomość została wysłana</p>
      </div>
    <div className="ui large menu" id="main_navbar">
      <img className="logo" src="assets/tasiemka2.png" alt="test" />
      {thanksmsg}
      <div className="right menu">
        {newsletter}
        {about}
        {facebook_link}
        {sidebar}
      </div>
    </div>


