import './style.scss'

import * as bootstrap from 'bootstrap';
import * as feather from 'feather-icons';

window.onload = () => {
  feather.replace();
  [].slice
    .call(document.querySelectorAll('[data-toggle="tooltip"]'))
    .map((el) => new bootstrap.Tooltip(el, {
      placement: 'bottom',
    }));
};
