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

  }

  handleChangeQues(event) {
    this.setState({question: event.target.value})
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
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">at least 20 characters</div>
            <textarea
              type="text"
              maxLength='20'
              rows='1'
              placeholder='screen name'
              onChange={this.handleChangeQues}
              className="quesTextBox">
            </textarea>
            <div className="smallGrayText">this name will be displayed with your question</div>
          </div>
          <div className="submitQuesBox">by submitting I agree to the <a href="#">q&a guildelines</a>
            <button className="largeWhiteButton">cancel</button>
            <button className="largeRedButton">submit question</button>
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


