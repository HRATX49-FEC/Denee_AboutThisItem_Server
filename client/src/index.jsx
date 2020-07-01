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
      questions: [],
      answers: [],
      tabSelected: 'Details',
      askQuestion: false,
      answerIt: false
    };
    this.getCat = this.getCat.bind(this);
    this.getQuestions = this.getQuestions.bind(this);
    // this.getAnswers = this.getAnswers.bind(this);
    this.toggleTabSelected = this.toggleTabSelected.bind(this);
    this.toggleAskQuestion = this.toggleAskQuestion(this);
    this.toggleAnswerIt = this.toggleAnswerIt(this);
  }

  componentDidMount() {
    this.getCat('Luna');
    this.getQuestions('Luna');
    // this.getAnswers('Luna');
    $('body').on('click', '.catLink', (e) => {
      this.getCat(e.currentTarget.id);
    });
  }


  getCat(catName) {
    Axios.get('/about/cat', {params: {catName}})
      .then((response) => {
        this.setState({cat: response.data[0]});

      })
      .catch(error => {
        console.error('Axios get Cat error', error);
      });
  }

  getQuestions(catName) {
    Axios.get('/about/questions', {params: {catName}})
      .then((response) => {
      console.log('questions', response.data);
        this.setState({questions: response.data});
      })
      .catch(error => {
        console.error('Axios get Qs error', error);
      })
  }

  // getAnswers(catName) {
  //   Axios.get('/about/answers', {params: {catName}})
  //     .then((response) => {
  //     console.log('answers', response.data);
  //       this.setState({answers: response.data});
  //     })
  //     .catch(error => {
  //       console.error('Axios get As error', error);
  //     })
  // }

  toggleAskQuestion() {
    this.setState({askQuestion: !this.state.askQuestion})
  }

  toggleTabSelected(event) {
    this.setState({
      tabSelected: event.target.name
    })
  }

  toggleAnswerIt() {
    this.setState({answerIt: !this.state.answerIt})
  }

  add(input) {
    Axios.post('/about', {input})
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
          <AboutItem
          cat={this.state.cat}
          tabSelected={this.state.tabSelected}
          toggleTabSelected={this.toggleTabSelected}
          questions={this.state.questions}
          askQuestion={this.state.askQuestion}
          toggleAskQuestion={this.toggleAskQuestion}
          answerIt={this.state.answerIt}
          toggleAnswerIt={this.toggleAnswerIt}
          />
        </div>
      </div>
    )
  }



}



ReactDOM.render(<About />, document.getElementById('about'));
