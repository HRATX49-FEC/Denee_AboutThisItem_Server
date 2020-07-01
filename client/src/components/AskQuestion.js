import React from 'react';

class AskQuestion extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      question: '',
      qUser: '',
      catID: this.props.catID
    };
    this.handleChangeQues = this.handleChangeQues.bind(this);
    this.handleChangeUser = this.handleChangeUser.bind(this);
    this.newQuestion = this.newQuestion.bind(this);
    console.log('props', props)
  }

  handleChangeQues(event) {
    console.log(event.target.value);
    this.setState({question: event.target.value})
  }

  handleChangeUser(event) {
    this.setState({qUser: event.target.value})
  }

  newQuestion() {
    this.props.addQuestion([this.state.catID, this.state.question, this.state.qUser]);
    this.props.toggleAskQuestion();
  }

  render() {
    if (this.props.askQuestion) {
      return (
        <>
          <div className="askQuesForm">Your question
            <textarea
              type="text"
              maxLength='255'
              rows='4'
              placeholder="question"
              onChange={this.handleChangeQues}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">at least 20 characters</div>
            <textarea
              type="text"
              maxLength='20'
              rows='1'
              placeholder='screen name'
              onChange={this.handleChangeUser}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">this name will be displayed with your question</div>
          </div>
          <div className="submitQuesBox">by submitting I agree to the <a href="#">q&a guildelines</a>
            <button className="largeWhiteButton" onClick={this.props.toggleAskQuestion}>cancel</button>
            <button className="largeRedButton" onClick={this.newQuestion}>submit question</button>
          </div>
        </>
      )
    } else {
      return (
        <button className="largeRedButton">Ask a question</button>
      )
    }
  }

}


export default AskQuestion;


