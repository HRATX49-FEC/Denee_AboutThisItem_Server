import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';
import $ from 'jquery';
import AboutItem from './components/AboutItem.js';



class About extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cat: [],
      tabSelected: 'Details'
    };
    this.getCat = this.getCat.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  componentDidMount() {
    this.getCat('Luna');
    $('body').on('click', '.catLink', (e) => {
      this.getCat(e.currentTarget.id);
    });
  }


  getCat(catName) {
    Axios.get('/about', {params: {catName}})
      .then((response) => {
        this.setState({cat: response.data[0]});

      })
      .catch(error => {
        console.error('Axios get error', error);
      });
  }


  add(input) {
    Axios.post('/about', {input})
      .then(res => {

      })
      .catch(error => {
        console.error('Axios post error', error);
      });
  }

  handleChange(event) {
    this.setState({
      tabSelected: event.target.name
    })

  }

  render() {

    return (
      <div className="mainBox">
        <h2 className="heading">About this item</h2>
        <div>
          <AboutItem
          cat={this.state.cat}
          tabSelected={this.state.tabSelected}
          handleChange={this.handleChange}
          />
        </div>
      </div>
    )
  }



}



ReactDOM.render(<About />, document.getElementById('about'));
