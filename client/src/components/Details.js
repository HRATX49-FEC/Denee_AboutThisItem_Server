import React from 'react';
import Specifications from './Specifications.js';

const Details = (props) => {
  return (
    <div className="innerMargins">
      <div className="innerBox">
        <div className="highlightsHeader">Highlights</div>
        <ul className="highlightsList">
          <li className="highlightsListItem">
            Type: {props.cat.category}
          </li>
          <li className="highlightsListItem">
            Age: {props.cat.age}
          </li>
          <li className="highlightsListItem">
            Lives left: {props.cat.livesLeft}
          </li>
          <li className="highlightsListItem">
            Sex: {props.cat.sex}
          </li>
        </ul>
      </div>
    </div>

  )

};

export default Details;