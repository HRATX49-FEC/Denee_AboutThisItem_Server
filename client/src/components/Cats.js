import React from 'react';

const Cats = (props) => {
  // console.log('cats props', props.cat.catName);
  var catt = props.cat;
  return (
    <div>
      <div>{`Name: ${catt.catName} Age: ${catt.age} Lives left: ${catt.livesLeft} Sex: ${catt.sex}`}</div>
    </div>
  )
};

export default Cats;