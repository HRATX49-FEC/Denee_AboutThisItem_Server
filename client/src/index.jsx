import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';
import AboutItem from './components/AboutItem.js';
// import Cats from './components/Cats.js';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cat: []
    };
    this.getCat = this.getCat.bind(this);
  }

  componentDidMount() {
    this.getCat('Luna');
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
    Axios.post('/', {input})
      .then(res => {

      })
      .catch(error => {
        console.error('Axios post error', error);
      });
  }


  render() {

    return (
      <div className="mainBox">
        <h2 className="heading">About this item</h2>
        <div>
          <AboutItem cat={this.state.cat} />
        </div>
      </div>
    )
  }



}



ReactDOM.render(<App />, document.getElementById('about'));
