import React from 'react';

const Answer = ({addAnswer, answerIt, toggleAnswerIt}) => {
  if (answerIt) {
    return (
      <>
        <div className="askQuesForm">your answer
          <textarea
            type="text"
            maxLength='255'
            rows='4'
            placeholder="answer"
            className="quesTextBox">
          </textarea>
          <div className="smallGrayText">at least 20 characters</div>
          <textarea
            type="text"
            maxLength='20'
            rows='1'
            placeholder='screen name'
            className="quesTextBox">
          </textarea>
          <div className="smallGrayText">this name will be displayed with your question</div>
        </div>
        <div className="submitQuesBox">by submitting I agree to the <a href="#">q&a guildelines</a>
          <button className="largeWhiteButton" onClick={toggleAnswerIt}>cancel</button>
          <button className="largeRedButton">submit answer</button>
        </div>
      </>
    )
  } else {
    return (
      <button className="answerItButton" onClick={toggleAnswerIt}>Answer it</button>
    )

  }

}

export default Answer;