import React from 'react';

const TabBar = (props) => {
  return (
    <div class="tabBar">
      <ul class="tabList">
        <li class="tabHeader">
          <a class="linkTabHeader">
            <div>Details</div>
          </a>
        </li>
        <li class="tabHeader">
          <a class="linkTabHeader">
            <div>Shipping & Returns</div>
          </a>
        </li>
        <li class="tabHeader">
          <a class="linkTabHeader">
            <div>Q&A</div>
          </a>
        </li>
      </ul>
    </div>
  )

};

export default TabBar;