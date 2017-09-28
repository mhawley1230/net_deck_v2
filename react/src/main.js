import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

$(function() {
  ReactDOM.render(
    <div>Hello!</div>,
    document.getElementById('app')
  );
});
