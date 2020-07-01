import React from 'react';
import CurrentTab from './CurrentTab.js';

const AboutItem = (props) => {
  return (
    <div>
      <div className="tabBar">
        <ul className="tabList">
          <li
            className={props.tabSelected === 'Details' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => props.handleChange(event)}>
            <a name='Details' className="tabHeader">Details</a>
          </li>
          <li
            className={props.tabSelected === 'Shipping' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => props.handleChange(event)}>
            <a name='Shipping' className="tabHeader">Shipping & Returns</a>
          </li>
          <li
            className={props.tabSelected === 'QA' ? "tabHeaderSelected" : "tabHeader"}
            onClick={(event) => props.handleChange(event)}>
            <a name='QA' className="tabHeader">Q&A{`(${props.questions.length})`}</a>
          </li>
        </ul>
      </div>
        <CurrentTab
        current={props.tabSelected}
        cat={props.cat}
        questions={props.questions}/>
    </div>
  )

};

export default AboutItem;