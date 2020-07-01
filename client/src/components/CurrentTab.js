import React from 'react';
import Details from './Details.js';
import Shipping from './Shipping.js';
import QA from './Q&A.js';

const CurrentTab = (props) => {
  if (props.current === 'Details') {
    return (
      <Details cat={props.cat} />
    )
  }
  if (props.current === 'Shipping') {
    return (
      <Shipping cat={props.cat} />
    )
  }
  if (props.current === 'QA') {
    return (
      <QA questions={props.questions} />
    )
  }

}

export default CurrentTab;