import React from 'react';

const Specifications = (props) => {
  return (
    <div className="specifications">
      <div className="specFlex">
        <div className="spec">Specifications
          <li className="specDetail">
            Size: {props.cat.size}
          </li>
          <li className="specDetail">
            Indoor or Outdoor: {props.cat.in_out}
          </li>
          <li className="specDetail">
            Dog friendly: {props.cat.dogFriend}
          </li>
          <li className="specDetail">
            Item Number: {props.cat.itemNum}
          </li>
        </div>
        <div className="descript">Description
          <div className="descriptDetail">This is the description of the cat and I need a longer sentence to see how the spacing works on the page so this is my very long paragraph of a sentence.</div>
        </div>

      </div>
      <button className="showMore" type="button">Show more</button>
    </div>
  )
}

export default Specifications;
