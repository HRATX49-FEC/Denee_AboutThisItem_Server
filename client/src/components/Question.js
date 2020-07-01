import React from 'react';
import Answer from './Answer.js';

const Question = ({catID, question, answerIt, toggleAnswerIt}) => {
  return (
    <div className="questionsBox">
      <div className="question">Q: {question.question}</div>
      <div className="qUser">{question.qUser}- 1 week ago</div>
      <div className="answerBox">
        <div className="answerA">A:
          <div className="answer">{question.answer}</div>
        </div>
        <div className="aUser">{question.aUser}- 5 days ago
          <div className="helpful">
            <a href="#" className="helpNotReport">Helpful (0)</a>
            <a href="#" className="helpNotReport">Not helpful (0)</a>
            <a href="#" className="helpNotReport">Report</a>
          </div>
        </div>
        <div className="answerIt">
          <Answer
          catID={catID}
          answerIt={answerIt}
          toggleAnswerIt={toggleAnswerIt}/>
        </div>
      </div>
    </div>
  )
}

export default Question;