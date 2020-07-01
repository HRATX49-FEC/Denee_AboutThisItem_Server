import React from 'react';
import Details from './Details.js';
import Shipping from './Shipping.js';
import QA from './Q&A.js';

const CurrentTab = ({tabSelected, cat, questions, askQuestion, toggleAskQuestion, answerIt, toggleAnswerIt}) => {
  if (tabSelected === 'Details') {
    return (
      <Details cat={cat} />
    )
  }
  if (tabSelected === 'Shipping') {
    return (
      <Shipping />
    )
  }
  if (tabSelected === 'QA') {
    return (
      <QA
      catID={cat.cID}
      questions={questions}
      askQuestion={askQuestion}
      toggleAskQuestion={toggleAskQuestion}
      answerIt={answerIt}
      toggleAnswerIt={toggleAnswerIt}/>
    )
  }
}

export default CurrentTab;