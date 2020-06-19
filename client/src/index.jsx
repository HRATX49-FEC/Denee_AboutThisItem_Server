import React from 'react';
import ReactDOM from 'react-dom';
import Axios from 'axios';
import Cats from './components/Cats.js';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cats: []
    };
    this.getCats = this.getCats.bind(this);
  }

  componentDidMount() {
    this.getCats();
  }


  getCats() {
    Axios.get('/purrget')
      .then((response) => {
        // console.log('Axios get response', response.data);
        this.setState({cats: response.data});

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
      <div>
        <h1>Purrget</h1>
        <h3>Cats</h3>
        {this.state.cats.map(cat => {
          // console.log('cat map', cat);
          return (
            <Cats key={cat.ID} cat={cat} />
          )
        })}

      </div>
    );
  }



}



ReactDOM.render(<App />, document.getElementById('app'));
