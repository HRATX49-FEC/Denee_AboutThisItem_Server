import React from 'react';
import CurrentTab from './CurrentTab.js';

const AboutItem = ({cat, tabSelected, toggleTabSelected, questions, askQuestion, toggleAskQuestion, answerIt, toggleAnswerIt}) => {
  return (
    <div>
      <div className="tabBar">
        <ul className="tabList">
          <li
            className={tabSelected === 'Details' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => toggleTabSelected(event)}>
            <a name='Details' className="tabHeader">Details</a>
          </li>
          <li
            className={tabSelected === 'Shipping' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => toggleTabSelected(event)}>
            <a name='Shipping' className="tabHeader">Shipping & Returns</a>
          </li>
          <li
            className={tabSelected === 'QA' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => toggleTabSelected(event)}>
            <a name='QA' className="tabHeader">Q&A{`(${questions.length})`}</a>
          </li>
        </ul>
      </div>
        <CurrentTab
        tabSelected={tabSelected}
        cat={cat}
        questions={questions}
        askQuestion={askQuestion}
        toggleAskQuestion={toggleAskQuestion}
        answerIt={answerIt}
        toggleAnswerIt={toggleAnswerIt}/>
    </div>
  )

};

export default AboutItem;