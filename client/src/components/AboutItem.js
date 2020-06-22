import React from 'react';
import Details from './Details.js';
import Specifications from './Specifications.js';

const AboutItem = (props) => {
  return (
    <div>
      <div className="tabBar">
        <ul className="tabList">
          <li className="tabHeader">
            <a className="linkTabHeader">
              <div>Details</div>
            </a>
          </li>
          <li className="tabHeader">
            <a className="linkTabHeader">
              <div>Shipping & Returns</div>
            </a>
          </li>
          <li className="tabHeader">
            <a className="linkTabHeader">
              <div>Q&A</div>
            </a>
          </li>
        </ul>
      </div>
      <Details cat={props.cat}/>
      <Specifications cat={props.cat}/>
    </div>
  )

};

export default AboutItem;